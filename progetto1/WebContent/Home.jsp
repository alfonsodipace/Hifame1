<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
 <jsp:useBean id="UtenteBean" class="bean.UtenteBean" scope="session"/>  

<script src="js/jquery.js" ></script>
</head>


<script>
$(document).ready(function(){
    $("#email").blur(function(){
        var email = $(this).val();
             $.ajax({
                type: "POST",
                url: "AjaxController",
                data: "email="+ email,
                success: function(msg){
                    $("#result1").ajaxComplete(function(event, request, settings) {                    
                        $("#result1").html(msg);
                        $('#result1').append(error);
                    });
                }
            }); 
        });
 });
</script>




 <jsp:getProperty property="pass" name="UtenteBean"/>

<body>
<form action="MainTest" method="get">
<input type="text" id="email" name="email"> 
<input type="submit" value="test!" id="bttHello" > 


<p id="result1"> </p>



</form>

</body>
</html>
