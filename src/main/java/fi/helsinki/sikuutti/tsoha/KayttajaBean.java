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

    private int ID;
    private String Nimi;
    private String KayttajaTunnus;
    private String SalaSana;
    private String Osoite;
    private String Kaupunki;
    private String Postinumero;
    private String Paino;
    private boolean Valid;

    /**
     *
     * @return
     */
    public int getID() {
        return ID;
    }

    /**
     *
     * @param ID
     */
    public void setID(int ID) {
        this.ID = ID;
    }

    /**
     *
     * @return
     */
    public String getNimi() {
        return Nimi;
    }

    /**
     *
     * @param Nimi
     */
    public void setNimi(String Nimi) {
        this.Nimi = Nimi;
    }

    /**
     *
     * @return
     */
    public String getKayttajaTunnus() {
        return KayttajaTunnus;
    }

    /**
     *
     * @param KayttajaTunnus
     */
    public void setKayttajaTunnus(String KayttajaTunnus) {
        this.KayttajaTunnus = KayttajaTunnus;
    }

    /**
     *
     * @return
     */
    public String getSalaSana() {
        return SalaSana;
    }

    /**
     *
     * @param SalaSana
     */
    public void setSalaSana(String SalaSana) {
        this.SalaSana = SalaSana;
    }

    /**
     *
     * @return
     */
    public String getOsoite() {
        return Osoite;
    }

    /**
     *
     * @param Osoite
     */
    public void setOsoite(String Osoite) {
        this.Osoite = Osoite;
    }

    /**
     *
     * @return
     */
    public String getKaupunki() {
        return Kaupunki;
    }

    /**
     *
     * @param Kaupunki
     */
    public void setKaupunki(String Kaupunki) {
        this.Kaupunki = Kaupunki;
    }

    /**
     *
     * @return
     */
    public String getPostinumero() {
        return Postinumero;
    }

    /**
     *
     * @param Postinumero
     */
    public void setPostinumero(String Postinumero) {
        this.Postinumero = Postinumero;
    }

    /**
     *
     * @return
     */
    public String getPaino() {
        return Paino;
    }

    /**
     *
     * @param Paino
     */
    public void setPaino(String Paino) {
        this.Paino = Paino;
    }

    /**
     *
     * @return
     */
    public boolean isValid() {
        return Valid;
    }

    /**
     *
     * @param Valid
     */
    public void setValid(boolean Valid) {
        this.Valid = Valid;
    }
}