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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author WINDOWS 10
 */
public class Mverify extends HttpServlet {

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
	            String d1 = "",d2 = "",d3 = "",d4 = "",d5 = "",d6 = "",n1 = "",n2 = "",n3 = "",n4 = "",n5 = "",l1 = "",l2 = "",l3 = "",l4 = "",l5 = "";
	            int size;
	            int flag = 0;
	            String a11 = request.getParameter("a2");
	            String a12 = request.getParameter("a3");

	            String b = request.getParameter("b");
	            String b1 = request.getParameter("b1");
	            String a1 = "", a2 = "", phone = "";
	            if (request.getParameter("t1") != null) {
	               
	                java.util.Date st11 = new java.util.Date();
	                // Formatting date into  yyyy-MM-dd HH:mm:ss e.g 2008-10-10 11:21:10

	                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	                String f = formatter.format(st11);
	                 ResultSet rs2 = st1.executeQuery("select max(MRID) from mraise  ");
	              int vv=0;
	                  if (rs2.next()) {
	                      vv=Integer.parseInt(rs2.getString(1))+1;
	                  }
	                  ResultSet rs1 = st1.executeQuery("select * from draise where DRid='"+b+"' ");
	                int v2=0;
	                  if (rs1.next()) {
	                	  d1=rs1.getString(2);d2=rs1.getString(3);d3=rs1.getString(4);d4=rs1.getString(5);d5=rs1.getString(6);d6=rs1.getString(7);
	                  }
	                  ResultSet rs11 = st1.executeQuery("select * from nraise where NRid='"+a11+"' ");
		                
		                  if (rs11.next()) {
		                	  n1=rs11.getString(2);n2=rs11.getString(3);n3=rs11.getString(6);	  
		                  }
	                  
		                  ResultSet rs12 = st1.executeQuery("select * from lraise where LRid='"+a12+"' ");
			                
		                  if (rs12.next()) {
		                	  l1=rs12.getString(2);l2=rs12.getString(3);l3=rs12.getString(4);l4=rs12.getString(6);
		                  }
		                  System.out.println("insert into mraise values('"+vv+"','"+b+"','"+d1+"','"+d2+"','"+d3+"','"+d4+"','"+d5+"','"+d6+"','"+a11+"','"+l1+"','"+l2+"','"+l3+"','"+l4+"','"+a12+"','"+n1+"','"+n2+"','"+n3+"','Accept','"+f+"')");
	              v2 = st.executeUpdate("insert into mraise values('"+vv+"','"+b+"','"+d1+"','"+d2+"','"+d3+"','"+d4+"','"+d5+"','"+d6+"','"+a11+"','"+l1+"','"+l2+"','"+l3+"','"+l4+"','"+a12+"','"+n1+"','"+n2+"','"+n3+"','Accept','"+f+"')");
	                
	              v2 = st.executeUpdate("update Draise set assign='" + request.getParameter("t1") + "' where DRid='" + b + "'");
	              v2 = st.executeUpdate("update Nraise set assign='" + request.getParameter("t1") + "' where NRid='" + a11 + "'");
	              v2 = st.executeUpdate("update Lraise set assign='" + request.getParameter("t1") + "' where LRid='" + a12 + "'");
	                if (v2 == 1) {
	                    request.setAttribute("ok", "1");
	                    request.setAttribute("msg", "ACCEPTED Updated Successfully");
	                    RequestDispatcher rs21 = request.getRequestDispatcher("AMapping.jsp");
	                    rs21.forward(request, response);
	                } else {
	                    request.setAttribute("ok", "1");
	                    request.setAttribute("msg", "Failed to Update");
	                    RequestDispatcher rs21 = request.getRequestDispatcher("AMapping.jsp");
	                    rs21.forward(request, response);
	                }

	            }else  if (request.getParameter("t2") != null) {

	            	 java.util.Date st11 = new java.util.Date();
		                // Formatting date into  yyyy-MM-dd HH:mm:ss e.g 2008-10-10 11:21:10

		                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		                String f = formatter.format(st11);
		                 ResultSet rs2 = st1.executeQuery("select max(MRID) from mraise  ");
		              int vv=0;
		                  if (rs2.next()) {
		                      vv=Integer.parseInt(rs2.getString(1))+1;
		                  }
		                  ResultSet rs1 = st1.executeQuery("select * from draise where DRid='"+b+"' ");
		                int v2=0;
		                  if (rs1.next()) {
		                	  d1=rs1.getString(2);d2=rs1.getString(3);d3=rs1.getString(4);d4=rs1.getString(5);d5=rs1.getString(6);d6=rs1.getString(7);
		                  }
		                  ResultSet rs11 = st1.executeQuery("select * from nraise where NRid='"+a11+"' ");
			                
			                  if (rs11.next()) {
			                	  n1=rs11.getString(2);n2=rs11.getString(3);n3=rs11.getString(6);	  
			                  }
		                  
			                  ResultSet rs12 = st1.executeQuery("select * from lraise where LRid='"+a12+"' ");
				                
			                  if (rs12.next()) {
			                	  l1=rs1.getString(2);l2=rs1.getString(3);l3=rs1.getString(4);l4=rs1.getString(6);
			                  }
		              v2 = st.executeUpdate("insert into pstatus values('"+vv+"','"+b+"','"+d1+"','"+d2+"','"+d3+"','"+d4+"','"+d5+"','"+d6+"','"+a11+"','"+l1+"','"+l2+"','"+l3+"','"+l4+"','"+a12+"','"+n1+"','"+n2+"','"+n3+"','Accept')");
		                
		              v2 = st.executeUpdate("update Draise set assign='" + request.getParameter("t2") + "' where DRid='" + b + "'");
		              v2 = st.executeUpdate("update Nraise set assign='" + request.getParameter("t2") + "' where DRid='" + a11 + "'");
		              v2 = st.executeUpdate("update Lraise set assign='" + request.getParameter("t2") + "' where DRid='" + a12 + "'");
		                if (v2 == 1) {
		                    request.setAttribute("ok", "1");
		                    request.setAttribute("msg", "ACCEPTED Updated Successfully");
		                    RequestDispatcher rs21 = request.getRequestDispatcher("AMapping.jsp");
		                    rs21.forward(request, response);
		                } else {
		                    request.setAttribute("ok", "1");
		                    request.setAttribute("msg", "Failed to Update");
		                    RequestDispatcher rs21 = request.getRequestDispatcher("AMapping.jsp");
		                    rs21.forward(request, response);
		                }

	                    }
	            else {
	                RequestDispatcher rs21 = request.getRequestDispatcher("AMapping.jsp");
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
