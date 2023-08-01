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
  color: #000000;
  font-weight: bold;
  font-size: 15px;
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
.style6 {font-size: 14px;
  text-decoration: none;}
  .style20 {color: black}
        .style11 {color: red}
        .style12 {color: #000000}
        .style13 {font-size: 12px}
        .style14 {font-size: 12}
        .style15 {
  color: #000000;
  font-size: 12px;
  font-weight: bold;
}
        .style16 {font-weight: bold}
        .style18 {font-size: 12px; font-weight: bold; }
        </style>
</head>
    <body bgcolor="#2b6777"><FORM action="register" method="post">
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
            <td width="858" height="60" align="center"><span class="style2">FOOD DONATION APPLICATION</span></td>
          </tr>
          <tr>
            <td width="876" height="80" bgcolor="#F0F0F0" ><img src="image/slide1.jpg" width="969" height="261"/></td>
          </tr>
          <tr>
            <td ><table width="967" border="1" bgcolor="c8d8e4" bordercolor="#CC6600">
              <tr>
                <td width="162" align="center"><a href="index.jsp" class="style6 style20"><strong>Home</strong></a></td>
                <td width="163" align="center"><a href="register.jsp" class="style6 style20"><strong>Register</strong></a></td>
               
                <td width="198" align="center"><a href="login.jsp" class="style6 style20"><strong>Login</strong></a></td>
                <td width="173" align="center"><a href="about.jsp" class="style6 style20"><strong>About Us</strong></a></td>
        <td width="237" align="center"><a href="contact.jsp" class="style6 style20"><strong>Contact Us</strong></a></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="356"><table width="589" border="1" align="center" bordercolor="#003366">
      <tr>
        <td width="583" height="30" align="center" bgcolor="#c8d8e4"><h2 class="style14">User Register </h2></td>
      </tr>
      <tr>
        <td height="361" align="center"><table width="437" border="0" align="center">
            <tr>
              <td width="152" height="35" ><span class="style18">First name</span></td>
              <td width="275" class="style2"><label>
                <input type="text" id="fname" name="fname" style="width:180px" value="" class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('fname','err_fname');" onBlur="return txt_empty('fname','err_fname','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_fname"></span> </label></td>
            </tr>

            <tr>
              <td height="31" ><span class="style15">Last name</span></td>
              <td class="style2"><label>
                <input type="text" id="lname" name="lname" style="width:180px" value="" class="displayValue" onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('lname','err_lname');" onBlur="return txt_empty('lname','err_lname','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_lname"></span> </label></td>
            </tr>
      <tr>
              <td width="152" height="35" ><span class="style18">Username</span></td>
              <td width="275" class="style2"><label>
                <input type="text" id="uname" name="uname" style="width:180px" value="" class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('uname','err_uname');" onBlur="return txt_empty('uname','err_uname','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_uname"></span> </label></td>
            </tr>

            <tr>
              <td height="31" ><span class="style15">Password</span></td>
              <td class="style2"><label>
                <input type="password" id="pwd" name="pwd" style="width:180px" value="" class="displayValue"  onChange="return val_zero('pwd','err_pwd');" onBlur="return txt_empty('pwd','err_pwd','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_pwd"></span> </label></td>
            </tr>
            <tr>
              <td height="37" class="style10 style6"><span class="style4 style13"><strong><strong>Contact no</strong></strong></span></td>
              <td class="style2"><label>
                <input type="text" id="contact" name="contact" style="width:180px" value=""  maxlength="10"class="displayValue"  onKeyPress="return numbersonly();return nospecialcharacters();" onChange="return val_zero('contact','err_contact');" onBlur="return txt_empty('contact','err_contact','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_contact"></span> </label></td>
            </tr>
            <tr>
              <td height="43" class="style10 style6"><span class="style4 style13"><strong><strong>Address</strong></strong></span></td>
              <td class="style2"><label>
                <textarea name="address" class="displayValue" id="address" style="width:180px" onBlur="return txt_empty('address','err_address','Should Not Be Blank');" onChange="return val_zero('address','err_address');"></textarea>
              </label></td>
            </tr>
            <tr>
              <td height="34" class="style10 style6"><span class="style4 style13"><strong><strong>Email-Id<span class="style11"> * </span></strong></strong></span></td>
              <td class="style2"><label>
                <input type="text" id="email" name="email" style="width:180px" class="displayValue" value="" onChange="return val_zero('email','err_email');" onBlur="return txt_empty('email','email','Should Not Be Blank');"/>
              </label></td>
            </tr>
            <tr>
              <td height="45" class="style16 style4 style13"><span class="style10"><strong>Date</strong> <strong>of Birth</strong></span><span class="style32"> <span class="style11">*</span></span></td>
              <td><label>
                <input type="text" style="width:150px" id="dob" name="dob"  value="" class="displayValue" onChange="return val_zero('dob','err_dob');" 
 onBlur="return txt_empty('dob','err_dob','Should Not Be Blank');"/>
                <a href="javascript:NewCssCal('dob','yyyymmdd')"><img src="images/cal.jpg" alt="" width="20" height="20" /></a><span id="err_dob"></span> </label></td>
            </tr>
            <tr>
              
              <td width="152" height="36" class="style3"><span class="style2 style6 style10"><span class="style3 style4 style13 style12">Gender</span></span></td>
              <td width="275"><strong>
                <label>
                <select name="gender"  style="width:80%;">
                  <option value="Select Gender">Select Gender</option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                  <option value="Other">Other</option>
                 
                </select>
                </label>
              </strong></td>
             
            </tr>
      
            <tr>
            
              <td width="152" height="37" class="style3"><span class="style2 style6 style10"><span class="style3 style4 style13 style12">Role</span></span></td>
              <td width="275"><strong>
                <select name="role" style="width:80%;">
                  <option value="Select Role">Select Role</option>
                  <option value="Donor">Donor</option>
                  <option value="NGO">NGO</option>
                  <option value="Logistics">Logistics</option>
                 
                </select>
                <label></label>
              </strong></td>
             
             

            </tr><tr>
              <td width="152" height="35" ><span class="style18">Favorite food : </span></td>
              <td width="275" class="style2"><label>
                <input type="text" id="ques1" name="ques1" style="width:180px" value="" class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('ques1','err_ques1');" onBlur="return txt_empty('ques1','err_ques1','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_ques1"></span> </label></td>
            </tr>



            
            <tr>
              <td height="46" class="style3 style13">&nbsp;&nbsp;</td>
              <td class="style2"><input type="submit" name="add" value="Submit"  class="buttons" onClick="return validatePage('fname|lname|address|email|dob|uname|pwd|contact','err_fname|err_lname|err_address|err_email|err_dob|err_uname|err_pwd|err_contact','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" name="cancel" value="Cancel" /></td>
            </tr>
           
          </table>
          <span class="style11"><%=msg%></span></td>
      </tr>
      
    </table></td>
          </tr>
          <tr>
            <td bgcolor="#2b6777">&nbsp;</td>
          </tr>
        </table>
       </form>
    </body>
</html>