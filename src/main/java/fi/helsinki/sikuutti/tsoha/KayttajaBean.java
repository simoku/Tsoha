/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fi.helsinki.sikuutti.tsoha;

/**
 *
 * @author sikuutti
 */
public class KayttajaBean {
    private int Nro;
    private String Nimi;
    private String KayttajaTunnus;
    private String SalaSana;

    public int getNro() {
        return Nro;
    }

    public void setNro(int Nro) {
        this.Nro = Nro;
    }

    public String getNimi() {
        return Nimi;
    }

    public void setNimi(String Nimi) {
        this.Nimi = Nimi;
    }

    public String getKayttajaTunnus() {
        return KayttajaTunnus;
    }

    public void setKayttajaTunnus(String KayttajaTunnus) {
        this.KayttajaTunnus = KayttajaTunnus;
    }

    public String getSalaSana() {
        return SalaSana;
    }

    public void setSalaSana(String SalaSana) {
        this.SalaSana = SalaSana;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }
    
    public boolean valid;
    
}