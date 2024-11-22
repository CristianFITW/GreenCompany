package ServletsMAPA;

public class Problematica {
    private String id;
    private String titulo;
    private String descripcion;
    private String alcaldia;
    private String usuario;

    public Problematica(String id, String titulo, String descripcion, String alcaldia, String usuario) {
        this.id = id;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.alcaldia = alcaldia;
        this.usuario = usuario;
    }

    // Getters y setters
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getTitulo() { return titulo; }
    public void setTitulo(String titulo) { this.titulo = titulo; }

    public String getDescripcion() { return descripcion; }
    public void setDescripcion(String descripcion) { this.descripcion = descripcion; }

    public String getAlcaldia() { return alcaldia; }
    public void setAlcaldia(String alcaldia) { this.alcaldia = alcaldia; }
    
    public String getUsuario() { return usuario; }
    public void setUsuario(String usuario) {this.usuario = usuario; }
}
