<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sweet About us</title>

    <!--|| Import Bootstrap ||-->
    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap/bootstrap.min.css"/>" />
    
    <link rel="stylesheet" href="<c:url value="/assets/css/navbar.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/footer.css"/>" />

    <!--|| Import FontAwsome for icons ||-->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.2/css/all.css"
      integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu"
      crossorigin="anonymous"
    />

    <!--|| Import style file => home.css ||-->
    <link rel="stylesheet" href="<c:url value="/assets/css/about.css"/>" />

    <!--|| Import OpenSans font style ||-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
	
	<%-- NavBar --%>
	
	<c:import url="navBar.jsp"></c:import>
	
	
<!-- Start From here -->
<div class="container about">
  <div class="title mb-5">
    <h1 class="abouts_us my-2">About us</h1>
  </div>
  <div class="row vision">
    <div class="col">
      <figure> 
        <img src="<c:url value="/assets/images/about_us/vision.png"/>" alt="photo de notre vision" class="picture_right"/>
      </figure>
    </div>
    <div class="col">
      <div class="title t1"><h3>Our Vision</h3></div>
      <div class="paragraph-right">
        <p class="visionp">
          It is what the entrepreneur aspires to in the long run. In this sense, it aims to inspire, motivate and be sustainable and must be used to build competitive advantages.<br/><br/>
          It also promotes innovation and creativity.
          The entrepreneur seeks to 'create a world to which individuals want to belong' and this world is described and explained in their vision.<br/><br/>
          In this sense, it structures the company, its organization and its production. It gives meaning to employees, partners and investors.
        </p>
      </div>
    </div>
  </div>
  <div class="row approch reverse">
    <div class="col">
      <figure> 
        <img src="<c:url value="/assets/images/about_us/approch.png"/>" alt="photo de notre vision" class="picture_left" />
      </figure>
    </div>
    <div class="col">
      <div class="title t1"><h3>Our Process</h3></div>
      <div class="paragraph-left">
        <p class="approchp">
          The three have different individual goals and strategies. Indeed, with regard to the providers of capital, their purely financial logic, their goals is to guarantee their gains and if possible to increase them. <br/><br/>
           As far as managers are concerned, their logic is maximizing the performance of the company, assessed by the economic return on capital, their goal is to guarantee their place and expand their power.<br/><br/>
           In this sense, it structures the company, its organization and its production. It gives meaning to employees, partners and investors.
        </p>
      </div>
    </div>
  </div>
  <div class="row vision">
    <div class="col">
      <figure> 
        <img src="<c:url value="/assets/images/about_us/process.png"/>" alt="photo de notre vision" class="picture_right"/>
      </figure>
    </div>
    <div class="col">
      <div class="title t1"><h3>Our Process</h3></div>
      <div class="paragraph-right">
        <p class="visionp">
        
          The good optimization of business processes is therefore a fundamental element for the good growth of your company. It is therefore important to ensure and work on the management and continuous improvement of its business processes.
  
          The optimization of business processes makes it possible to ensure the proper organization of the various tasks that make up these business processes, by ensuring that they are carried out with the best possible efficiency.
        </p>
      </div>
    </div>
  </div>
</div>




    <!-- Footer -->

    <c:import url="footer.jsp"></c:import>



    <!--|| JQuery, script file => home.js & bootstrap script file||-->
    <script src="<c:url value="/assets/js/bootstrap/JQuery.js"/>"></script>
    <script src="<c:url value="/assets/js/about.js"/>"></script>
    <script src="<c:url value="/assets/js/navbar.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap/bootstrap.min.js"/>"></script>
  </body>
</html>
