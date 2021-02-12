<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<c:if test="${empty requestScope.FORM }" var="test"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/css/contact_us.css"/>">
    <title>contact us</title>

     <!--|| Import OpenSans font style ||-->
     <link rel="preconnect" href="https://fonts.gstatic.com" />
     <link
       href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap"
       rel="stylesheet"
     />
</head>
<body>
    <div class="container-fluid main">
        <div class="row">
            <div class="col-9 leftside">
                <div class="logo"><a href="<c:url value="/Home"/>"><img src="<c:url value="/assets/images/icons/logo dark.jpg"/>" alt=""></a></div>
                
                <div class="info">
                    <div class="infoB"> 
                    <div class="decoraInfo"></div>
                    <h2>Info</h2>
                    <ul>
                        <li><i class="fas fa-envelope"></i>decorationhouse@gmail.com</li>
                        <li><i class="fas fa-phone-alt"></i>+212 673820912</li>
                        <li><i class="fas fa-home"></i> Mohammadia maroc</li>
                        <li><i class="fas fa-stopwatch"></i> 09:00 - 18:00</li>
                    </ul>
                    <div class="socieldiv">
                        <a class="sociel" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="sociel" href="#" ><i class="fab fa-facebook-f"></i></a>
                        <a class="sociel" href="#"><i class="fab fa-google-plus-g"></i></a>
                    </div></div>
                   
                </div>
                
                <div class="content">
                    <div class="title"><h1>contact us</h1></div>
                    <div class="text">Feel free to contact us any time. We will get back to you as soon as we can!</div>
                    <div class="form">
                        <form action="<c:url value="/ContactUs"/>" method="post" class="contactform">
                            <div class="form-floating mb-3">
                                <input name="name" type="text" class="form-control" id="contactname" placeholder="Nam">
                                <label for="contactname">Name</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input name="email" type="email" class="form-control" id="contactemail" placeholder="name@example.com">
                                <label for="contactemail">Email address</label>
                            </div>
                            <div class="form-floating">
                                <textarea name="text" class="form-control" placeholder="Leave a comment here " style="max-height: 200px;min-height: 100px;" id="contactmessage"></textarea>
                                <label for="contactmessage">Message</label>
                            </div>
                            
                            <button type="submit" class="btn btn-dark send mt-4 p-2">send</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col rightside"></div>
        </div>
    </div>








   <script src="<c:url value="/assets/js/bootstrap/bootstrap.min.js"/>"></script>
   
</body>
</html>