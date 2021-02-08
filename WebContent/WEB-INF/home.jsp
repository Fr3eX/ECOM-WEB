<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sweet Home - Home</title>

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
    <link rel="stylesheet" href="./assets/css/home.css" />

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
        <a href="./home.html" class="navbar-brand">
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
            <a href="./home.html" class="nav-link active" aria-current="page">Home</a>
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
            <a href="./product.html" class="nav-link">Products</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">Sell</a>
          </li>
          <li class="nav-item">
            <a href="./contact_us2.html" class="nav-link">Contact</a>
          </li>
          <li class="nav-item">
            <a href="./navbar.html" class="nav-link">About us</a>
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
                    <!-- Prototype -->
                    <!-- <li class="cart-product">
                      <div class="product idProduct4">
                        <div class="row">
                          <div class="col">
                            <div class="product-title">
                              Severin Kaffeevollautomat KV 8090
                            </div>
                            <div class="product-price">
                              <div class="changeQuntite">                             
                                <span class="quantity m-1">1</span>
                                x <span class="price m-2">10000.00</span>                                
                              </div>
                              <div class="quantitybtn my-2">
                                <div class="add btn btn-outline-primary mx-2">+</div>
                                <div class="remove btn btn-outline-secondary mx-2">-</div>
                              </div>
                              
                            </div>
                          </div>
                          <div class="col">
                            <div class="product-image">
                              <img
                                src="./assets/images/home/categories-main/Severin Kaffeevollautomat KV 8090.jpg"
                                width="80%"
                                alt=""
                              />
                              <button type="button" class="btn-close btn-outline-secondary"></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li> -->
                    <!-- <li>item test 2</li> -->
                    <!-- <li class="cart-product">
                      <div class="product idProduct1">
                        <div class="row">
                          <div class="col">
                            <div class="product-title">
                              Severin Kaffeevollautomat KV 8090
                            </div>
                            <div class="product-price">
                              <div class="changeQuntite">                             
                                <span class="quantity m-1">1</span>
                                x <span class="price m-2">10000.00</span>                                
                              </div>
                              <div class="quantitybtn my-2">
                                <div class="add btn btn-outline-primary mx-2">+</div>
                                <div class="remove btn btn-outline-secondary mx-2">-</div>
                              </div>
                              
                            </div>
                          </div>
                          <div class="col">
                            <div class="product-image">
                              <img
                                src="./assets/images/home/categories-main/Severin Kaffeevollautomat KV 8090.jpg"
                                width="80%"
                                alt=""
                              />
                              <button type="button" class="btn-close btn-outline-secondary"></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li> -->
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

    <div class="home" id="home">
      <div class="filter-white"></div>
      <div class="title">FIND HEIGHT QUALITY FOR HOUSEHOLD APPLIANCES</div>
      <button type="button" class="btn shopNow">Shop Now</button>
    </div>

    <!-- Second page -->
    <div class="container-fluid deviser">
      <div class="container">
        <div class="page-deviser">
          <div class="free-shipping item">
            <div class="icon">
              <img
                src="./assets/images/icons/shipping.png"
                alt="free shipping"
                width="78"
                height="78"
              />
            </div>
            <div class="content">
              <div class="title">Free Shipping & Return</div>
              <div class="description">
                Free shipping on orders over 2 000.00 DH
              </div>
            </div>
          </div>
          <div class="customer-support item">
            <div class="icon">
              <img
                src="./assets/images/icons/headset.png"
                alt="support icon"
                width="54"
                height="54"
              />
            </div>
            <div class="content">
              <div class="title">Customer Support 24/7</div>
              <div class="description">Instant access to perfect support</div>
            </div>
          </div>
          <div class="secure-payement item">
            <div class="icon">
              <img
                src="./assets/images/icons/secure wallet.png"
                alt="secure wallet icon"
                width="49"
                height="49"
              />
            </div>
            <div class="content">
              <div class="title">100% Secure Payment</div>
              <div class="description">We ensure secure payment!</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Categories carousel -->
    <div class="container categories mt-5 px-5" id="categories">
      <div class="row">
        <div class="col">
          <div class="card my-5 odd">
            <div class="image">
              <img
                src="./assets/images/home/categories/Accessory Kit for Café C2S900P3MD1 - Brushed Bronze.jpg"
                class="card-img-top"
                alt="stove"
              />
            </div>
            <div class="cat-name odd">oven</div>
          </div>
        </div>
        <div class="col">
          <div class="card my-5 even">
            <div class="image">
              <img
                src="./assets/images/home/categories/Accessory Kit for Café Microwaves - Brushed Bronze.jpg"
                class="card-img-top"
                alt="stove"
              />
            </div>
            <div class="cat-name even">Microwave</div>
          </div>
        </div>
        <div class="col">
          <div class="card my-5 odd">
            <div class="image">
              <img
                src="./assets/images/home/categories/ZLINE Kitchen and Bath ZLINE 36 in_  Designer Series Wall Mount Range Hood (655-BCXXX-36)-655-BCXXX-36 - The Home Depot.jpg"
                class="card-img-top"
                alt="stove"
              />
            </div>
            <div class="cat-name odd">Hot Aspirant</div>
          </div>
        </div>
        <div class="col">
          <div class="card my-5 even">
            <div class="image">
              <img
                src="./assets/images/home/categories/Cafe Refrigerator Handle Kit in Brushed Copper-CXQB4H4PNCU - The Home Depot.jpg"
                class="card-img-top"
                alt="stove"
              />
            </div>
            <div class="cat-name even">Refrigerator</div>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="first-category my-5 py-5">
        <div class="backgroundImage">
          <div class="image-back">
            <img
              src="./assets/images/home/categories-main/Nespresso Creatista Plus Espresso Machine by Breville.jpg"
              alt="Nesspresso"
              width="550"
              height="550"
            />
          </div>
          <div class="black-filter"></div>
          <div class="title">ESPRESSO</div>
          <div class="image-front">
            <img
              src="./assets/images/home/categories-main/Nespresso Creatista Plus Espresso Machine by Breville.jpg"
              alt="Nesspresso"
              width="480"
              height="480"
            />
          </div>
        </div>
        <div class="productItems">
          <!-- First product -->
          <div class="card m-1">
            <div class="card-header py-0">
              <label for="cofeeMaker1WL">Add to Wishlist</label>
              <button id="cofeeMaker1WL" type="button" class="btn btn-link">
                <i class="far fa-heart"></i>
              </button>
            </div>
            <div class="card-body py-0 " id="idProduct4" category = 'Coffe maker'>
              <div class="title" >Severin Kaffeevollautomat KV 8090</div>
              <div class="productImage">
                <img
                  src="./assets/images/home/categories-main/Severin Kaffeevollautomat KV 8090.jpg"
                  alt="cofee maker"
                  width="204"
                  height="204"
                />
                <button type="button" class="btn">
                  <div class="productColor"></div>
                </button>
              </div>
              <div class="productPrice"><span>10000.00</span> DH</div>
            </div>
            <div class="card-footer py-0">
              <div>      
                <button type="button" class="btn shadow-sm rounded bg-white detail" data-bs-toggle="modal" data-bs-target="#productDetail">
                  <Span >Details</Span><i class="far fa-eye mx-1"></i>
                </button>
              </div>
              <div>
                <label for="cofeeMaker1C">Add to Cart</label>
                <button id="cofeeMaker1C" type="button" class="btn btn-link add-to-cart">
                  <i class="fas fa-cart-plus"></i>
                </button>
              </div>
            </div>
          </div>
          <!-- Second product -->
          <div class="card m-1">
            <div class="card-header py-0">
              <label for="cofeeMaker2WL">Add to Wishlist</label>
              <button id="cofeeMaker2WL" type="button" class="btn btn-link">
                <i class="far fa-heart"></i>
              </button>
            </div>
            <div class="card-body py-0" id="idProduct3" category = 'Coffe maker'>
              <div class="title" >Best Espresso Machines of 2020</div>
              <div class="productImage">
                <img
                  src="./assets/images/home/categories-main/Delonghi EC680R DEDICA 15-Bar Pump Espresso Machine, Red.png"
                  alt="cofee maker"
                  width="170"
                  height="220"
                  id="red-cofee"
                  class=""
                />
                <img
                  src="./assets/images/home/categories-main/Best Espresso Machines of 2020_ Breville, De'Longhi, and More (1).jpg"
                  alt="cofee maker"
                  width="170"
                  height="220"
                  id="white-cofee"
                  class="d-none"
                />
                <div class="colors d-flex">
                  <button type="button" class="btn">
                    <div class="productColor selectedColor" id="red"></div>
                  </button>
                  <button type="button" class="btn">
                    <div class="productColor" id="white"></div>
                  </button>
                </div>
              </div>
              <div class="productPrice"><span>9000.00</span> DH</div>
            </div>
            <div class="card-footer py-0">
              <div>      
                <button type="button" class="btn rounded shadow-sm bg-white detail" data-bs-toggle="modal" data-bs-target="#productDetail">
                  <Span class="mr-2">Details</Span><i class="far fa-eye mx-1"></i>
                </button>
              </div>
              <div>
                <label for="cofeeMaker2C">Add to Cart</label>
                <button id="cofeeMaker2C" type="button" class="btn btn-link add-to-cart">
                  <i class="fas fa-cart-plus"></i>
                </button>
            </div>
            
            </div>
          </div>
        </div>
      </div>
      <!-- ------------------ -->
      <div class="second-category my-5 py-5">
        <div class="backgroundImage">
          <div class="image-back">
            <img
              src="./assets/images/home/categories-main/20 L 800W Countertop Microwave.jpg"
              alt="Nesspresso"
              width="550"
              height="550"
            />
          </div>
          <div class="black-filter"></div>
          <div class="title">MICROWAVE</div>
          <div class="image-front">
            <img
              src="./assets/images/home/categories-main/20 L 800W Countertop Microwave.jpg"
              alt="Nesspresso"
              width="480"
              height="480"
            />
          </div>
          <div class="grey-filter"></div>
        </div>
        <div class="productItems d-flex">
          <!-- First product -->
          <div class="card m-1">
            <div class="card-header py-0">
              <label for="microwave1WL">Add to Wishlist</label>
              <button id="microwave1WL" type="button" class="btn btn-link">
                <i class="far fa-heart"></i>
              </button>
            </div>
            <div class="card-body py-0" id='idProduct1' category = 'microwave'>
              <div class="title" >Russell Hobbs RHFM2363 23L Microwave</div>
              <div class="productImage">
                <img
                  src="./assets/images/home/categories-main/Tesco non food _ Formerly Tesco Direct _ Tesco.jpg"
                  alt="cofee maker"
                  width="204"
                  height="204"
                />
                <button type="button" class="btn">
                  <div class="productColor"></div>
                </button>
              </div>
              <div class="productPrice"><span>2000.00</span> DH</div>
            </div>
            <div class="card-footer py-0">
              <div>      
                <button type="button" class="btn shadow-sm rounded bg-white detail" data-bs-toggle="modal" data-bs-target="#productDetail">
                  <Span class="mr-2">Details</Span><i class="far fa-eye mx-1"></i>
                </button>
              </div>
              <div>
                <label for="microwave1C">Add to Cart</label>
                <button id="microwave1C" type="button" class="btn btn-link add-to-cart">
                  <i class="fas fa-cart-plus"></i>
                </button>
              </div>
            </div>
          </div>
          <!-- Second product -->
          <div class="card m-1">
            <div class="card-header py-0">
              <label for="microwave2WL">Add to Wishlist</label>
              <button id="microwave2WL" type="button" class="btn btn-link">
                <i class="far fa-heart"></i>
              </button>
            </div>
            <div class="card-body py-0" id='idProduct2' category = 'microwave'>
              <div class="title">
                Tesco non food Formerly Tesco Direct Tesco
              </div>
              <div class="productImage">
                <img
                  src="./assets/images/home/categories-main/Russell Hobbs RHFM2363 23L Microwave.jpg"
                  alt="cofee maker"
                  width="210"
                  height="220"
                  id="red-cofee"
                  class=""
                />

                <div class="colors d-flex">
                  <button type="button" class="btn">
                    <div class="productColor selectedColor"></div>
                  </button>
                </div>
              </div>
              <div class="productPrice"><span>2000.00</span>DH</div>
            </div>
            
            <div class="card-footer py-0">
              <div>      
                <button type="button" class="btn shadow-sm rounded bg-white detail" data-bs-toggle="modal" data-bs-target="#productDetail">
                  <Span class="mr-3">Details</Span><i class="far fa-eye mx-1"></i>
                </button>
              </div>
              <div>
                <label for="microwave2C">Add to Cart</label>
                <button id="microwave2C" type="button" class="btn btn-link add-to-cart">
                  <i class="fas fa-cart-plus"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Sponsors -->
    <div class="container sponsors-box my-5 p-1">
      <div class="title">sponsors</div>
      <div class="row">
        <div class="col">
          <img
            src="./assets/images/home/sponsors/logo01.png"
            alt="logo01"
            width="70%"
            height="auto"
          />
        </div>
        <div class="col">
          <img
            src="./assets/images/home/sponsors/logo02.png"
            alt="logo02"
            width="70%"
            height="auto"
          />
        </div>
        <div class="col">
          <img
            src="./assets/images/home/sponsors/logo03.png"
            alt="logo03"
            width="70%"
            height="auto"
          />
        </div>
        <div class="col">
          <img
            src="./assets/images/home/sponsors/logo05.png"
            alt="logo05"
            width="70%"
            height="auto"
          />
        </div>
        <div class="col">
          <img
            src="./assets/images/home/sponsors/logo06.png"
            alt="logo06"
            width="65%"
            height="auto"
          />
        </div>
      </div>
    </div>

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





    <!-- Modal for Product detail -->

    <!-- Modal -->
    <div class="modal fade" id="productDetail" tabindex="-1" aria-labelledby="DetaitProduct" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title" id="ProductDetailTitle">Product detail</h4>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body p-5">
            <div class="main-section">
              <div class="row">
                <!-- First col for image gallery  -->
                <div class="col-md-6 mb-4 mb-md-0">
                  <div class="row product-gallery mx-1">
                    <div class="col-12 mb-0 large-image">
                        <!-- Large image for the gallery -->
                        <img src="" alt="Main inmage">
                    </div>
                                     
                  </div>                 
                </div>
                <!-- Second col for product info detail -->
                <div class="col-md-6">
                  <div class="title-cat">
                    <h4 class="title">
                      <!-- title -->
                      
                    </h4>
                    <p class="mb-2 text-muted text-uppercase small">
                      <!-- Category -->
                      test
                    </p>                          
                  </div>
                  <!-- rating -->
                  <div class="rating-box">
                    <ul class="rating">
                      <li>
                        <i class="fas fa-star fa-sm text-primary"></i>
                      </li>
                      <li>
                        <i class="fas fa-star fa-sm text-primary"></i>
                      </li>
                      <li>
                        <i class="fas fa-star fa-sm text-primary"></i>
                      </li>
                      <li>
                        <i class="fas fa-star fa-sm text-primary"></i>
                      </li>
                      <li>
                        <i class="far fa-star fa-sm text-primary"></i>
                      </li>
                    </ul>
                  </div>                
                  <div class="description">
                    <!-- Description -->
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum, odit? Quos voluptates enim ducimus delectus sapiente animi aut, fugiat veritatis!
                  </div>
                  <div class="product-info">                    
                      <table class="table table-sm table-borderless mb-0">
                        <tbody>
                          <tr>
                            <th class="pl-0 w-25" scope="row"><strong>Prix</strong></th>
                            <td class="price"> 
                              <strong>
                                <!-- Price -->
                                <!-- 12000.00 -->
                              </strong> DH
                            </td>
                          </tr>
                          <tr>
                            <th class="pl-0 w-25" scope="row"><strong>Model</strong></th>
                            <td class="mondel-name"> 
                              <!-- Model name -->
                              2020(ex)
                            </td>
                          </tr>
                          <tr>
                            <th class="pl-0 w-25" scope="row"><strong>Color</strong></th>
                            <td class='Color'>
                              <!-- Color prodcut -->
                              (not yet ready)
                            </td>
                          </tr>                          
                        </tbody>
                      </table>
                  </div>
                  <hr>
                  <!-- Quantity selector -->
                  <div class="input-group mb-3 quantity-selector">
                    <button class="btn btn-outline-secondary" type="button" id="button-removeQuantity">-</button>
                    <input type="number" class="form-control quantity-input text-center" value="1" min="1" disabled>
                    <button class="btn btn-outline-secondary" type="button" id="button-addQuantity">+</button>
                  </div>
                  <!-- buy and add to cart buttons -->
                  <div class="buy-now-detail">
                    <button type="button" class="btn btn-primary btn-md mr-2 mb-2">Buy now</button>
                    <button type="button" class="btn btn-light btn-md mr-1 mb-2 addToCart">
                      <i class="fas fa-shopping-cart pr-2"></i>
                      Add to cart
                    </button>                             
                  </div>
                </div>
              </div>
            </div>
          </div>          
        </div>
      </div>
    </div>

    <!--|| JQuery, script file => home.js & bootstrap script file||-->
    <script src="./assets/js/bootstrap/JQuery.js"></script>
    <script src="./assets/js/home.js"></script>
    <script src="./assets/js/bootstrap/bootstrap.min.js"></script>
  </body>
</html>
