package modelos;

//import com.mysql.cj.conf.PropertyKey;
//import com.mysql.cj.xdevapi.Result;
import conexao.Conexao;
import java.sql.SQLData;
import telas.Login;
import telas.Monitoracao;

public class Funcionario {

    private String email;
    private String serialNumber;
    private String fkEmpresa;

    public Funcionario(String email, String serialNumber) {
        this.email = email;
        this.serialNumber = serialNumber;

    }

    public Funcionario logar() {

        Conexao conn = new Conexao();
        conn.conectar();
        String sql = "SELECT email, Fk_Empresa FROM  Funcionario where email = '" + email + "'";

        try {
            conn.resultset = conn.statiment.executeQuery(sql);

            while (conn.resultset.next()) {
                Funcionario f = new Funcionario(conn.resultset.getString(1), conn.resultset.getString(2));
                return f;
            }
            String sql2 = "SELECT serial_Number FROM  Maquina where serial_Number = '" + serialNumber + "'";
            while (conn.resultset.next()) {
                conn.resultset = conn.statiment.executeQuery(sql2);
                Maquina m = new Maquina(conn.resultset.getString(2));
            }

            conn.fecharConexao();

        } catch (Exception e) {
            return null;
        }
        return null;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String senha) {
        this.serialNumber = senha;
    }

}
