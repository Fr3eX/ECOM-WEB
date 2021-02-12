<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<footer class="py-3">
      <div class="container">
        <div class="row">
          <div class="col-2 logo">
            <img
              src="<c:url value="/assets/images/icons/logo light.png"/>"
              alt="logo"
              width="133"
              height="79"
            />
          </div>
          <div class="col-5 sub">
            <div class="title">SUBSCRIBE TO OUR NEWSLETTER</div>
            <div class="sub-title">
              Get all the latest information on Events, Sales and Offers.
            </div>
          </div>
          <div class="col-5">
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
            <h5>Â© All rights reserved 2020</h5>
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
              <a href="<c:url value="/ContactUs"/>">Contact Us</a>
            </li>
            <li class="page-item"><a href="<c:url value="/AboutUs"/>">About us</a></li>
          </ul>
        </div>
      </div>
</footer>
