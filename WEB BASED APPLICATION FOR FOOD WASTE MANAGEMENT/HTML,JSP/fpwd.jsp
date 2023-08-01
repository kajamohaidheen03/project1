<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOOD WASTE MANAGEMENT</title><script type="text/javascript" src="js/datetimepicker_css.js"></script>
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
        .style12 {font-family: "Times New Roman", Times, serif}
.style15 {
	font-weight: bold;
	font-size: 12px;
}
        .style19 {
	color: #000000;
	font-size: 14px;
}
        .style20 {font-size: 12px}
.style21 {
	font-family: "Times New Roman", Times, serif;
	font-size: 12px;
	font-weight: bold;
}
        </style>
</head>
    <body bgcolor="#CC6600"><FORM action="fpwd" method="post">
	   <%
   String ok=(String)request.getAttribute("ok");
   String msg="";
   String a="";
   String b="";
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
    a=(String)request.getAttribute("a");
   b=(String)request.getAttribute("b");
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
                <td width="162" align="center"><a href="index.jsp" class="style6 style11"><strong>Home</strong></a></td>
                <td width="163" align="center"><a href="register.jsp" class="style6 style11"><strong>Register</strong></a></td>
               
                <td width="198" align="center"><a href="login.jsp" class="style6 style11"><strong>Login</strong></a></td>
                <td width="173" align="center"><a href="about.jsp" class="style6 style11"><strong>About_US</strong></a></td>
				<td width="237" align="center"><a href="contact.jsp" class="style6 style11"><strong>Contact_US</strong></a></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="356"><table width="409"  border="1" align="center" bordercolor="#003366">
                    <tr>
                      <td width="403" height="31" align="center" bgcolor="#CC6600"><h4 align="center" class="style12 style2 title style19"><strong>CHANGE PASSWORD </strong></h4></td>
                    </tr>
                    <tr>
                      <td height="126" align="center">
                   
                        <table width="380" border="0" align="center">
                        <tr>
                          <td width="128" class="style10"><span class="style15 style12 style20"><strong><strong>Username * </strong></strong></span></td>
                          <td width="242"><span class="style20">
                            <label>
                             <input type="text" id="uname" name="uname" value="" style="width:180px" maxlength="20" class="displayValue" 
onChange="return val_zero('uname','err_uname');"
											onBlur="return txt_empty('uname','err_uname','Should Not Be Blank');" />
&nbsp;&nbsp;&nbsp;                            </label>
                          </span></td>
                        </tr>
                        <tr>
                          <td class="style10"><span class="style12 style15 style20"><strong>Password *</strong></span></td>
                          <td><span class="style20">
                            <label>
                            <input type="password" id="pwd" name="pwd" value="" style="width:180px" maxlength="20" class="displayValue" 
onChange="return val_zero('pwd','err_pwd');"
											onblur="return val_password('pwd','err_pwd','Password Should Not Be Blank');" />
&nbsp;&nbsp;&nbsp;                            </label>
                          </span></td>
                        </tr> <tr>
              <td width="152" height="35" ><span class="style12 style15 style20"><strong>Favourite food : </strong></span></td>
              <td width="275" class="style2"><span class="style20">
                <label>
                <input type="text" id="ques1" name="ques1" style="width:180px" value="" class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('ques1','err_ques1');" onBlur="return txt_empty('ques1','err_ques1','Should Not Be Blank');"/>
&nbsp;&nbsp;&nbsp; </label>
              </span></td>
            </tr>

            

            <tr>
              <td height="31" ><span class="style21">New Password</span></td>
              <td class="style2"><span class="style20">
                <label>
                <input type="password" id="pwd1" name="pwd1" style="width:180px" value="" class="displayValue"  onChange="return val_zero('pwd1','err_pwd1');" onBlur="return txt_empty('pwd1','err_pwd1','Should Not Be Blank');"/>
&nbsp;&nbsp;&nbsp; </label>
              </span></td>
            </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td></td>
                          <td ><span class="style20">
                            <label>
                            <input type="submit" name="Submit" value="SignIn" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="submit" name="Submit2" value="Cancel" />
                            </label>
                          </span></td>
                        </tr>
                      </table>
              
                   </td>
                    </tr>
      </table><p align="center">   <%=msg%></p></td>
          </tr>
          <tr>
            <td bgcolor="#CC3300">&nbsp;</td>
          </tr>
        </table>
       </form>
    </body>
</html>