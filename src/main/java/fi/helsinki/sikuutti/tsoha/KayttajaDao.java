/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fi.helsinki.sikuutti.tsoha;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class KayttajaDao {

    static Connection currentCon = null;
    static ResultSet rs = null;

    public static KayttajaBean login(KayttajaBean bean) {
        Statement stmt = null;
        String username = bean.getKayttajaTunnus();
        String password = bean.getSalaSana();
        String query = "select * from Users where KayttajaTunnus='" + username + "' AND SalaSana='" + password + "'";
        System.out.println(query);
        try {

            currentCon = ConnectionManager.getConnection();
            stmt = currentCon.createStatement();
            rs = stmt.executeQuery(query);
            boolean userExists = rs.next();

            if (!userExists) {

                bean.setValid(false);
            } else if (userExists) {
                String Nimi = rs.getString("Nimi");


                bean.setNimi(Nimi);

                bean.setValid(true);
            }

        } catch (Exception x) {
            
        }
        finally{
            try {
                currentCon.close();
            } catch (SQLException ex) {
                Logger.getLogger(KayttajaDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return bean;
    }
}