<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sweet Home - Commande</title>

    <!--|| Import Bootstrap ||-->
    <link rel="stylesheet" href="./assets/css/bootstrap/bootstrap.min.css" />

	<!--|| Import navbar and footer style ||-->
	<link rel="stylesheet" href="<c:url value="/assets/css/navbar.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/footer.css"/>" />

    <!--|| Import FontAwsome for icons ||-->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.15.2/css/all.css"
      integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu"
      crossorigin="anonymous"
    />

    <!--|| Import style file => commande.css ||-->
    <link rel="stylesheet" href="<c:url value="/asssets/css/commande.css"/>" />

    <!--|| Import OpenSans font style ||-->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    
    <!-- Navbar -->
		<c:import url="navBar.jsp"></c:import>
    <!-- Body -->

    

    <div class="container-fluid my-4">
      <div class="row mx-2">
        <div class="col-9 products-table">
          <table class="table table-hover">
            <thead class="table-dark">
              <tr>
                <th scope="col"></th>
                <th scope="col">Image</th>
                <th scope="col">Title</th>
                <th scope="col">Quantity</th>
                <th scope="col">Price</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>
                  <div class="productImage">
                    <img
                      src="./assets/images/home/categories-main/Severin Kaffeevollautomat KV 8090.jpg"
                      alt="cofee maker"
                      class="img-thumbnail"
                    />
                  </div>
                </td>
                <td>
                  <div class="title">Severin Kaffeevollautomat KV 8090</div>
                </td>
                <td>1</td>
                <td>
                  <div class="productPrice"><span>10000.00</span> DH</div>
                </td>
                <td>
                  <button type="button" class="btn btn-outline-danger">
                    <i class="fas fa-trash-alt"></i>
                  </button>
                </td>
              </tr>

              <tr>
                <th scope="row">2</th>
                <td>
                  <div class="productImage">
                    <img
                      src="./assets/images/home/categories-main/Severin Kaffeevollautomat KV 8090.jpg"
                      alt="cofee maker"
                      class="img-thumbnail"
                    />
                  </div>
                </td>
                <td>
                  <div class="title">Severin Kaffeevollautomat KV 8090</div>
                </td>
                <td>1</td>
                <td>
                  <div class="productPrice"><span>10000.00</span> DH</div>
                </td>
                <td>
                  <button type="button" class="btn btn-outline-danger">
                    <i class="fas fa-trash-alt"></i>
                  </button>
                </td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td>
                  <div class="productImage">
                    <img
                      src="./assets/images/home/categories-main/Severin Kaffeevollautomat KV 8090.jpg"
                      alt="cofee maker"
                      class="img-thumbnail"
                    />
                  </div>
                </td>
                <td>
                  <div class="title">Severin Kaffeevollautomat KV 8090</div>
                </td>
                <td>1</td>
                <td>
                  <div class="productPrice"><span>10000.00</span> DH</div>
                </td>
                <td>
                  <button type="button" class="btn btn-outline-danger">
                    <i class="fas fa-trash-alt"></i>
                  </button>
                </td>
              </tr>
              <tr>
                <th scope="row">4</th>
                <td>
                  <div class="productImage">
                    <img
                      src="./assets/images/home/categories-main/Severin Kaffeevollautomat KV 8090.jpg"
                      alt="cofee maker"
                      class="img-thumbnail"
                    />
                  </div>
                </td>
                <td>
                  <div class="title">Severin Kaffeevollautomat KV 8090</div>
                </td>
                <td>1</td>
                <td>
                  <div class="productPrice"><span>10000.00</span> DH</div>
                </td>
                <td>
                    <button type="button" class="btn btn-outline-primary edit">
                        <i class="fas fa-pen-alt"></i>
                    </button>
                    <button type="button" class="btn btn-outline-danger remove">
                        <i class="fas fa-trash-alt"></i>
                    </button>
                  
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="col totalMount">
          <!-- Card -->
          <div class="card mb-4">
            <div class="card-body">
              <h5 class="mb-3">User info</h5>
              <table class="table table-borderless mt-2">
                <!-- static values -->
                <tbody>
                  <tr>
                    <th scope="row">Name</th>
                    <td class="fullName">ANASS OBT</td>
                  </tr>                
                  <tr>
                    <th scope="row">Email</th>
                    <td class="emailField">anass.taher@gmail.com</td>
                  </tr>
                  <tr>
                    <th scope="row">Address</th>
                    <td class="addressField">
                      Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                      Beatae, omnis.
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">Phone</th>
                    <td class="phoneField">(+212) 6 12 45 21 41</td>
                  </tr>
                  <tr>
                      <th scope="row">CCN</th>
                      <td scope='row'>
                          <form action="" method="">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="idCard" placeholder=" ">
                                <label for="idCard">Credit card number</label>
                              </div>
                              <button type="submit" class="submitPayement d-none"></button>
                          </form>
                        
                      </td>
                  </tr>
                </tbody>
              </table>
              <hr />
              <h5 class="mb-3">The total amount</h5>
              <ul class="list-group list-group-flush">
                <li
                  class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0"
                >
                  Temporary amount
                  <span>53.98</span> DH
                </li>
                <li
                  class="list-group-item d-flex justify-content-between align-items-center px-0"
                >
                  Shipping
                  <span>Free</span>
                </li>
                <li
                  class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3"
                >
                  <div>
                    <strong>Total</strong>
                    <strong>
                      <p class="mb-0">(including VAT)</p>
                    </strong>
                  </div>
                  <span><strong><span>53.98</span> DH</strong></span>
                </li>
              </ul>

              <button
                type="button"
                id="purchase"
                class="btn btn-primary btn-block waves-effect waves-center purchase"
              >
                Make purchase
              </button>
            </div>
          </div>
          <!-- Card -->
        </div>
      </div>
    </div>

    <!-- Footer -->

    <c:import url="footer.jsp"></c:import>    

    <!--|| JQuery, script file => commande.js & bootstrap script file||-->
    <script src="<c:url value="/assets/js/bootstrap/JQuery.js"/>"></script>
    <script src="<c:url value="/assets/js/navbar.js"/>"></script>
    <script src="<c:url value="/assets/js/commande.js"/>"></script>
    <script src="<c:url value="/assets/js/bootstrap/bootstrap.min.js"/>"></script>
  </body>
</html>
