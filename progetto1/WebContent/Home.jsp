<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
 <jsp:useBean id="UtenteBean" class="bean.UtenteBean" scope="session"/>  

<script src="js/jquery.js" ></script>  <!--  LIBRERIA JQUERY -->
</head>

<script>
		$(document).ready(function(){  					// check username availability with ajax 
              $("#email").blur(function(){
                  var email = $(this).val();
                       $.ajax({
                          type: "GET",
                          url: "AjaxController",
                          data: "email="+ email,
                          success: function(msg){  
                                  $("#result1").append(msg);
                          }
                      }); 
              });
          });
</script>   

 <jsp:getProperty property="pass" name="UtenteBean"/>       <!--  JUST FOR TEST -->

<body>
<form action="MainTest" method="get">
<input type="text" id="email" name="email"> 
<input type="submit" value="test!" id="bttHello" > 


<p id="result1"> </p>



</form>

</body>
</html>
