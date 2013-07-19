/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import FileModel.LogFileModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author RdwSuppot
 */
@WebServlet(name = "SendLog", urlPatterns = {"/SendLog"})
public class SendLog extends HttpServlet {

    private String fileName="C:\\My Drive\\Current Projects\\User Click Behavior\\micro_data\\abi-abinaya,202557898.log";
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
        LogFileModel lfm=new LogFileModel();
        ArrayList<ArrayList<String>> Data = lfm.ReadLogFile(fileName);
        request.setAttribute("Nodes",Data);
        RequestDispatcher dispatcher=request.getRequestDispatcher("MockUp.jsp");
        dispatcher.forward(request,response);
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
        
            String FilePath;
            FilePath=request.getParameter("FilePath"); 
        LogFileModel lfm=new LogFileModel();
        ArrayList<ArrayList<String>> Data = lfm.ReadLogFile(fileName);
        request.setAttribute("Data",Data);
        RequestDispatcher dispatcher=request.getRequestDispatcher("MockUp.jsp");
        dispatcher.forward(request,response);
        

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
