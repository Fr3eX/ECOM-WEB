<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:if test="${!empty requestScope.FORM.errors }" var="error"/>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Sign in</title>
	
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/signIn.css"/>"/>

    <!--|| Import Bootstrap ||-->
    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap/bootstrap.min.css"/>"/>
    <!--|| Import FontAwsome for icons ||-->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.2/css/all.css"
      integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu"
      crossorigin="anonymous"
    />
  </head>
  <body>
	<div class="logo"><a href="<c:url value="/Home"/>"><img src="<c:url value="/assets/images/icons/logo light.png"/>" alt=""></a></div>
    <div class="container">
      <div class="sign_in">
        <h2 class="title1">Sign in</h2>
        <ul>
          <li><i class="fab fa-facebook-f"></i></li>
          <li><i class="fab fa-google-plus-g"></i></li>
        </ul>
        <p class="p1">or use your email account</p>
        <form action="<c:url value="/SignIn"/>" method="post">
          <div class="inputwithicon">
            <input 
            type="email" 
            name="mail" 
            class="inp email" 
            placeholder="Email Address" 
            value="<c:out value="${requestScope.USER.email}"/>"
            />
            <i class="fas fa-envelope" aria-hiden="true"></i>
          </div>
		 <%--  <!-- Add this line when the email is unvalide --> --%>
		 <c:if test="${error == \"true\"}">
		 
		  <div class="emailNotValide">
		  		<c:out value="${requestScope.FORM.errors.mail}"/>
		  </div>
         
         </c:if>
         
         <div class="inputwithicon2">
            <input
              type="password"
              name="pass"
              class="inp password"
              value="<c:out value="${requestScope.USER.password}"/>"
              placeholder="Password"
            />
            <i class="fas fa-unlock-alt"></i>
         
         <c:if test="${error == \"true\"}">
		 
		  	<div class="passNotValide">
		  		<c:out value="${requestScope.FORM.errors.pass}"/>
		  	</div>
         
         </c:if>
            
          </div>
		  
		  
          <h6>Forgot your password</h6>
          <button type="submit" class="btn signin d-none"></button>
        </form>
		<button type="button" class="btn btn-dark btn1">SIGN IN</button>
      </div>

      <div class="welcome">
        <h1>Hello, Friend!</h1>
        <p class="p2">
          Enter personnel details <br />
          and start Journey with us
        </p>

        <button type="button" class="btn btn2 btn-light"><a href="<c:url value="/SignUp"/>">SIGN UP</a></button>
      </div>
    </div>

    <!--|| JQuery, script file => home.js & bootstrap script file||-->
    <script src="<c:url value="/assets/js/bootstrap/JQuery.js"/> "></script>
    <script src="<c:url value="//assets/js/login.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap/bootstrap.min.js"/>"></script>
  </body>
</html>
