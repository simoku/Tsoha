/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fi.helsinki.sikuutti.tsoha;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sikuutti
 */
public class KayttajaDao {

    static Connection currentCon = null;
    static ResultSet rs = null;
    static PreparedStatement preparedStatement = null;
    static String HAE_KAYTTAJA = "select * from Kayttajat where KayttajaTunnus=? AND SalaSana=?";
    static String LISAA_KAYTTAJA = "insert into Kayttajat (Nimi,KayttajaTunnus,Salasana,Osoite,Kaupunki,Postinumero,Paino,Ika)"
            + "values (?,?,?,?,?,?,?,?)";

    /**
     *
     * @param bean
     * @return
     */
    public static KayttajaBean login(KayttajaBean bean) {
        Statement stmt = null;
        String username = bean.getKayttajaTunnus();
        String password = bean.getSalaSana();

        try {

            currentCon = ConnectionManager.getConnection();
            preparedStatement = currentCon.prepareStatement(HAE_KAYTTAJA);

            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
           
            rs = preparedStatement.executeQuery();
            boolean userExists = rs.next();

            if (!userExists) {

                bean.setValid(false);
            } else if (userExists) {





                bean.setValid(true);
            }

        } catch (Exception x) {
        } finally {
            try {
                currentCon.close();
            } catch (SQLException ex) {
                Logger.getLogger(KayttajaDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return bean;
    }

    /**
     *
     * @param bean
     * @return
     */
    public static KayttajaBean UusiKayttaja(KayttajaBean bean) {

        try {

            currentCon = ConnectionManager.getConnection();
            preparedStatement = currentCon.prepareStatement(LISAA_KAYTTAJA);

            preparedStatement.setString(1,bean.getNimi() );
            preparedStatement.setString(2,bean.getKayttajaTunnus() );
            preparedStatement.setString(3,bean.getSalaSana() );
            preparedStatement.setString(4,bean.getOsoite());
            preparedStatement.setString(5,bean.getKaupunki());
            preparedStatement.setString(6,bean.getPostinumero());
            preparedStatement.setInt(7,bean.getPaino());
            preparedStatement.setInt(8,bean.getIka());
            System.out.println(LISAA_KAYTTAJA);
            preparedStatement.executeUpdate();
           
            bean.setValid(true);
            

        } catch (Exception x) {
            System.out.println(x);
            
        } finally {
            try {
                currentCon.close();
            } catch (SQLException ex) {
                Logger.getLogger(KayttajaDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return bean;



    }
    
    public static ArrayList<String> haeLajit() {

      ArrayList<String> lista=new ArrayList<String>();
       try {

            currentCon = ConnectionManager.getConnection();
            preparedStatement = currentCon.prepareStatement("select Laji from Harjoitus");

            
           
            rs = preparedStatement.executeQuery();
            
            while(rs.next()){
            lista.add(rs.getString(1));    
                System.out.println(rs.getString(1));    
            }

        } catch (Exception x) {
        } finally {
            try {
                currentCon.close();
            } catch (SQLException ex) {
                Logger.getLogger(KayttajaDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return lista ;
        



    }
    
    
}