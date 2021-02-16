<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sweet Home - Home</title>

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
    <link rel="stylesheet" href="<c:url value="/assets/css/profile.css"/>" />

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
    



      <!-- user Profile -->
      <div class="container profile-container">
          <form action="" method="">
            <div class="row">
              <div class="col-md-4">
                <div class="profile-img">
                  <img src="<c:url value="/attachements/images/logos/${sessionScope.USER.imgPath}"/>" alt="profile image" id="userProfileImage">
                  <!-- <div class="file btn btn-lg">
                    change photo
                    <input type="file" name="photo" id="pdp">
                  </div> -->
                </div>
              </div>
              <div class="col-md-6">
                <div class="profile-head">
                  <div class="name">
                    <!-- Client's name -->
                    <h4>
                    <c:out value="${sessionScope.USER.nom} ${sessionScope.USER.prenom}"></c:out>
                    </h4>
                  </div>
                  <div class="statue">
                    <!-- client's statu => Buyer or seller -->
                    <h6>status : <span class="buyer">Buyer</span> | <span class="seller">Seller</span></h6>
                  </div>
                  <ul class="nav nav-tabs mt-5" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#aboutUser" role="tab" aria-controls="home" aria-selected="true">About you</a>
                    </li>
                    <li class="nav-item" role="presentation">
                      <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#settings" role="tab" aria-controls="profile" aria-selected="false">Settings</a>
                    </li>
                    
                  </ul>
                  <div class="tab-content" id="userTableData">
                    <div class="tab-pane fade show active" id="aboutUser" role="tabpanel" aria-labelledby="home-tab">
                      <table class="table table-borderless mt-2"> 
                         <!-- static values -->
                        <tbody>
                          <tr>
                            <th scope="row">Username</th>
                            <td class="userNameField">
                            	<c:out value="${sessionScope.USER.userName}"></c:out>
                            </td>                            
                          </tr>
                          <tr>
                            <th scope="row">First Name</th>
                            <td class="firstNameField">
                            	<c:out value="${sessionScope.USER.nom}"></c:out>
                            </td>                            
                          </tr>
                          <tr>
                            <th scope="row">Last Name</th>
                            <td class="lastNameField">
                            	<c:out value="${sessionScope.USER.prenom}"></c:out>
                            </td>                            
                          </tr>
                          <tr>
                            <th scope="row">Email</th>
                            <td class="emailField">
                            	<c:out value="${sessionScope.USER.email}"></c:out>
                            </td>                            
                          </tr>
                          <tr>
                            <th scope="row">Address</th>
                            <td class="addressField">
                            	<c:out value="${sessionScope.USER.adresse}"></c:out>
                            </td>                            
                          </tr>
                          <tr>
                            <th scope="row">Phone</th>
                            <td class="phoneField">
                            	<c:out value="${sessionScope.USER.telephone}"></c:out>
                            </td>                            
                          </tr>
                          <tr class="editInfoline">
                            <th>
                              <button type='button' class="btn bg-secondary text-white editProfile" data-bs-toggle="modal" data-bs-target="#editProfile">Edit profile</button>
                            </th>
                          </tr>
                        </tbody>
                      </table>                    
                    </div>
                    <div class="tab-pane fade" id="settings" role="tabpanel" aria-labelledby="profile-tab">
                      <form action="" method="">
                        <div class="row my-3 mx-1">
                          <div class="col-6">
                            <div class="title">Change Password</div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-6 mb-2">
                            <div class="form-floating">
                              <input type="password" class="form-control" id="oldPassword" placeholder="Password">
                              <label for="oldPassword">Old password</label>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-6 mb-2">
                            <div class="form-floating">
                              <input type="password" class="form-control" id="newPassword" placeholder="Password">
                              <label for="newPassword">New password</label>
                            </div>
                          </div>
                          <div class="col-6 mb-2">
                            <div class="form-floating">
                              <input type="password" class="form-control" id="confirmePassword" placeholder="Password">
                              <label for="confirmePassword">confirm password</label>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col ">
                            <button type="submit" class="btn btn-secondary text-white submitChangePassword ">Change Password</button>
                          </div>
                        </div>

                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
          
          <hr>
          <div class="">
            <div class="ownProducts">
              <h4 class="myProducts">My products</h4>
            </div>
            <div class="row">
              <div class="col-4 productListes">
                <div class="card m-1">
                  
                  <div class="card-header edit-cart py-0">
                    <div>
                      <label for="cofeeMaker1WLEdit">Edit</label>
                      <button id="cofeeMaker1WLEdit" type="button" class="btn btn-link editProduct" data-bs-toggle="modal" data-bs-target="#editProductModal">
                        <i class="fas fa-pen"></i>
                      </button>
                    </div>
                    <div>
                      <label for="cofeeMaker1WLDelete">Delete</label>
                      <button id="cofeeMaker1WLDelete" type="button" class="btn btn-link delete" data-bs-toggle="modal" data-bs-target="#confirmeDeleteModal">
                        <i class="fas fa-trash-alt"></i>
                      </button>
                    </div>
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
      
                  </div>
                </div>
              </div>
              <div class="col-4 addProduct">
                  <button type="button" class="btn box bg-secondary text-white" data-bs-toggle="modal" data-bs-target="#addProductModal">
                    <i class="fas fa-plus"></i>
                  </button>
              </div>
            </div>
          </div>
      </div>



























    <!-- Footer -->

    <c:import url="footer.jsp"></c:import>





    <!-- Modals -->

    <!-- Edit profile -->
    <div class="modal fade" id="editProfile" tabindex="-1" aria-labelledby="editProfile" aria-hidden="true">
      <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" >Change Personal Info</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form action="<c:url value="/MyAccount"/>" method="post" enctype="multipart/form-data">
              <div class="row">
                <div class="col-sm-12 col-md-4 img">
                  <div class="profile-img">
                    <img class='img-thumbnail' src="" alt="profile image" id="user-ProfileImage">
                    <div class="file btn btn-lg">
                      change photo
                    <input type="file" name="photo" id="changepdp">
                    </div>
                  </div>
                </div>
                <div class="col-sm-12 col-md-8 product-content">
                  <div class="row mb-2">
                    <div class="col-6">
                      <div class="form-floating Fname">
                        <input type="text" name="fname" class="form-control" id="user-firstName" placeholder=" ">
                        <label for="user-firstName">First Name</label>
                      </div>
                    </div>
                    <div class="col-6">
                      <div class="form-floating Lname">
                        <input type="text" name="lname" class="form-control" id="user-lastName" placeholder=" ">
                        <label for="user-lastName">Last Name</label>
                      </div>
                    </div>
                  </div>
                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating Email">
                        <input type="email" class="form-control" id="user-emailAddress" placeholder=" ">
                        <label for="user-emailAddress">Email Address</label>
                      </div>
                    </div>                    
                  </div>
                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating Adresse">
                        <textarea type="email" name="address" class="form-control" id="user-Address" placeholder=" " style="max-height: 130px; min-height:100px;"> </textarea>
                        <label for="user-Address">Address</label>
                      </div>
                    </div>                                       
                  </div>
                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating Email">
                        <input type="phone" name="telephone" class="form-control" id="user-phone" placeholder=" ">
                        <label for="user-phone">Phone</label>
                      </div>
                    </div> 
                  </div>
                </div>
              </div>
              <button type="submit" class="d-none" id="saveProfileChanges"></button>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary saveProfileChanges" data-bs-dismiss="modal">Save changes</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Product detail modal -->
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
                    <div class="form-floating title">
                      <input type="number" class="form-control" id="quantityRest" placeholder=" " disabled value="1" min="1">
                      <label for="quantityRest">Quantity</label>
                    </div>
                   
                  </div>                                                   
                  </div>
                </div>
              </div>
            </div>
          </div>          
        </div>
      </div>
    </div>
    <!-- edit product modal -->
    <div class="modal fade" id="editProductModal" tabindex="-1" aria-labelledby="editProduct" aria-hidden="true">
      <div class="modal-dialog modal-lg modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Edit product</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form action="<c:url value="/MyAccount"/>"  method="post">
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

<!-- Modal add product -->
<div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="addProduct" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Product</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="" method=''>
          <div class="row">
            <div class="col-sm-12 col-md-4 img">
              <div class="product-img">
                <img class='img-thumbnail' src="" alt="profile image">
                <div class="file btn btn-lg">
                  Upload photo
                  <input type="file" name="photo" id="addProductImage">
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-8 product-content">
              <div class="row mb-2">
                <div class="col">
                  <div class="form-floating title">
                    <input type="text" class="form-control" id="add-product-title" placeholder=" ">
                    <label for="add-product-title">Title</label>
                  </div>
                </div>
              </div>

              <div class="row mb-2">
                <div class="col">
                  <div class="form-floating description">
                    <textarea type="text" class="form-control" id="add-product-description" placeholder=" " style="max-height: 130px; min-height:100px;"></textarea>
                    <label for="add-product-description">Description</label>
                  </div>
                </div>
              </div>
              
              <div class="row mb-2">
                <div class="col col-sm-16">                      
                  <div class="form-floating">
                    <select class="form-select" id="set-product-Category" aria-label="Category" style="height: 60px;">  
                                      
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
                    <label for="set-product-Category">Category</label>
                  </div>
                </div>
                <div class="col col-sm-16">
                  <div class="form-floating description">
                    <input type="number" class="form-control" id="add-product-Quantity" placeholder=" " min="1" value="1"/>
                    <label for="add-product-Quantity">Quantity</label>
                  </div>
                </div>
              </div>
              <div class="row mb-2">
                <div class="col col-sm-16">
                  <div class="form-floating description">
                    <input type="number" class="form-control" id="add-product-Price" placeholder=" " min="0" step="0.1"/>
                    <label for="add-product-Price">Price</label>
                  </div>
                </div>
                <div class="col col-sm-16">
                  <div class="form-floating description">
                    <input type="number" class="form-control" id="add-product-Model" placeholder=" " min="2000" max="2021" value=""/>
                    <label for="add-product-Model">Model</label>
                  </div>
                </div>
              </div>
              
            </div>
          </div>
          <button type="submit" class="d-none" id="addNewProduct"></button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary addNewProduct">Add product</button>
      </div>
    </div>
  </div>
</div>

    <!--|| JQuery, script file => home.js & bootstrap script file||-->
    <script src="./assets/js/bootstrap/JQuery.js"></script>
    <script src="./assets/js/profile.js"></script>
    <script src="./assets/js/bootstrap/bootstrap.min.js"></script>
  </body>
</html>
