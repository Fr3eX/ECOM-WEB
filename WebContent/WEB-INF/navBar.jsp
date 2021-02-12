<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<c:if test="${!empty sessionScope.USER}" var="exist"/>

    <div class="header">
      <nav class="navbar navbar-expand-lg nav-header">
        <div class="container-fluid d-flex justify-content-between">
          <div class="lang-devise d-flex align-items-center">
            <div class="lang d-flex">
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
            <div class="wishlist mx-2"><a href="<c:url value="/WishList"/>">My wishlist</a></div>
            <h4 class="nav-deviser">|</h4>
            <div class="account mx-2"><a href="<c:url value="/MyAccount"/>" >My account</a></div>
            <h4 class="nav-deviser">|</h4>
            <div class="sales mx-2"><a href="<c:url value="/Sell"/>">My sales</a></div>
          </div>
        </div>
      </nav>
    </div>
    <nav class="navbar navbar-expand-lg main-nav sticky-top py-2">
      <!-- Nav logo left -->
      <div class="logo">
        <a href="#" class="navbar-brand">
          <img
            src="<c:url value="/assets/images/icons/logo dark.jpg"/>"
            alt="logo"
           
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
      <i class="fas fa-bars"></i></span>
      </button>
      <div class="navbar-items collapse navbar-collapse" id="navbar-items">
        <ul class="navbar-nav menu-nav">
          <li class="nav-item">
            <a href="<c:url value="/Home"/>" class="nav-link active" aria-current="page">Home</a>
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
            <a href="<c:url value="/Products"/>" class="nav-link">Products</a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/Sell"/>" class="nav-link">Sell</a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/ContactUs"/>" class="nav-link">Contact</a>
          </li>
          <li class="nav-item">
            <a href="<c:url value="/AboutUs"/>" class="nav-link">About us</a>
          </li>
        </ul>
      </div>

      <!-- Nav right items -->
      <div class="nav-right-items">
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
        
		<c:choose>
			<c:when test="${exist == \"false\" }">       
		          
		          <%-- If the user is not logged in  --%>
		         
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
		              <li><a class="dropdown-item" href="<c:url value="/SignIn"/>">Login</a></li>
		              <li><a class="dropdown-item" href="<c:url value="/SignUp"/>">Sign up</a></li>
		            </ul>
		          </li>
		          <h4 class="nav-deviser">|</h4>
		          
			</c:when>     
			<c:otherwise>    
		          
		          <%-- If the user is already logged in  --%>
		          
		          <li class="nav-item login-button dropdown">
		            <a              
		              class="btn btn-link dropdown-toggle wishlist-icon p-0"
		              id="login-dropdown"
		              role="button"
		              data-bs-toggle="dropdown"
		              aria-expanded="false"
		            >
		                <div class="profile-img-logo">
		                    <img alt="SourceLink" src="<c:url value="/attachements/images/logos/${sessionScope.USER.imgPath}"/>" class="nav-profile-image"/>
		                </div>
		            </a>
		            <ul
		              class="dropdown-menu login-signup"
		              aria-labelledby="login-dropdown"
		            >
		              <li><a class="dropdown-item" href="<c:url value="/MyAccount"/>">Profile </a></li>
		              <li><a class="dropdown-item" href="<c:url value="/LogOut"/>">Log out</a></li>
		            </ul>
		          </li>
		          <h4 class="nav-deviser">|</h4>
		              
			</c:otherwise>
		</c:choose>
         
         
         
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
