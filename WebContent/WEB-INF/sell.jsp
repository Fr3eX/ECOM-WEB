<%@page import="modele.Produit"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sell page</title>

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

    <!--|| Import style file => sell.css ||-->
    <link rel="stylesheet" href="<c:url value="/assets/css/sell.css"/>" />

    <!--|| Import OpenSans font style ||-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap"
      rel="stylesheet"
    />
         <script>
          /* Cette fonction permet d'afficher une vignette pour chaque image sélectionnée */
            function readFilesAndDisplayPreview(files) {
                let imageList = document.querySelector('#list'); 
                imageList.innerHTML = "";
                
                for ( let file of files ) {
                    let reader = new FileReader();
                    
                    reader.addEventListener( "load", function( event ) {
                        let span = document.createElement('span');
                        span.innerHTML = '<img height="60" src="' + event.target.result + '" />';
                        imageList.appendChild( span );
                    });

                    reader.readAsDataURL( file );
                }
            }
        </script>
  </head>
  <body>
  
  <c:import url="navBar.jsp"></c:import>
  
  
    <!-- Body -->
         <div class="container main mb-2">
      <div class="">
        <div class="ownProducts my-4">
          <h4 class="myProducts">My products</h4>
        </div>
        <div class="row">
        <div class="col productListes">
        <%if(request.getAttribute("listeProduits")!=null ) {%>
        <%List<Produit> listeProduits = (List)request.getAttribute("listeProduits"); %>
        <%int size = listeProduits.size(); %>
        <%if(size != 0){ %>
        <c:forEach var="produit" items="${listeProduits }">

               <div class="card m-1">
              <div class="card-header edit-cart py-0">
                <div>
                  <label for="WLDelete<c:out value="${produit.idProduit }"></c:out>">Edit</label>
                  <button
                    id="WLDelete<c:out value="${produit.idProduit }"></c:out>"
                    type="button"
                    class="btn btn-link editProduct"
                    data-bs-toggle="modal"
                    data-bs-target="#editProductModal"
                  >
                    <i class="fas fa-pen"></i>
                  </button>
                </div>
                <div>

                  <label for="WLDelete<c:out value="${produit.idProduit }"></c:out>">Delete</label>
                  <button
                    id="WLDelete<c:out value="${produit.idProduit }"></c:out>"
                    type="button"
                    class="btn btn-link delete"
                    data-bs-toggle="modal"
                    data-bs-target="#confirmeDeleteModal"
                  >
                    <i class="fas fa-trash-alt"></i>
                  </button>
                </div>
              </div>
              <!-- change id and categorie to be dynamique -->
              <div class="card-body py-0 " id=<c:out value="${produit.idProduit }"></c:out> category =<c:out value="${produit.categorie.getNomCategorie() }"></c:out> >
                <div class="title" ><c:out value="${produit.getDesignation() }"></c:out></div>
                <div class="productImage">
                  <img
                    src="./assets/images/home/categories-main/Severin Kaffeevollautomat KV 8090.jpg"
                    alt="cofee maker"
                    class="img-thumbnail"
                  />
                </div>
                <div class="productPrice"><span><c:out value="${produit.getPrix() }"></c:out></span> DH</div>
                <div class="productDescription d-none">
                 	<p><c:out value="${produit.getDescription() }"></c:out></p>
                </div>
                <div class="productQuantity d-none">
                 	<p><c:out value="${produit.getQuantite() }"></c:out></p>
                </div>
              </div>
              <div class="card-footer py-0">
                <div>
                  <button
                    type="button"
                    class="btn shadow-sm rounded bg-white detail"
                    data-bs-toggle="modal"
                    data-bs-target="#productDetail"
                  >
                    <span>Details</span><i class="far fa-eye mx-1"></i>
                  </button>
                </div>
              </div>
            </div>
            </c:forEach>
            <%} }%>
        
        <div class="col-4 addProduct">
            <button
              type="button"
              class="btn box bg-secondary text-white"
              data-bs-toggle="modal"
              data-bs-target="#addProductModal"
            >
              <i class="fas fa-plus"></i>
            </button>
          </div>
        </div>
          
        </div>
      </div>
    </div>
        <!-- Footer -->

   <c:import url="footer.jsp"></c:import>


<%--hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhgdyygggggggggggggggggggggggggggggggggggg --%>

<!-- Body -->

    <!-- Modals -->

    <!-- Edit profile -->
    <div
      class="modal fade"
      id="editProfile"
      tabindex="-1"
      aria-labelledby="editProfile"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Change Personal Info</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form action="" method="">
              <div class="row">
                <div class="col-sm-12 col-md-4 img">
                  <div class="profile-img">
                    <img
                      class="img-thumbnail"
                      src=""
                      alt="profile image"
                      id="user-ProfileImage"
                    />
                    <div class="file btn btn-lg">
                      change photo
                      <input type="file" name="photo" id="changepdp" />
                    </div>
                  </div>
                </div>
                <div class="col-sm-12 col-md-8 product-content">
                  <div class="row mb-2">
                    <div class="col-6">
                      <div class="form-floating Fname">
                        <input
                          type="text"
                          class="form-control"
                          id="user-firstName"
                          placeholder=" "
                        />
                        <label for="user-firstName">First Name</label>
                      </div>
                    </div>
                    <div class="col-6">
                      <div class="form-floating Lname">
                        <input
                          type="text"
                          class="form-control"
                          id="user-lastName"
                          placeholder=" "
                        />
                        <label for="user-lastName">Last Name</label>
                      </div>
                    </div>
                  </div>
                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating Email">
                        <input
                          type="email"
                          class="form-control"
                          id="user-emailAddress"
                          placeholder=" "
                        />
                        <label for="user-emailAddress">Email Address</label>
                      </div>
                    </div>
                  </div>
                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating Adresse">
                        <textarea
                          type="email"
                          class="form-control"
                          id="user-Address"
                          placeholder=" "
                          style="max-height: 130px; min-height: 100px"
                        >
                        </textarea>
                        <label for="user-Address">Address</label>
                      </div>
                    </div>
                  </div>
                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating Email">
                        <input
                          type="phone"
                          class="form-control"
                          id="user-phone"
                          placeholder=" "
                        />
                        <label for="user-phone">Phone</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <button
                type="submit"
                class="d-none"
                id="saveProfileChanges"
              ></button>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button
              type="button"
              class="btn btn-primary saveProfileChanges"
              data-bs-dismiss="modal"
            >
              Save changes
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- Product detail modal -->
    <!-- Modal -->
    <div
      class="modal fade"
      id="productDetail"
      tabindex="-1"
      aria-labelledby="DetaitProduct"
      aria-hidden="true"
    >
      <div
        class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable"
      >
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title" id="ProductDetailTitle">Product detail</h4>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body p-5">
            <div class="main-section">
              <div class="row">
                <!-- First col for image gallery  -->
                <div class="col-md-6 mb-4 mb-md-0">
                  <div class="row product-gallery mx-1">
                    <div class="col-12 mb-0 large-image">
                      <!-- Large image for the gallery -->
                      <img src="" alt="Main inmage" />
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
               		<h4>
                    description
                    </h4>
                    <p class="mb-2 text-muted small">
                      test
                    </p>
                  </div>
                  <div class="product-info">
                    <table class="table table-sm table-borderless mb-0">
                      <tbody>
                        <tr>
                          <th class="pl-0 w-25" scope="row">
                            <strong>Prix</strong>
                          </th>
                          <td class="price">
                            <strong>
                            </strong>
                            DH
                          </td>
                        </tr>
                        <tr>
                          <th class="pl-0 w-25" scope="row">
                            <strong>Model</strong>
                          </th>
                          <td class="mondel-name">
                            <!-- Model name -->
                            2020(ex)
                          </td>
                        </tr>
                        <tr>
                          <th class="pl-0 w-25" scope="row">
                            <strong>Color</strong>
                          </th>
                          <td class="Color">
                            <!-- Color prodcut -->
                            (not yet ready)
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <hr />
                  <!-- Quantity selector -->
                  <div class="input-group mb-3 quantity-selector">
                    <div class="form-floating quantity">
                      <input
                        type="number"
                        class="form-control"
                        id="quantityRest"
                        placeholder=" "
                        disabled
                        value=""
                        min="1"
                      />
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

    <!-- edit product modal -->
    <div
      class="modal fade"
      id="editProductModal"
      tabindex="-1"
      aria-labelledby="editProduct"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg modal-dialog-scrollable">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Edit product</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form action="UpdateProduct" method="post">
              <div class="row">
                <div class="col-sm-12 col-md-4 img">
                  <div class="product-img">
                    <img class="img-thumbnail" src="" alt="profile image" />
                    <div class="file btn btn-lg">
                      Change photo
                      <input type="file" name="photo" id="editProductImage" />
                    </div>
                    <!-- <div class="imageNotValide">Image not valide</div> -->
                  </div>
                </div>
                <div class="col-sm-12 col-md-8 product-content">
                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating title">
                        <input
                          type="text"
                          class="form-control"
                          id="product-title"
                          name="designation"
                          placeholder=" "
                        />
                        <label for="product-title">Title</label>
                      </div>
                    </div>
                  </div>

                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating description">
                        <textarea
                          type="text"
                          class="form-control"
                          id="product-description"
                          name = "description"
                          placeholder=" "
                          value = ""
                          style="max-height: 130px; min-height: 100px"
                        ></textarea>
                        <label for="product-description">Description</label>
                      </div>
                    </div>
                  </div>

                  <div class="row mb-2">
                    <div class="col col-sm-16">
                      <div class="form-floating">
                        <select
                          class="form-select"
                          id="edit-Category"
                          name="categorie"
                          aria-label="Category"
                          style="height: 60px"
                        >
                          <option value="refrigerator">Refrigerator</option>
                          <option value="freezer">Freezer</option>
                          <option value="oven">Oven</option>
                          <option value="microwave">Microwave</option>
                          <option value="toaster Oven">Toaster Oven</option>
                          <option value="loaster">Toaster</option>
                          <option value="dishwasher">Dishwasher</option>
                          <option value="washing machine">
                            Washing Machine
                          </option>
                          <option value="vacuum">Vacuum</option>
                          <option value="coffee maker">Coffee Maker</option>
                          <option value="blender">Blender</option>
                          <option value="food processor">Food Processor</option>
                          <option value="instant pot">Instant Pot</option>
                          <option value="cooker">Cooker</option>
                          <option value="mixer">Mixer</option>
                          <option value="water heater">Water Heater</option>
                          <option value="air conditioning">
                            Air conditioning
                          </option>
                          <option value="">Kitchen hood</option>
                        </select>
                        <label for="edit-Category">Category</label>
                      </div>
                    </div>
                    <div class="col col-sm-16">
                      <div class="form-floating description">
                        <input
                          type="number"
                          class="form-control"
                          id="product-Quantity"
                          name="quantite"
                          placeholder=" "
                          min="1"
                          value="1"
                        />
                        <label for="product-Quantity">Quantity</label>
                      </div>
                    </div>
                  </div>
                  <div class="row mb-2">
                    <div class="col col-sm-16">
                      <div class="form-floating description">
                        <input
                          type="number"
                          class="form-control"
                          id="product-Price"
                          name="prix"
                          placeholder=" "
                          min="0"
                          step="0.1"
                        />
                        <label for="product-Price">Price</label>
                      </div>
                    </div>
                    <div class="col col-sm-16">
                      <div class="form-floating description">
                        <input
                          type="number"
                          class="form-control"
                          id="product-Model"
                          placeholder=" "
                          min="2000"
                          max="2021"
                          value="2020"
                        />
                        <label for="product-Model">Model</label>
                      </div>
                    </div>
		            <input name="productIdUpdate" value="" id="productIdUpdate" class="d-none"/>
                  </div>
                </div>
              </div>
              <button
                type="submit"
                class="d-none"
                id="saveProductChanges"
              ></button>

          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-primary" id="saveChanges">
              Save changes
            </button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- delete modal confirmation -->

    <div
      class="modal fade"
      id="confirmeDeleteModal"
      tabindex="-1"
      aria-labelledby="deleteProduct"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Deleting Product confirmation</h5>
          
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
            
          </div>
          <div class="modal-body">
            Are you sure that you want to delete this product?
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Cancel
            </button>
            <form action="deleteProduct" method="post">
            <input name="productId" value="" id="productId" class="d-none"/>
            <button
              type="submit"
              class="btn btn-danger delete-confirmed"
            >
              Delete
            </button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal add product -->
    <div
      class="modal fade"
      id="addProductModal"
      tabindex="-1"
      aria-labelledby="addProduct"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-xl">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Add Product</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form action="addProduct" method="post" enctype="multipart/form-data">
              <div class="row">
                <div class="col-sm-12 col-md-4 img">
                  <div class="product-img">
                  	<!--  
	                    Fichiers sélectionnés : 
			            <input type="file" name="multiPartServlet" accept="image/*" multiple
			                   onchange="readFilesAndDisplayPreview(this.files);" /> <br/>
			            <input type="submit" value="Upload" /> <br/>
		                <div id="list"></div>  
		                -->   
	                    <img class="img-thumbnail" src="" alt="profile image" />
	                    <div class="file btn btn-lg">
	                      Upload photo
	                        <input type="file" name="multiPartServlet" accept="image/*" multiple
		                   onchange="readFilesAndDisplayPreview(this.files);" id="productImage" name="productImage"/> <br/> 
	                    </div>
	                    <input type="submit" value="Upload" /> <br/> 
	                    <div id="list"></div> 
                  </div>
                  <!--  
                <form method="post" action="upload" enctype="multipart/form-data">
		            Fichiers sélectionnés : 
		            <input type="file" name="multiPartServlet" accept="image/*" multiple
		                   onchange="readFilesAndDisplayPreview(this.files);" /> <br/>
		            <input type="submit" value="Upload" /> <br/>        
		            
		            <div id="list"></div>   
		        </form>
		        -->
                </div>
                <div class="col-sm-12 col-md-8 product-content">
                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating title">
                        <input
                          type="text"
                          class="form-control "
                          id="add-product-title"
                          placeholder=" "
                          name="designation"
                        />
                        <label for="add-product-title ">Title</label>
                      </div>
                    </div>
                  </div>

                  <div class="row mb-2">
                    <div class="col">
                      <div class="form-floating description">
                        <textarea
                          type="text"
                          class="form-control"
                          id="add-product-description"
                          placeholder=" "
                          name="description"
                          style="max-height: 130px; min-height: 100px"
                        ></textarea>
                        <label for="add-product-description">Description</label>
                      </div>
                    </div>
                  </div>

                  <div class="row mb-2">
                    <div class="col col-sm-16">
                      <div class="form-floating">
                        <select
                          class="form-select"
                          id="set-product-Category"
                          name="categorie"
                          aria-label="Category"
                          style="height: 60px"
                        >
                          <option value="refrigerator">Refrigerator</option>
                          <option value="freezer">Freezer</option>
                          <option value="oven">Oven</option>
                          <option value="microwave">Microwave</option>
                          <option value="toaster Oven">Toaster Oven</option>
                          <option value="loaster">Toaster</option>
                          <option value="dishwasher">Dishwasher</option>
                          <option value="washing machine">
                            Washing Machine
                          </option>
                          <option value="vacuum">Vacuum</option>
                          <option value="coffee maker">Coffee Maker</option>
                          <option value="blender">Blender</option>
                          <option value="food processor">Food Processor</option>
                          <option value="instant pot">Instant Pot</option>
                          <option value="cooker">Cooker</option>
                          <option value="mixer">Mixer</option>
                          <option value="water heater">Water Heater</option>
                          <option value="air conditioning">
                            Air conditioning
                          </option>
                          <option value="">Kitchen hood</option>
                        </select>
                        <label for="set-product-Category">Category</label>
                      </div>
                    </div>
                    <div class="col col-sm-16">
                      <div class="form-floating description">
                        <input
                          type="number"
                          class="form-control"
                          id="add-product-Quantity"
                          placeholder=" "
                          name="quantite"
                          min="1"
                          value="1"
                        />
                        <label for="add-product-Quantity">Quantity</label>
                      </div>
                    </div>
                  </div>
                  <div class="row mb-2">
                    <div class="col col-sm-16">
                      <div class="form-floating description">
                        <input
                          type="number"
                          class="form-control"
                          id="add-product-Price"
                          placeholder=" "
                          name="prix"
                          min="0"
                          step="0.1"
                        />
                        <label for="add-product-Price">Price</label>
                      </div>
                    </div>
                    <div class="col col-sm-16">
                      <div class="form-floating description">
                        <input
                          type="number"
                          class="form-control"
                          id="add-product-Model"
                          placeholder=" "
                          name="model"
                          min="2000"
                          max="2021"
                          value=""
                        />
                        <label for="add-product-Model">Model</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <button type="submit" class="d-none .addNewProductS" id="addNewProduct"></button>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-primary addNewProduct">
              Add product
            </button>
          </div>
        </div>
      </div>
    </div>


    <!--|| JQuery, script file => sell.js & bootstrap script file||-->
    <script src="<c:url value="/assets/js/bootstrap/JQuery.js"/>"></script>
    <script src="<c:url value="/assets/js/navbar.js"/>"></script>
    <script src="<c:url value="/assets/js/sell.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap/bootstrap.min.js"/>"></script>
  </body>
</html>
