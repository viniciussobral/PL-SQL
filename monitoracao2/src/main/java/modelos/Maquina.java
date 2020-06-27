package modelos;

public class Maquina {

    private String serialNumber;
    private String fkEmpresa;

    public Maquina(String serialNumber) {
        this.serialNumber = serialNumber;
        
    }
    
    

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getFkEmpresa() {
        return fkEmpresa;
    }

    public void setFkEmpresa(String fkEmpresa) {
        this.fkEmpresa = fkEmpresa;
    }

}
