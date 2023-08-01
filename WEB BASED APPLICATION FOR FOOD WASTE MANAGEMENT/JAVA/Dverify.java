/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Properties;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**@author WINDOWS 10
 */
public class Dverify extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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

	            String url1;

	            HttpSession so = request.getSession(true);
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "root");
	            Statement st = con.createStatement();
	            Statement st1 = con.createStatement();
	          
	            int size;
	            int flag = 0;
	            String a11 = request.getParameter("a2");
	            String a12 = request.getParameter("a3");

	            String b = request.getParameter("b");
	            String b1 = request.getParameter("b1");
	            String a1 = "", a2 = "", phone = "";
	            if (request.getParameter("t2") != null) {
	                String v = null;
	                java.util.Date st11 = new java.util.Date();
	                // Formatting date into  yyyy-MM-dd HH:mm:ss e.g 2008-10-10 11:21:10

	                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	                String f = formatter.format(st11);
	                    int v2=0;
	                 
	              v2 = st.executeUpdate("update DRaise set status='" + request.getParameter("t2") + "' where DRID='" + b + "'");
	                if (v2 == 1) {
	                    request.setAttribute("ok", "1");
	                    request.setAttribute("msg", " Updated Successfully");
	                    RequestDispatcher rs21 = request.getRequestDispatcher("ADRequest.jsp");
	                    rs21.forward(request, response);
	                } else {
	                    request.setAttribute("ok", "1");
	                    request.setAttribute("msg", "Failed to Update");
	                    RequestDispatcher rs21 = request.getRequestDispatcher("ADRequest.jsp");
	                    rs21.forward(request, response);
	                }

	            }else  if (request.getParameter("t1") != null) {

	            	 String v = null;
		                java.util.Date st11 = new java.util.Date();
		                // Formatting date into  yyyy-MM-dd HH:mm:ss e.g 2008-10-10 11:21:10

		                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		                String f = formatter.format(st11);
		                    int v2=0;
		                 
		              v2 = st.executeUpdate("update DRaise set status='" + request.getParameter("t1") + "' where DRID='" + b + "'");
		                if (v2 == 1) {
		                    request.setAttribute("ok", "1");
		                    request.setAttribute("msg", " Updated Successfully");
		                    RequestDispatcher rs21 = request.getRequestDispatcher("ADRequest.jsp");
		                    rs21.forward(request, response);
		                } else {
		                    request.setAttribute("ok", "1");
		                    request.setAttribute("msg", "Failed to Update");
		                    RequestDispatcher rs21 = request.getRequestDispatcher("ADRequest.jsp");
		                    rs21.forward(request, response);
		                }}
	            else {
	                RequestDispatcher rs21 = request.getRequestDispatcher("ADRequest.jsp");
	                rs21.forward(request, response);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            out.close();
	        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
