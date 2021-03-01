<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<c:if test="${!empty requestScope.FORM.errors }" var="error"/>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>SignUp</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/signUp.css"/>" />

    <!--|| Import Bootstrap ||-->
    <link rel="stylesheet" href="<c:url value="assets/css/bootstrap/bootstrap.min.css"/> " />
    <!--|| Import FontAwsome for icons ||-->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.2/css/all.css"
      integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu"
      crossorigin="anonymous"
    />
  </head>
<%-- 
  <c:choose>
    <c:when test="${error == \"false\" && !empty requestScope.USER }">
    	<body onload="swal({title:'Status',text:'${requestScope.FORM.results}', icon:'success', showCancelButton:true, confirmButtonColor:'#3085d6', cancelButtonColor:'#d33',confirmButtonText:'<a href=\"<c:url value="/SignIn"/>\">Login</a>'})">
    </c:when>
    
    <c:otherwise>
   		<body onload="swal({title:'Status',text:'${requestScope.FORM.results}', icon:'success', showCancelButton:true, confirmButtonColor:'#3085d6', cancelButtonColor:'#d33',confirmButtonText:'<a href=''>Login</a>'})">
    </c:otherwise>
    
	</c:choose>
  --%>
  <body>
	  <div class="logo"><a href="<c:url value="/Home"/>"><img src="<c:url value="/assets/images/icons/logo light.png"/>" alt=""></a></div>
    <div class="container">
      <div class="welcome">
        <h1>Welcome Back!</h1>
        <p class="p2">
          To keep connected with us please login <br />
          with your personal info
        </p>
	
        <button type="button" class="btn btn2 btn-light text-dark">
          <a href="<c:url value="/SignIn"/> ">SIGN IN</a>
        </button>
      </div>
      <div class="sign_up">
        <h2 class="title1">Create account</h2>
        <ul>
          <li><i class="fab fa-facebook-f"></i></li>
          <li><i class="fab fa-google-plus-g"></i></li>
        </ul>
        <p class="p1">or use your email for registration</p>
        <form action="<c:url value="/SignUp"/>" method="post">
          
          <div class="inputwithicon0">
            <input
              type="text"
              name="firstName"
              class="inp firstName"
              placeholder="First Name"
             
              <c:if test="${error == \"true\"}">
             	
             	 value="<c:out value="${requestScope.USER.nom}" /> "
             
              </c:if>
             
             />
            <i class="fas fa-user"></i>
           
           	<c:if test="${error == \"true\"}">
		 
		  		<div class="FNNotValide">
		  			<c:out value="${requestScope.FORM.errors.firstName}"/>
		  		</div>
         
          	</c:if>
          
          </div>
          
          <div class="inputwithicon1">
            <input
              type="text"
              name="lastName"
              class="inp lastName"
              placeholder="Last Name"
               <c:if test="${error == \"true\"}">
             	
             	 value="<c:out value="${requestScope.USER.prenom}" /> "
             
              </c:if>
            />
            <i class="fas fa-user"></i>
            <c:if test="${error == \"true\"}">
		 
		  		<div class="LNNotValide">
		  			<c:out value="${requestScope.FORM.errors.lastName}"/>
		  		</div>
         
          	</c:if>
          </div>
          <div class="inputwithicon2">
            <input 
            type="email" 
            name="mail" 
            class="inp email" 
            placeholder="Email" 
              <c:if test="${error == \"true\"}">
             	
             	 value="<c:out value="${requestScope.USER.email}" /> "
             
              </c:if>
            />
            <i class="fas fa-envelope" aria-hiden="true"></i>
            
           	<c:if test="${error == \"true\"}">
		 
		  		<div class="emailNotValide">
		  			<c:out value="${requestScope.FORM.errors.mail}"/>
		  		</div>
         
          	</c:if>
          </div>

          <div class="inputwithicon3">
            <input
              type="password"
              name="pass"
              class="inp password"
              placeholder="Password"
                <c:if test="${error == \"true\"}">
             	
             	 value="<c:out value="${requestScope.USER.password}" /> "
             
              </c:if>
            />
            <i class="fas fa-unlock-alt"></i>
            
           <c:if test="${error == \"true\"}">
		 
		  		<div class="passNotValide">
		  			<c:out value="${requestScope.FORM.errors.pass}"/>
		  		</div>
         
          	</c:if>
          	
          </div>
          <div class="inputwithicon4">
            <input
              type="password"
              name="confPass"
              class="inp confPass"
              placeholder="Confirm password"
            />
            <i class="fas fa-unlock-alt"></i>
            
            <c:if test="${error == \"true\"}">
		 
		  		<div class="confPassNotValid">
		  			<c:out value="${requestScope.FORM.errors.confPass}"/>
		  		</div>
         
          	</c:if>
          </div>
          <button type="submit" class="btn btn1 signUp d-none"></button>
        </form>
        <button type="button" class="btn btn1 bg-dark text-light">
          SIGN UP
        </button>
      </div>
    </div>
	
    <!--|| JQuery, script file => home.js & bootstrap script file||-->
    <script src="<c:url value="/assets/js/bootstrap/JQuery.js"/>"></script>
    <script src="<c:url value="/assets/js/signup.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap/bootstrap.min.js"/>"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </body>
</html>
