<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOOD DONATION</title><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
        <script type="text/javascript" src="js/security.js"></script>
        <style type="text/css">
<!--
.style2 {
	color: #CC6600;
	font-weight: bold;
	font-size: 24px;
}
-->
        </style><style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
.style6 {font-size: 14px}
        .style11 {color: #CC3300}
        .style12 {font-size: 12px}
        .style13 {color: #000000}
.style14 {
	font-size: 12px;
	color: #000000;
	font-weight: bold;
}
        </style>
</head>
    <body bgcolor="#CC6600"><form action="Mverify" method="post">
              <%
   String ok="";
      String ok1="";
   String msg="",msg1="";
      String a1="";
	  String a2="";
	  String a3="";        
   	  String a4=""; 
	  		  String a5="";  
			   String a6=""; 
			   ok=(String)request.getAttribute("ok");
			   ok1=(String)request.getAttribute("ok1");
     String un="";
   if(ok!=null)
   {
  a1=(String)request.getAttribute("a1");
  a2=(String)request.getAttribute("a2");
    a3=(String)request.getAttribute("a3");
	 a4=(String)request.getAttribute("a4");
	 msg=(String)request.getAttribute("msg");
   }
    if(ok1!=null)
   {
  msg1=(String)request.getAttribute("msg1");
	 a5=(String)request.getAttribute("aa");
	  a6=(String)request.getAttribute("aa1");
   }
    %>
        <table width="864" border="0" align="center" bgcolor="#FFFFFF">
          <tr>
            <td width="858" height="60" align="center"><span class="style2">FOOD DONATION </span></td>
          </tr>
          <tr>
            <td width="876" height="80" bgcolor="#F0F0F0" ><img src="image/slide1.jpg" width="969" height="261"/></td>
          </tr>
          <tr>
            <td ><table width="967" border="1" bordercolor="#CC6600">
              <tr>
                <td width="103" align="center"><a href="Admin.jsp" class="style6 style11"><strong>Home</strong></a></td>
                <td width="145" align="center"><a href="ADRequest.jsp" class="style6 style11"><strong>Donor_Request </strong></a></td>
                <td width="138" align="center"><a href="ANRequest.jsp" class="style6 style11"><strong>NGO_Request</strong></a></td>
				<td width="219" align="center"><a href="ALRequest.jsp" class="style6 style11"><strong>Logistic_ Request </strong></a></td>
				<td width="129" align="center"><a href="AMapping.jsp" class="style6 style11"><strong>Mapping</strong></a></td>
				<td width="95" align="center"><a href="AHelp.jsp" class="style6 style11"><strong>Help</strong></a></td>
                <td width="92" align="center"><a href="login.jsp" class="style6 style11"><strong>Logout</strong></a></td>
                
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="356"><table width="961" border="0" align="center">
      <tr>
        <td width="955" height="47" align="center" bgcolor="#CC3300"><span class="style4 style12"><strong>DONOR REQUEST </strong></span></td>
      </tr>
      <tr>
        <td><table width="200" border="0">
 
  <tr>
    <td><table width="955" border="0" align="center">
  <tr>
    <td width="949" height="78"><table width="949" border="0" align="center">
      <tr>
        <td width="943"><table width="943" height="33" border="0">
          <tr>
		    
            <td width="72" bgcolor="#CC3300" style="text-align: center"><span class="style4 style12 style13"><strong>SELECT</strong></span></td>
             <td width="137" bgcolor="#CC3300" style="text-align: center"><span class="style4 style12 style13"><strong> NAME</strong></span></td>
			    <td width="135" bgcolor="#CC3300" style="text-align: center"><span class="style4 style12 style13"><strong>PURPOSE</strong></span></td>
                <td width="171" bgcolor="#CC3300" style="text-align: center"><span class="style4 style12 style13"><strong> LOCATION </strong></span></td>
			    <td width="138" bgcolor="#CC3300" style="text-align: center"><span class="style4 style12 style13"><strong> CONTACT </strong></span></td>
                <td width="135" bgcolor="#CC3300" style="text-align: center"><span class="style4 style12 style13"><strong>DATE</strong></span></td>
			    <td width="125" bgcolor="#CC3300" style="text-align: center"><span class="style14">NO OF POCKET </span></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="942" height="33" border="0">
          <% 
	try
	{
            String a11=null;
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);
		int flag=0;
		String url="jdbc:mysql://localhost:3306/food";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("select * from Draise where assign=''");

    while(rs.next())
		{						
	 %><tr>
		
            <td width="71" style="text-align: center"><input name="b" type="radio" value="<%=rs.getString(1)%>"></td>
            <td width="140" style="text-align: center"><%=rs.getString(2)%></td>
			    <td width="132" style="text-align: center"><%=rs.getString(3)%></td>
            <td width="169" style="text-align: center"><%=rs.getString(4)%></td>
			 <td width="142" style="text-align: center"><%=rs.getString(5)%></td>
            <td width="139" style="text-align: center"><%=rs.getString(6)%></td>
            <td width="119" style="text-align: center"><%=rs.getString(7)%></td>
            </tr>  <%
 
													
													} 
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="481" border="0" align="center">
	<tr>
    <td width="235" height="33" align="right"><span class="style14">NGO RAISE </span></td> 
    <%

  String pr=null,pro=null,pro1=null,pro2=null;
 		try {
			int flag = 0;

			String url1 = "jdbc:mysql://localhost:3306/food";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
			ResultSet rs1 = st1.executeQuery("select NRID,name,location from nraise where assign=''");
  %> 
        <td width="236"> <div align="left">
                    <select name="a2" style="width:180px" class="style16">
                     
                                           <%
          while (rs1.next()) {
				pro=rs1.getString(1); 
				pro1=rs1.getString(2);
				pr=rs1.getString(3);
				pro2=pro+"-"+pro1+"-"+pr;
           %> <option value="<%=pro%>"><%=pro2%></option>
                      <%} %>
                    </select>
                    
                    </div></td> <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
      </tr>
	  <tr>
    <td width="235" height="33" align="right"><span class="style14">LOGISTICS RAISE</span></td> 
    <%

  String pr1=null,pro4=null,pro5=null,pro6=null;
 		try {
			int flag1 = 0;

			String url1 = "jdbc:mysql://localhost:3306/food";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1 = DriverManager.getConnection(url1, "root", "root");
			Statement st1 = con1.createStatement();
			ResultSet rs1 = st1.executeQuery("select LRID,vname,location from lraise where assign=''");
  %> 
        <td width="236"> <div align="left">
                    <select name="a3" style="width:180px" class="style16">
                     
                                           <%
          while (rs1.next()) {
				pro4=rs1.getString(1);
				pro5=rs1.getString(2);
				pr1=rs1.getString(3);
				pro6=pro4+"-"+pro5+"-"+pr1;
           %> <option value="<%=pro4%>"><%=pro6%></option>
                      <%} %>
                    </select>
                    
                    </div></td> <%
        }
        catch(Exception e)
        {
        out.println(e);
        } %>
      </tr>
      <tr>
        
        <td width="236" align="center"><input type="submit" name="t1" value="ACCEPT"></td>
		<td width="235" align="center"> <input type="submit" name="t2" value="DENIED"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
    <%if(request.getParameter("t1")!=null){%><table width="489" border="0" align="center">
  <tr>
    <td width="118" height="27">&nbsp;</td>
    <td width="291" align="center"><%=msg%></td>
    <td width="66">&nbsp;</td>
  </tr>
</table>
    <%}%></td>
  </tr>
</table></td>
  </tr>
</table>
</td>
      </tr>
    </table>
</td>
          </tr>
          <tr>
            <td bgcolor="#CC3300">&nbsp;</td>
          </tr>
        </table>
       </form>
    </body>
</html>