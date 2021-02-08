<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sweet About us</title>

    <!--|| Import Bootstrap ||-->
    <link rel="stylesheet" href="./assets/css/bootstrap/bootstrap.min.css" />

    <!--|| Import FontAwsome for icons ||-->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.2/css/all.css"
      integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu"
      crossorigin="anonymous"
    />

    <!--|| Import style file => home.css ||-->
    <link rel="stylesheet" href="./assets/css/about.css" />

    <!--|| Import OpenSans font style ||-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!-- First page -->
    <div class="header">
      <nav class="navbar navbar-expand-lg nav-header">
        <div class="container-fluid d-flex justify-content-between">
          <div class="lang-devise d-flex align-items-center">
            <div class="lang d-flex">
              <div class="logo">
                <img
                  src="./assets/images/icons/english.png"
                  alt="english"
                  width="60%"
                />
              </div>
              <select
                name="language"
                id="language"
                class="form-select language"
                aria-label="Language"
              >
                <option value="eng" selected>ENG</option>
                <option value="fr">FR</option>
                <option value="ar">AR</option>
              </select>
            </div>
            <h4 class="nav-deviser">|</h4>
            <div class="devise d-flex">
              <select
                name="devise"
                id="devise"
                class="form-select devise"
                aria-label="Devise"
              >
                <option value="mad" selected>MAD</option>
                <option value="usd">USD</option>
                <option value="eur">EUR</option>
              </select>
            </div>
          </div>
          <div
            class="user-info-header d-flex align-items-center flex-row-reverse"
          >
            <div class="wishlist mx-2"><a href="#">My wishlist</a></div>
            <h4 class="nav-deviser">|</h4>
            <div class="account mx-2"><a href="#">My account</a></div>
            <h4 class="nav-deviser">|</h4>
            <div class="sales mx-2"><a href="#">My sales</a></div>
          </div>
        </div>
      </nav>
    </div>
    <nav class="navbar navbar-expand-lg main-nav sticky-top py-2">
      <!-- Nav logo left -->
      <div class="logo">
        <a href="#" class="navbar-brand">
          <img
            src="./assets/images/icons/logo dark.jpg"
            alt="logo"
            width="133"
            height="79"
          />
        </a>
      </div>

      <!-- Nav items center -->
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbar-items"
        aria-controls="navbar-items"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-items collapse navbar-collapse" id="navbar-items">
        <ul class="navbar-nav menu-nav">
          <li class="nav-item">
            <a href="#" class="nav-link active" aria-current="page" >Home</a>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="categories"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Categories
            </a>
            <ul class="dropdown-menu" aria-labelledby="categories">
              <li><a class="dropdown-item" href="#">Refrigerator</a></li>
              <li><a class="dropdown-item" href="#">Freezer</a></li>
              <li><a class="dropdown-item" href="#">Oven</a></li>
              <li><a class="dropdown-item" href="#">Microwave</a></li>
              <li><a class="dropdown-item" href="#">Toaster Oven</a></li>
              <li><a class="dropdown-item" href="#">Toaster</a></li>
              <li><a class="dropdown-item" href="#">Dishwasher</a></li>
              <li><a class="dropdown-item" href="#">Washing Machine</a></li>
              <li><a class="dropdown-item" href="#">Vacuum</a></li>
              <li><a class="dropdown-item" href="#">Coffee Maker</a></li>
              <li><a class="dropdown-item" href="#">Blender</a></li>
              <li><a class="dropdown-item" href="#">Food Processor</a></li>
              <li><a class="dropdown-item" href="#">Instant Pot</a></li>
              <li><a class="dropdown-item" href="#">Cooker</a></li>
              <li><a class="dropdown-item" href="#">Mixer</a></li>
              <li><a class="dropdown-item" href="#">Water Heater</a></li>
              <li><a class="dropdown-item" href="#">Air conditioning</a></li>
              <li><a class="dropdown-item" href="#">Kitchen hood</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">Products</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">Sell</a>
          </li>
          <li class="nav-item">
            <a href="./contact_us2.html" class="nav-link">Contact</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">About us</a>
          </li>
        </ul>
      </div>

      <!-- Nav right items -->
      <div class="nav-right-items">
        <!-- <div class="search">
                    <from class="search-box" action='' method=''>
                        <input type="text" placeholder="search ..." class="d-none" id='input-search'/>
                        <button type='submit' class="btn btn-link search-icon" id='search-i'><i class="fas fa-search"></i></button>
                        <button type="button" class='btn btn-link times-icon d-none' id='close-i'><i class="fas fa-times"></i></span>
                    </form>
                </div>
                <h4 class="nav-deviser">|</h4>
                <button class='btn btn-link wishlist-icon'><i class="fas fa-heart"></i></button>
                <h4 class="nav-deviser">|</h4> -->

        <ul class="navbar-nav">
          <li class="nav-item dropdown search-button">
            <button
              type="button"
              class="btn btn-link search-icon dropdown-toggle"
              id="search-icon"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              <i class="fas fa-search"></i>
            </button>
            <ul class="dropdown-menu search-bar" aria-labelledby="search-icon">
              <li class="dropdown-item">
                <form action="" method="">
                  <input
                    type="text"
                    placeholder="search ..."
                    id="input-search"
                    class="searchBar"
                  />
                  <button type="submit" class="btn btn-link times-icon">
                    <i class="fas fa-search"></i>
                  </button>
                </form>
              </li>
            </ul>
          </li>
          <h4 class="nav-deviser">|</h4>
          <li class="nav-item wishlist-button">
            <a href="#" class="btn btn-link wishlist-icon"
              ><i class="fas fa-heart"></i
            ></a>
          </li>
          <h4 class="nav-deviser">|</h4>
          <li class="nav-item login-button dropdown">
            <a              
              class="btn btn-link dropdown-toggle wishlist-icon"
              id="login-dropdown"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              <i class="fas fa-user"></i>
            </a>
            <ul
              class="dropdown-menu login-signup"
              aria-labelledby="login-dropdown"
            >
              <li><a class="dropdown-item" href="./htmlfilebyme.html">Login</a></li>
              <li><a class="dropdown-item" href="./sign_up page.html">Sign up</a></li>
            </ul>
          </li>
          <h4 class="nav-deviser">|</h4>

          <li class="nav-item shopping-bag-button">
            <div class="my-cart">My Cart</div>
            <a
              href="#"
              class="btn btn-link wishlist-icon"
              id="cart"
              role="button"
              data-bs-toggle="dropdown"
              aria-expanded="false"
              ><i class="fas fa-shopping-bag"></i
            ></a>
            <div class="cart-counter" id="cart-counter">0</div>
            <ul
              class="dropdown-menu cart-menu"
              aria-labelledby="cart"
              id="cart-menu"
            >
              <div class="cart">
                <div class="cart-header">
                  <div class="numberItems"><span>0</span> ITEMS</div>
                  <div class="title">VIEW CART</div>
                </div>
                <hr class="cart-line" />
                <div class="cart-body">
                  <ul class="list-items" id="list-times">
                    <!-- Carr items list  -->
                  </ul>
                </div>

                <div class="cart-footer">
                  <hr class="cart-line" />
                  <div class="total">
                    Total: <span class="price">0.00</span> DH
                  </div>
                  <hr class="cart-line" />
                  <button type="button" class="btn continue-shopping">
                    continue shopping
                  </button>
                  <button type="button" class="btn checkout d-none">
                    checkout
                  </button>
                </div>
              </div>
            </ul>
          </li>
        </ul>
      </div>
    </nav>

    <!-- Body -->
    <!-- msg : Replace the following line with your code -->
        <div style="height:500px;"></div>
<div>
<h1 class="about_us">About us </h1>
<br/>
<br/>
<br/>
<div class="vision">
     <br>
     <figure> 
        <img src="./assets/images/about_us/vision.png" alt="photo de notre vision" class="picture_right"/>
      </figure>
    <br>
    <br>
    <h4 class="t1">Our Vision </h4>
    <br/>
    <div paragraph-right>
        <p class="visionp">
          It is what the entrepreneur aspires to in the long run. In this sense, it aims to inspire, motivate and be sustainable and must be used to build competitive advantages.<br/><br/>
          It also promotes innovation and creativity.
          The entrepreneur seeks to 'create a world to which individuals want to belong' and this world is described and explained in their vision.<br/><br/>
          In this sense, it structures the company, its organization and its production. It gives meaning to employees, partners and investors.

        </p>
    </div>
</div>



<div class="approch">
  <br/>
  <figure> 
    <img src="./assets/images/about_us/approch.png" alt="photo de notre vision" class="picture_left" />
  </figure>
  <br/>
  <br/>
  <h4 class="t1">Our Approch </h4>
  <br/>
  <div paragraph-left>
      <p class="approchp">
        The three have different individual goals and strategies. Indeed, with regard to the providers of capital, their purely financial logic, their goals is to guarantee their gains and if possible to increase them. <br/><br/>
         As far as managers are concerned, their logic is maximizing the performance of the company, assessed by the economic return on capital, their goal is to guarantee their place and expand their power.<br/><br/>
         In this sense, it structures the company, its organization and its production. It gives meaning to employees, partners and investors.
      </p>
  </div>
</div>

<div class="vision">
  <br/>
   <figure> 
    <img src="./assets/images/about_us/process.png" alt="photo de notre vision" class="picture_right"/>
  </figure>
  <br/>
  <br/>
  <h4 class="t1">Our Process </h4>
  <br/>

  <div>
      <p class="visionp">
        
        The good optimization of business processes is therefore a fundamental element for the good growth of your company. It is therefore important to ensure and work on the management and continuous improvement of its business processes.

        The optimization of business processes makes it possible to ensure the proper organization of the various tasks that make up these business processes, by ensuring that they are carried out with the best possible efficiency.
      </p>

<div>
</div>
<br/>
<br/>
<br/>


    <!-- Footer -->

    <footer class="py-3">
      <div class="container">
        <div class="row">
          <div class="col logo">
            <img
              src="./assets/images/icons/logo light.png"
              alt="logo"
              width="133"
              height="79"
            />
          </div>
          <div class="col sub">
            <div class="title">SUBSCRIBE TO OUR NEWSLETTER</div>
            <div class="sub-title">
              Get all the latest information on Events, Sales and Offers.
            </div>
          </div>
          <div class="col">
            <form action="" method="" class="sub-btn">
              <input type="text" placeholder="Email address" class="px-2" />
              <button type="button" class="btn">SUBSCRIBE</button>
            </form>
          </div>
        </div>
      </div>
      <hr class="footer-devider my-3" />
      <div class="container"></div>
      <div class="container footer-content">
        <div class="row company">
          <div class="col company">SWEET HOME</div>
          <div class="col body">
            <p>D-415, Kamla Vihar, Mahavir Nagar, Kandivali(WEST).</p>
          </div>
          <div class="col footer">
            <h5>© All rights reserved 2020</h5>
          </div>
        </div>
        <div class="row follow-us">
          <div class="col title">Follow us</div>
          <div class="col body">
            <div class="linkedIn item">
              <div class="logo">
                <i class="fab fa-linkedin-in"></i>
              </div>
              <div class="name">LinkedIn</div>
            </div>
            <div class="linkedIn item">
              <div class="logo">
                <i class="fab fa-facebook"></i>
              </div>
              <div class="name">Facebook</div>
            </div>
            <div class="linkedIn item">
              <div class="logo">
                <i class="fab fa-twitter"></i>
              </div>
              <div class="name">Tweeter</div>
            </div>
            <div class="linkedIn item">
              <div class="logo">
                <i class="fab fa-instagram"></i>
              </div>
              <div class="name">Instagram</div>
            </div>
          </div>
        </div>
        <div class="row tags">
          <div class="col title">Tags</div>
          <div class="col tags">
            <div class="tag">sale</div>
            <div class="tag">Household Appliances</div>
            <div class="tag">brand</div>
            <div class="tag">Kitchen</div>
            <div class="tag">top</div>
            <div class="tag">new</div>
            <div class="tag">accessories</div>
            <div class="tag">shop</div>
          </div>
        </div>
        <div class="row pages">
          <div class="col title">Pages</div>
          <ul class="pages-list">
            <li class="page-item"><a href="#">Home</a></li>
            <li class="page-item"><a href="#">Categories</a></li>
            <li class="page-item"><a href="#">Products</a></li>
            <li class="page-item">
              <a href="./contact_us2.html">Contact Us</a>
            </li>
            <li class="page-item"><a href="#">About us</a></li>
          </ul>
        </div>
      </div>
    </footer>



    <!--|| JQuery, script file => home.js & bootstrap script file||-->
    <script src="./assets/js/bootstrap/JQuery.js"></script>
    <script src="./assets/js/about.js"></script>
    <script src="./assets/js/bootstrap/bootstrap.min.js"></script>
  </body>
</html>
