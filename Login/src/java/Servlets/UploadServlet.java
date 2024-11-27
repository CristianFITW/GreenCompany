package Servlets;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.List;
import java.util.UUID;

public class UploadServlet extends HttpServlet {
    private static final String UPLOAD_DIRECTORY = "uploads";  // Nombre del directorio de subida

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Comprobar si la solicitud es multipart
        if (!ServletFileUpload.isMultipartContent(request)) {
            response.getWriter().println("El formulario no contiene archivos para subir.");
            return;
        }

        // Configuración del directorio de subida
        String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();  // Crear el directorio si no existe
        }

        // Instanciación del FileItemFactory y ServletFileUpload
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        try {
            // Parsear la solicitud y obtener los items del formulario
            List<FileItem> items = upload.parseRequest(request);

            // Variables para almacenar el campo de CURP y el archivo
            String curp = null;
            String uniqueFileName = null;
            String filePath = null;

            // Procesar cada item (archivo o campo de formulario)
            for (FileItem item : items) {
                if (item.isFormField()) {
                    // Extraer el valor del campo CURP
                    if ("curp".equals(item.getFieldName())) {
                        curp = item.getString();  // Asignar el CURP
                    }
                } else {
                    // Obtener el nombre original del archivo
                    String originalFileName = new File(item.getName()).getName();

                    // Generar un nombre único para el archivo utilizando UUID
                    uniqueFileName = UUID.randomUUID().toString() + "_" + originalFileName;

                    // Definir la ruta de almacenamiento de la imagen
                    filePath = uploadPath + File.separator + uniqueFileName;

                    // Guardar el archivo en el servidor con el nombre único
                    File storeFile = new File(filePath);
                    item.write(storeFile);
                }
            }

            if (curp != null && uniqueFileName != null) {
                // Conectar a la base de datos
                try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_login3", "root", "n0m3l0")) {
                    // Comprobar si ya existe un registro con el CURP
                    String checkSql = "SELECT curp FROM usuarios WHERE curp = ?";
                    try (PreparedStatement checkStatement = conn.prepareStatement(checkSql)) {
                        checkStatement.setString(1, curp);
                        ResultSet resultSet = checkStatement.executeQuery();

if (resultSet.next()) {
    // Si existe el CURP, hacer un UPDATE
    String updateSql = "UPDATE usuarios SET nombrei = ?, ruta = ? WHERE curp = ?";
    try (PreparedStatement updateStatement = conn.prepareStatement(updateSql)) {
        updateStatement.setString(1, uniqueFileName);  // Nombre de la imagen
        updateStatement.setString(2, filePath);  // Ruta del archivo
        updateStatement.setString(3, curp);  // CURP para actualizar el registro
        updateStatement.executeUpdate();
    }
} else {
    // Si no existe, hacer un INSERT
    String insertSql = "INSERT INTO usuarios (curp, nombrei, ruta) VALUES (?, ?, ?)";
    try (PreparedStatement insertStatement = conn.prepareStatement(insertSql)) {
        insertStatement.setString(1, curp);  // Guardar el CURP
        insertStatement.setString(2, uniqueFileName);  // Guardar el nombre único
        insertStatement.setString(3, filePath);  // Guardar la ruta del archivo
        insertStatement.executeUpdate();
    }
}

                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                // Redirigir al usuario al formulario con la imagen subida
                request.setAttribute("imagen", UPLOAD_DIRECTORY + "/" + uniqueFileName);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                response.getWriter().println("Error: No se proporcionó CURP o imagen.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error al procesar la carga del archivo.");
        }
    }
}
