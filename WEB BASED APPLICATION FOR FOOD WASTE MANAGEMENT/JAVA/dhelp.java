/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author WINDOWS 10
 */
public class dhelp extends HttpServlet {

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
	        	
	   	      String url="jdbc:mysql://localhost:3306/food";
		      String driver="com.mysql.jdbc.Driver";
		      Class.forName("com.mysql.jdbc.Driver");
		      Connection con = DriverManager
		              .getConnection(url, "root", "root");

	                Statement smt=con.createStatement(); Statement smt1=con.createStatement();
	                
	                String occasion =request.getParameter("occasion");
	                String location =request.getParameter("location");
	            	HttpSession so = request.getSession(true);
	                
	                
	                if(request.getParameter("add")!=null){
	                    if((occasion.equals(""))||(location.equals(""))){
	                         request.setAttribute("ok", "1");
	                     request.setAttribute("msg", "Please enter the value");
	                    RequestDispatcher rs=request.getRequestDispatcher("DHelp.jsp");
	                     rs.forward(request, response);
	                   }else{
	                  String vt=null;
	                 int uid=0;
	               	  ResultSet rt1=smt1.executeQuery("select max(HID) from help");
	                     if(rt1.next()){
	                   	  uid=Integer.parseInt(rt1.getString(1))+1;

	                     }
	                     String st=uid+"";
	 	      int v=   smt.executeUpdate("insert into help values('"+uid+"','"+so.getAttribute("un")+"','"+occasion+"','"+location+"','')");
	                 if(v==1){
	                     request.setAttribute("ok", "1");
	                     request.setAttribute("msg", "Successfully stored");
	                    RequestDispatcher rs=request.getRequestDispatcher("DHelp.jsp");
	                     rs.forward(request, response);
	                 }else{
	                        request.setAttribute("ok", "1");
	                     request.setAttribute("msg", "Please enter the value");
	                    RequestDispatcher rs=request.getRequestDispatcher("DHelp.jsp");
	                     rs.forward(request, response);
	                 }}
	              }else if(request.getParameter("cancel")!=null){
	             
	 			
	 			RequestDispatcher requestdispatcher = request.getRequestDispatcher("DHelp.jsp");
	 			requestdispatcher.forward(request, response);

	 		
	                 
	                 }
	               
	 		
	               
	                 else{
	                                         
	                        request.setAttribute("ok", "1");
	                     request.setAttribute("msg", "Please enter the value");
	                    RequestDispatcher rs=request.getRequestDispatcher("DHelp.jsp");
	                     rs.forward(request, response);
	                 }
	       }catch (Exception e) {

	           e.printStackTrace();

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
