/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fi.helsinki.sikuutti.tsoha;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sikuutti
 */
@WebServlet(name = "UusiKayttaja", urlPatterns = {"/UusiKayttaja"})
public class UusiKayttaja extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            
            int paino=0;
            int ika=0;
            
            KayttajaBean kp = new KayttajaBean();
            kp.setNimi(request.getParameter("Nimi"));
            kp.setKayttajaTunnus(request.getParameter("KayttajaTunnus"));
            kp.setSalaSana(request.getParameter("SalaSana"));
            kp.setOsoite(request.getParameter("Osoite"));
            kp.setKaupunki(request.getParameter("Kaupunki"));
            kp.setPostinumero(request.getParameter("Postinumero"));
            paino=Integer.parseInt(request.getParameter("Paino"));
            kp.setPaino(paino);
            ika=Integer.parseInt(request.getParameter("Ika"));
            kp.setIka(ika);
            
            kp = KayttajaDao.UusiKayttaja(kp);
            
            if (kp.isValid()) {
                
                response.sendRedirect("Paivakirja.jsp");
            } else {
              response.sendRedirect("UusiKayttaja.jsp?viesti=Tunnus oli jo olemassa");
               
            }
            
            
        } catch (Throwable exc) {
            System.out.println(exc);
        }

    }
        
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
