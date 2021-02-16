<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Products page</title>

    <!--|| Import Bootstrap ||-->
    <link rel="stylesheet" href="<c:url value="/assets/css/bootstrap/bootstrap.min.css"/>" />

    <!--|| Import FontAwsome for icons ||-->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.2/css/all.css"
      integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu"
      crossorigin="anonymous"
    />

    <!--|| Import style file => home.css ||-->
    <link rel="stylesheet" href="<c:url value="assets/css/product.css"/>" />

    <!--|| Import OpenSans font style ||-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!-- First page -->
    
    <c:import url="navBar.jsp"></c:import>

    <!-- Body -->
    <div class="container-fluid main-products p-5 my-3">
        
        <div class="row ">
            <!-- sidebar -->
            <div class="col-xl-3 col-md-4 mb-5 card">
                
                <div class="card-body">
                    <!-- Categories -->
                    <section class="categories">
                        <div class="title">
                            <h4>Categories</h4>
                        </div>
                        <div class="list">
	                        <ul>
		                        <c:forEach var="item" items="${listCategorie}" >
									<li class="mb-3"><a class="cat-item" href="#!"><c:out value="${item.nomCategorie}" /></a></li>
								</c:forEach>
	                        </ul>    
                        </div>                                        
                    </section>
                    <!-- Filter -->
                    <hr>
                    <section class="filter mt-1">
                        <div class="title">
                            <h4>Filters</h4>
                        </div>
                        <!-- filter / condition -->
                        <div class="filter-condition">
                            <div class="title">
                                <h5>Condition</h5>
                            </div>
                            <div class="check">
                                <div class="form-check my-2">
                                    <input class="form-check-input" type="checkbox" value="" id="newProductCheck" checked>
                                    <label class="form-check-label" for="newProductCheck">
                                        New
                                    </label>
                                </div>
                                <div class="form-check my-2">
                                    <input class="form-check-input" type="checkbox" value="" id="usedProductCheck">
                                    <label class="form-check-label" for="usedProductCheck">
                                        Used
                                    </label>
                                </div>
                            </div>                            
                        </div>
                        <!-- filter / price -->
                        <div class="filter-price">
                            <div class="title">
                                <h5>price (DH)</h5>
                            </div>
                            <div class="radio-price">
                                <div class="form-check my-2">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="under1000" checked>
                                    <label class="form-check-label" for="under1000">
                                      Under 1000
                                    </label>
                                  </div>
                                  <div class="form-check my-2">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="from1000to5000" >
                                    <label class="form-check-label" for="from1000to5000">
                                      1 000 to 5 000 
                                    </label>
                                  </div>
                                  <div class="form-check my-2">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="from5000to10000" >
                                    <label class="form-check-label" for="from5000to10000">
                                      5 000 to 10 000.00  
                                    </label>
                                  </div>
                                  <div class="form-check my-2">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="from5000to10000" >
                                    <label class="form-check-label" for="from5000to10000">
                                      5 000 to 10 000 
                                    </label>
                                  </div>
                                  <div class="form-check my-2">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="upTo10000" >
                                    <label class="form-check-label" for="upTo10000">
                                      Up to 10 000  
                                    </label>
                                  </div>
                            </div>
                            <div class="input-price">
                                <form>
                                    <div class="d-flex align-items-center mt-4 pb-1">
                                      <div class="md-form md-outline my-0">
                                        <input id="from" type="text" class="form-control mb-0" placeholder="$ Min">
                                      </div>
                                      <p class="px-2 mb-0 text-muted"> - </p>
                                      <div class="md-form md-outline my-0">
                                        <input id="to" type="text" class="form-control mb-0" placeholder="$ Max">
                                      </div>
                                    </div>
                                </form>
                            </div>                            
                        </div>
                        <hr>
                        <!-- <div class="filter-color">
                            <div class="title">
                                <h5>Color</h5>
                            </div>
                            <div class="colors">
                                <div class="row">
                                    <div class="col-4 form-check my-2">
                                        <input class="form-check-input" type="checkbox" value="" id="white-color">
                                        <label class="form-check-label" for="white-color">
                                            <div class="color bg-light"></div>
                                        </label>
                                    </div>
                                <div class="col-4 form-check my-2">
                                    <input class="form-check-input" type="checkbox" value="" id="black-color">
                                    <label class="form-check-label" for="black-color">
                                        <div class="color bg-dark"></div>
                                    </label>
                                </div>
                                <div class="col-4 form-check my-2">
                                    <input class="form-check-input" type="checkbox" value="" id="blue-color">
                                    <label class="form-check-label color-label" for="blue-color">
                                        <div class="color bg-primary"></div>
                                    </label>
                                </div>
                                <div class="col-4 form-check my-2">
                                    <input class="form-check-input" type="checkbox" value="" id="grey-color">
                                    <label class="form-check-label" for="grey-color">
                                        <div class="color bg-secondary"></div>
                                    </label>
                                </div>
                                <div class="col-4 form-check my-2">
                                    <input class="form-check-input" type="checkbox" value="" id="green-color">
                                    <label class="form-check-label" for="green-color">
                                        <div class="color bg-success"></div>
                                    </label>
                                </div>
                                <div class="col-4 form-check my-2">
                                    <input class="form-check-input" type="checkbox" value="" id="yellow-color">
                                    <label class="form-check-label" for="yellow-color">
                                        <div class="color bg-warning"></div>
                                    </label>
                                </div>
                                <div class="col-4 form-check my-2">
                                    <input class="form-check-input" type="checkbox" value="" id="red-color">
                                    <label class="form-check-label" for="red-color">
                                        <div class="color bg-danger"></div>
                                    </label>
                                </div>
                            </div>

                            </div>
                        </div> -->
                    </section>
                </div>
            </div>
            <!-- <div class="row "> -->
              <div class="col productListes">
               
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

                
             


              </div>
            </div>
          <!-- </div> -->
        </div>










    <!-- Footer -->

    <c:import url="footer.jsp"></c:import>


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




    <!-- !!!! Modals for sell page !!!! -->
    <!-- edit product modal -->
    <div class="modal fade" id="editProductModal" tabindex="-1" aria-labelledby="editProduct" aria-hidden="true">
      <div class="modal-dialog modal-lg modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Edit product</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form action="" method=''>
              <div class="row">
                <div class="col-sm-12 col-md-4 img">
                  <div class="product-img">
                    <img class='img-thumbnail' src="" alt="profile image">
                    <div class="file btn btn-lg">
                      Change photo
                      <input type="file" name="photo" id="editProductImage">
                    </div>
                  </div>
                </div>
                <div class="col-sm-12 col-md-8 product-content">
                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating title">
                        <input type="text" class="form-control" id="product-title" placeholder=" ">
                        <label for="product-title">Title</label>
                      </div>
                    </div>
                  </div>

                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating description">
                        <textarea type="text" class="form-control" id="product-description" placeholder=" " style="max-height: 130px; min-height:100px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum, odit? Quos voluptates enim ducimus delectus sapiente animi aut, fugiat veritatis!
                        </textarea>
                        <label for="product-description">Description</label>
                      </div>
                    </div>
                  </div>
                  
                  <div class="row mb-2">
                    <div class="col col-sm-16">                      
                      <div class="form-floating">
                        <select class="form-select" id="edit-Category" aria-label="Category" style="height: 60px;">                          
                          <option value="refrigerator">Refrigerator</option>
                          <option value="freezer">Freezer</option>
                          <option value="oven" >Oven</option>
                          <option value="microwave">Microwave</option>
                          <option value="toaster Oven">Toaster Oven</option>
                          <option value="loaster">Toaster</option>
                          <option value="dishwasher">Dishwasher</option>
                          <option value="washing machine">Washing Machine</option>
                          <option value="vacuum">Vacuum</option>
                          <option value="coffee maker">Coffee Maker</option>
                          <option value="blender">Blender</option>
                          <option value="food processor">Food Processor</option>
                          <option value="instant pot">Instant Pot</option>
                          <option value="cooker">Cooker</option>
                          <option value="mixer">Mixer</option>
                          <option value="water heater">Water Heater</option>
                          <option value="air conditioning">Air conditioning</option>
                          <option value="">Kitchen hood</option>
                        </select>
                        <label for="edit-Category">Category</label>
                      </div>
                    </div>
                    <div class="col col-sm-16">
                      <div class="form-floating description">
                        <input type="number" class="form-control" id="product-Quantity" placeholder=" " min="1" value="1"/>
                        <label for="product-Quantity">Quantity</label>
                      </div>
                    </div>
                  </div>
                  <div class="row mb-2">
                    <div class="col col-sm-16">
                      <div class="form-floating description">
                        <input type="number" class="form-control" id="product-Price" placeholder=" " min="0" step="0.1"/>
                        <label for="product-Price">Price</label>
                      </div>
                    </div>
                    <div class="col col-sm-16">
                      <div class="form-floating description">
                        <input type="number" class="form-control" id="product-Model" placeholder=" " min="2000" max="2021" value="2020"/>
                        <label for="product-Model">Model</label>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
              <button type="submit" class="d-none" id="saveProductChanges"></button>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id='saveChanges'>Save changes</button>
          </div>
        </div>
      </div>
    </div>


    <!-- delete modal confirmation -->

    <div class="modal fade" id="confirmeDeleteModal" tabindex="-1" aria-labelledby="deleteProduct" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Deleting Product confirmation</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            Are you sure that you want to delete this product?
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
            <button type="button" class="btn btn-danger delete-confirmed" data-bs-dismiss="modal">Delete</button>
          </div>
        </div>
      </div>
    </div>

    <!--|| JQuery, script file => home.js & bootstrap script file||-->
    <script src="<c:url value="/assets/js/bootstrap/JQuery.js"/>"></script>
    <script src="<c:url value="/assets/js/product.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap/bootstrap.min.js"/>"></script>
    
  </body>
</html>
