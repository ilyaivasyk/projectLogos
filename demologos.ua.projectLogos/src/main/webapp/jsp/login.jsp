<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>
    <link type="text/css"  href="login.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ177lGASPYR82H3Vr_jlNTR59v1NscUYjCHhT2ysA6hrV4hgBFNaeOHxA1C5D5CUlB8Es&usqp=CAU" id="icon" alt="Login icon" />
    </div>
    
      <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading">PERIODICALS</h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="email" type="text" placeholder="Email" class="fadeIn second" 
                   autofocus="true"/>
            <input name="password" type="password" placeholder="Password" class="fadeIn third "/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            
            <input class="fadeIn fourth" type="submit" value="Log In"/>
        </div>

    </form>
    

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover"  href="${contextPath}/registration" >Create an account</a>
    </div>

  </div>
</div>

  


</body>
</html>

 </body>
<%-- </html>
<div class="container">

		<form method="POST" action="${contextPath}/login" class="form-signin">
			<h2 class="form-heading">Log in</h2>

			<div class="form-group ${error != null ? 'has-error' : ''}">
				<span>${message}</span> <input name="email" type="text"
					class="fadeIn second" placeholder="Email" autofocus="true" /> <input
					name="password" type="password" class="fadeIn third"
					placeholder="Password" /> <span>${error}</span> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
	            <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>

			</div>

		</form>

	</div>


</body>
</html>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

 --%> --%>