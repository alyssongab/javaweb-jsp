package aranoua.javaweb.aranouajavawebjspaula.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoUtil {

    private String url;
    private String usuario;
    private String senha;


    public ConexaoUtil() {

        this.url = "jdbc:mysql://localhost:3306/javaweb_jsp";
        this.usuario = ""; // usuário do banco de dados
        this.senha = ""; // senha do banco de dados

    }

    public Connection getConexao() throws SQLException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        return DriverManager.getConnection(url, usuario, senha);

    }
}