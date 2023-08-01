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
public class login extends HttpServlet {

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
        	HttpSession so = request.getSession(true);
    	      String url="jdbc:mysql://localhost:3306/food";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName("com.mysql.jdbc.Driver");
	      Connection con = DriverManager
	              .getConnection(url, "root", "root");

                 Statement smt=con.createStatement(); Statement smt1=con.createStatement();
          
                 String uname =request.getParameter("uname");
                 String pwd =request.getParameter("pwd");
          
              
                 
                 if(request.getParameter("Submit")!=null){
                     if((uname.equals(""))||(pwd.equals(""))){
                          request.setAttribute("ok", "1");
                      request.setAttribute("msg", "Please enter the value");
                     RequestDispatcher rs=request.getRequestDispatcher("login.jsp");
                      rs.forward(request, response);
                    }else{
                   String role=""; int flag=0;
                 	ResultSet rt=smt.executeQuery("select * from register where uname='"+uname+"' and pass='"+pwd+"' ");
                 if(rt.next()){
                     flag=1;
                     role=rt.getString(11);
                  }else           	
                if(((uname.equalsIgnoreCase("Admin"))&&(pwd.equalsIgnoreCase("Admin")))){
                	  flag=1;
                      role="Admin";
                 }
                 so.setAttribute("un", uname);
             
                if((flag==1)&&(role.equalsIgnoreCase("Admin"))) {
                	 request.setAttribute("ok", "1");
                     request.setAttribute("msg", "Welcome to Admin Login");
                    RequestDispatcher rs=request.getRequestDispatcher("Admin.jsp");
                     rs.forward(request, response);
                }else  if((flag==1)&&(role.equalsIgnoreCase("Donor"))) {
                	 request.setAttribute("ok", "1");
                     request.setAttribute("msg", "Welcome to Donor Login");
                    RequestDispatcher rs=request.getRequestDispatcher("Donor.jsp");
                     rs.forward(request, response);
                }else  if((flag==1)&&(role.equalsIgnoreCase("NGO"))) {
                	 request.setAttribute("ok", "1");
                     request.setAttribute("msg", "Welcome to NGO Login");
                    RequestDispatcher rs=request.getRequestDispatcher("Ngo.jsp");
                     rs.forward(request, response);
                }else  if((flag==1)&&(role.equalsIgnoreCase("Logistics"))) {
                	 request.setAttribute("ok", "1");
                     request.setAttribute("msg", "Welcome to Logistics Login");
                    RequestDispatcher rs=request.getRequestDispatcher("Logistics.jsp");
                     rs.forward(request, response);
                }else {
                	 request.setAttribute("ok", "1");
                     request.setAttribute("msg", "Invalid Username & Password");
                    RequestDispatcher rs=request.getRequestDispatcher("login.jsp");
                     rs.forward(request, response);	
                }
                
                    }
               }else if(request.getParameter("cancel")!=null){
              
  			
  			RequestDispatcher requestdispatcher = request.getRequestDispatcher("login.jsp");
  			requestdispatcher.forward(request, response);

  		
                  
                  }
                
  		
                
                  else{
                                          
                         request.setAttribute("ok", "1");
                      request.setAttribute("msg", "Please enter the value");
                     RequestDispatcher rs=request.getRequestDispatcher("login.jsp");
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
