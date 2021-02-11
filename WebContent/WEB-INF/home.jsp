<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sweet Home - Home</title>

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
    <link rel="stylesheet" href="<c:url value="/assets/css/home.css"/>" />

    <!--|| Import OpenSans font style ||-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    
    <c:import url="navBar.jsp"></c:import>
		
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
                src="<c:url value="/assets/images/icons/shipping.png"/>"
                alt="free shipping"
                width="68"
                height="68"
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
                src="<c:url value="/assets/images/icons/headset.png"/>"
                alt="support icon"
                width="44"
                height="44"
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
                src="<c:url value="/assets/images/icons/secure wallet.png"/>"
                alt="secure wallet icon"
                width="39"
                height="39"
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
                src="<c:url value="/assets/images/home/categories/Accessory Kit for CafÃ© C2S900P3MD1 - Brushed Bronze.jpg"/>"
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
                src="<c:url value="/assets/images/home/categories/Accessory Kit for CafÃ© Microwaves - Brushed Bronze.jpg"/>"
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
                src="<c:url value="/assets/images/home/categories/ZLINE Kitchen and Bath ZLINE 36 in_  Designer Series Wall Mount Range Hood (655-BCXXX-36)-655-BCXXX-36 - The Home Depot.jpg"/>"
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
                src="<c:url value="/assets/images/home/categories/Cafe Refrigerator Handle Kit in Brushed Copper-CXQB4H4PNCU - The Home Depot.jpg"/>"
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
              src="<c:url value="/assets/images/home/categories-main/Nespresso Creatista Plus Espresso Machine by Breville.jpg"/>"
              alt="Nesspresso"
              width="550"
              height="550"
            />
          </div>
          <div class="black-filter"></div>
          <div class="title">ESPRESSO</div>
          <div class="image-front">
            <img
              src="<c:url value="/assets/images/home/categories-main/Nespresso Creatista Plus Espresso Machine by Breville.jpg"/>"
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
                  
                  class="img-thumbnail"
                />
                <!-- <button type="button" class="btn">
                  <div class="productColor"></div>
                </button> -->
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
                  
                  id="red-cofee"
                  class="img-thumbnail"
                />                
                <!-- <div class="colors d-flex">
                  <button type="button" class="btn">
                    <div class="productColor selectedColor" id="red"></div>
                  </button>
                  <button type="button" class="btn">
                    <div class="productColor" id="white"></div>
                  </button>
                </div> -->
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
              src="<c:url value="/assets/images/home/categories-main/20 L 800W Countertop Microwave.jpg"/>"
              alt="Nesspresso"
              width="550"
              height="550"
            />
          </div>
          <div class="black-filter"></div>
          <div class="title">MICROWAVE</div>
          <div class="image-front">
            <img
              src="<c:url value="/assets/images/home/categories-main/20 L 800W Countertop Microwave.jpg"/>"
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
                  class="img-thumbnail"
                />
                <!-- <button type="button" class="btn">
                  <div class="productColor"></div>
                </button> -->
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
                  
                  id="red-cofee"
                  class="img-thumbnail"
                />

                <div class="colors d-flex">
                  <!-- <button type="button" class="btn">
                    <div class="productColor selectedColor"></div>
                  </button> -->
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
            src="<c:url value="/assets/images/home/sponsors/logo01.png"/>"
            alt="logo01"
            width="70%"
            height="auto"
          />
        </div>
        <div class="col">
          <img
            src="<c:url value="/assets/images/home/sponsors/logo02.png"/>"
            alt="logo02"
            width="70%"
            height="auto"
          />
        </div>
        <div class="col">
          <img
            src="<c:url value="/assets/images/home/sponsors/logo03.png"/>"
            alt="logo03"
            width="70%"
            height="auto"
          />
        </div>
        <div class="col">
          <img
            src="<c:url value="/assets/images/home/sponsors/logo05.png"/>"
            alt="logo05"
            width="70%"
            height="auto"
          />
        </div>
        <div class="col">
          <img
            src="<c:url value="/assets/images/home/sponsors/logo06.png"/>"
            alt="logo06"
            width="65%"
            height="auto"
          />
        </div>
      </div>
    </div>

    <!-- Footer -->

   <c:import url="footer.jsp"></c:import>

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
    <script src="<c:url value="/assets/js/bootstrap/JQuery.js"/>"></script>
    <script src="<c:url value="/assets/js/navbar.js"/>"></script>
    <script src="<c:url value="/assets/js/home.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap/bootstrap.min.js"/>"></script>
  </body>
</html>
