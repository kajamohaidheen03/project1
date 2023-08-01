<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOOD DONATION APPLICATION</title><script type="text/javascript" src="js/datetimepicker_css.js"></script>
		<script type="text/javascript" src="js/general.js"></script>
        <script type="text/javascript" src="js/security.js"></script>
        <style type="text/css">
<!--
.style2 {
	color: #000000;
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
.style6 {font-size: 14px;
text-decoration: none;}
        .style11 {color: #000000}
        .style12 {font-size: 12px}
        </style>
</head>
    <body bgcolor="#2b6777"><form action="Nraise" method="post"> <%
   String ok=(String)request.getAttribute("ok");
   String msg="";
   String a="";
   String b="";
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
    a=(String)request.getAttribute("a");
   b=(String)request.getAttribute("b");
     }HttpSession so = request.getSession(true);
    %>
        <table width="864" border="0" align="center" bgcolor="#FFFFFF">
          <tr>
            <td width="858" height="60" align="center"><span class="style2">FOOD DONATION APPLICATION</span></td>
          </tr>
          <tr>
            <td width="876" height="80" bgcolor="#F0F0F0" ><img src="image/slide1.jpg" width="969" height="261"/></td>
          </tr>
          <tr>
            <td ><table width="967" border="1" bordercolor="#CC6600">
              <tr>
                <td width="129" align="center"><a href="Ngo.jsp" class="style6 style11"><strong>Home</strong></a></td>
                <td width="173" align="center"><a href="NRaise.jsp" class="style6 style11"><strong>Raise Request</strong></a></td>
				 <td width="140" align="center"><a href="NRequest.jsp" class="style6 style11"><strong>View Raise</strong></a></td>
				<td width="191" align="center"><a href="NStatus.jsp" class="style6 style11"><strong>Status</strong></a></td>
               <td width="134" align="center"><a href="NHelp.jsp" class="style6 style11"><strong>Help</strong></a></td>
                <td width="160" align="center"><a href="login.jsp" class="style6 style11"><strong>Logout</strong></a></td>
               
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="356"><table width="968" border="0">

  <tr>
    <td height="275"><table width="589" border="1" align="center" bordercolor="#003366">
      <tr>
        <td width="583" height="30" align="center" bgcolor="#c8d8e4"><h2 class="style14">Raise Request</h2></td>
      </tr>
      <tr>
        <td height="251" align="center"><table width="437" border="0" align="center">
            <tr>
              <td width="152" height="35" ><span class="style18 style15 style14 style12"><strong>Name</strong></span></td>
              <td width="275" class="style2"><label>
                <input type="text" id="name" name="name" style="width:180px" value="<%=so.getAttribute("un") %>" readonly="true" class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('name','err_name');" onBlur="return txt_empty('name','err_name','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_name"></span> </label></td>
            </tr>

            <tr>
              <td height="31" ><span class="style15 style14 style12"><strong>Occasion</strong></span></td>
              <td class="style2"><label>
                <input type="text" id="occasion" name="occasion" style="width:180px" value="" class="displayValue" onKeyPress="return name_val(event);return nospecialcharacters();" onChange="return val_zero('occasion','err_occasion');" onBlur="return txt_empty('occasion','err_occasion','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_occasion"></span> </label></td>
            </tr>
			

            <tr>
              <td height="31" ><span class="style15 style14 style12"><strong>Location</strong></span></td>
              <td class="style2"><label>
                <input type="text" id="location" name="location" style="width:180px" value="" class="displayValue"  onChange="return val_zero('location','err_location');" onBlur="return txt_empty('location','err_location','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_location"></span> </label></td>
            </tr>
            <tr>
              <td height="37" class="style10 style6"><span class="style4 style15 style14 style12"><strong>Date</strong></span></td>
               <td><label>
                <input type="text" style="width:150px" id="dob" name="dob"  value="" class="displayValue" onChange="return val_zero('dob','err_dob');" 
 onBlur="return txt_empty('dob','err_dob','Should Not Be Blank');"/>
                <a href="javascript:NewCssCal('dob','yyyymmdd')"><img src="images/cal.jpg" alt="" width="20" height="20" /></a><span id="err_dob"></span> </label></td>
            </tr>
			<tr>
              <td width="152" height="35" ><span class="style18 style15 style14 style12"><strong>No of Food Pocket </strong></span></td>
              <td width="275" class="style2"><label>
                <input type="text" id="pocket" name="pocket" style="width:180px" value="" class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('pocket','err_pocket');" onBlur="return txt_empty('pocket','err_pocket','Should Not Be Blank');"/>
                &nbsp;&nbsp;&nbsp;<span id="err_pocket"></span> </label></td>
            </tr>
            <tr>
              <td height="46" class="style3 style13">&nbsp;&nbsp;</td>
              <td class="style2"><input type="submit" name="add" value="Submit"  class="buttons" onClick="return validatePage('name|occasion|pocket|location|ddate','err_name|err_occasion|err_pocket|err_location|err_ddate','Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank|Should Not Be Blank');"  />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" name="cancel" value="Cancel" /></td>
            </tr>
           
          </table>
          <span class="style11"><%=msg%></span></td>
      </tr>
      
    </table></td>
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