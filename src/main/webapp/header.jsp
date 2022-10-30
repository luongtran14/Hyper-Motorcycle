<%-- 
    Document   : header
    Created on : Oct 29, 2022, 5:05:32 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <header class="header mv-header-style-2 mv-wrap">
        <div class="header-top">
          <div class="container">
            <div class="header-top-inner">
              <div class="mv-col-wrapper">
                <div class="mv-col-left header-contact">
                  <ul class="mv-ul clearfix group-contact hidden-xs">
                    <li class="item-button mv-icon-left-style-2"><span class="text"> <span class="icon"><i class="fa fa-clock-o"></i></span>24/7 Support</span></li>
                    <li class="item-button mv-icon-left-style-2"><a href="tel:(+800)123456789" class="text"> <span class="icon"><i class="fa fa-phone"></i></span>Telephone: (+800) 123 456 789</a></li>
                  </ul>
                  <ul class="mv-ul clearfix group-language">
                    <li class="item-button dropdown mv-dropdown-style-1 item-currency">
                      <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="mv-btn mv-btn-style-24"> <i class="fa fa-usd"></i>&nbsp; USD<i class="icon fa fa-angle-down"></i></button>
                      <div class="dropdown-menu pull-right">
                        <div class="dropdown-menu-inner">
                          <nav class="mv-menu-style-3">
                            <ul>
                              <li><a href="#"><i class="fa fa-eur"></i>&nbsp; EUR</a></li>
                              <li><a href="#"><i class="fa fa-usd"></i>&nbsp; AUD</a></li>
                              <li><a href="#"><i class="fa fa-gbp"></i>&nbsp; GBP</a></li>
                              <li><a href="#"><i class="fa fa-rub"></i>&nbsp; RUB</a></li>
                              <li><a href="#"><i class="fa fa-yen"></i>&nbsp; YEN</a></li>
                              <li><a href="#"><i class="fa fa-krw"></i>&nbsp; WON</a></li>
                            </ul>
                          </nav>
                        </div>
                      </div>
                    </li>
                    <li class="item-button dropdown mv-dropdown-style-1 item-language">
                      <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="mv-btn mv-btn-style-24"> <img src="images/icon/icon_flag_england.png" alt="icon"/><span class="btn-text hidden-xs hidden-sm">&nbsp; English</span><i class="icon fa fa-angle-down"></i></button>
                      <div class="dropdown-menu pull-right">
                        <div class="dropdown-menu-inner">
                          <nav class="mv-menu-style-3">
                            <ul>
                              <li><a href="#"><img src="images/icon/icon_flag_france.png" alt="icon"/>&nbsp; France</a></li>
                              <li><a href="#"><img src="images/icon/icon_flag_italy.png" alt="icon"/>&nbsp; Italy</a></li>
                              <li><a href="#"><img src="images/icon/icon_flag_germany.png" alt="icon"/>&nbsp; Germany</a></li>
                              <li><a href="#"><img src="images/icon/icon_flag_spain.png" alt="icon"/>&nbsp; Spain</a></li>
                            </ul>
                          </nav>
                        </div>
                      </div>
                    </li>
                  </ul>
                </div>
                <!-- .header-contact-->

                <div class="mv-col-right align-bottom header-account">
                  <div class="mv-btn-group text-right">
                    <div class="group-inner">
                      <div class="item-button mv-btn dropdown mv-dropdown-style-1">
                        <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="mv-btn mv-btn-style-12"><span class="btn-text hidden-xs hidden-sm">my account</span><i class="btn-icon fa fa-user hidden-md hidden-lg"></i><i class="icon fa fa-caret-down"></i></button>
                        <div class="dropdown-menu pull-right">
                          <div class="dropdown-menu-inner">
                            <nav class="mv-menu-style-3">
                              <ul>
                                <li><a href="../Hyper-Motorcycle/profile">User Profile</a></li>
                                <li><a href="wishlist.html">My Wishlist</a></li>
                                <li><a href="compare.html">Compare</a></li>
                                <li><a href="../Hyper-Motorcycle/login"><i class="fa fa-sign-in mv-color-primary"></i>&nbsp;
                                    Login</a></li>
                                <li><a href="../Hyper-Motorcycle/register"><i class="fa fa-pencil-square-o mv-color-primary"></i>&nbsp;
                                    Register</a></li>
                                <li><a href="../Hyper-Motorcycle/changepassword">Change Password</a></li>
                                <li><a href="../Hyper-Motorcycle/reset_password">Reset Password</a></li>
                                <li><a href="../Hyper-Motorcycle/logout"><i class="fa fa-sign-out mv-color-primary"></i>Logout</a></li>
                              </ul>
                            </nav>
                          </div>
                        </div>
                      </div>
                      <div class="item-button mv-btn"><a href="cart/checkout" class="item-button mv-btn mv-btn-style-12"> <i class="btn-icon fa fa-shopping-cart hidden-md hidden-lg"></i><span class="bcheckotn-text hidden-xs hidden-sm">checkout</span></a></div>
                    </div>
                  </div>
                </div>
                <!-- .header-account-->
              </div>
            </div>
          </div>
        </div>
        <!-- .header-top-->

        <div class="header-main-nav mv-fixed-enabled">
          <div class="container">
            <div class="container-inner">
              <div class="header-toggle-off-canvas hidden-md hidden-lg">
                <button type="button" class="mv-btn mv-btn-style-5 btn-off-canvas-toggle click-btn-off-canvas-left"><i class="icon fa fa-bars"></i></button>
              </div>
              <!-- .header-toggle-off-canvas-->

              <div class="header-logo"><a href="home.html" title="Motor Vehikal"><img src="images/logo/logo_1.png" alt="logo" class="logo-img img-default image-live-view"/><img src="images/logo/logo_2.png" alt="logo" class="logo-img img-scroll image-live-view"/></a></div>
              <!-- .header-logo-->

              <div class="main-nav-wrapper hidden-xs hidden-sm">
                <nav class="main-nav">
                  <ul class="nav sf-menu">
                    <li class="mega-columns"><a href="index.html"><span class="menu-text">Home <i class="menu-icon fa fa-angle-down"></i></span></a>
                      <ul class="row">
                        <li class="col-xs-3 mega-col"><a href="home.html" class="mega-title"><span class="menu-text">Homepage Demos</span></a>
                          <ul class="mega-content">
                            <li class="active"><a href="home.html">Home 1</a></li>
                            <li><a href="home-2.html">Home 2</a></li>
                            <li><a href="home-3.html">Home 3</a></li>
                          </ul>
                        </li>
                        <li class="col-xs-3 mega-col"><a href="home.html" class="mega-title"><span class="menu-text">Homepage Demos</span></a>
                          <ul class="mega-content">
                            <li><a href="home-4.html">Home 4</a></li>
                            <li><a href="home-5.html">Home 5</a></li>
                          </ul>
                        </li>
                        <li class="col-xs-3 mega-col"><a href="home.html" class="mega-title"><span class="menu-text">Homepage Demos</span></a>
                          <ul class="mega-content">
                            <li><a href="home-lookbook-1.html">Home Lookbook 1</a></li>
                            <li><a href="home-lookbook-2.html">Home Lookbook 2</a></li>
                          </ul>
                        </li>
                        <li class="col-xs-3 mega-col"><a href="home.html" class="mega-title"><span class="menu-text">Homepage Demos</span></a>
                          <ul class="mega-content">
                            <li><a href="home-parallax.html">Home Parallax</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li><a href="#"><span class="menu-text">Product <i class="menu-icon fa fa-angle-down"></i></span></a>
                      <ul>
                        <li><a href="/Hyper-Motorcycle/admin/products?categoryId=1">Product List</a></li>
                        <li><a href="product-grid-2.html">Product Grid 2</a></li>
                        <li><a href="product-grid-3.html">Product Grid 3</a></li>
                        <li><a href="product-grid-3-no-sb.html">Product Grid 3 No Sidebar</a></li>
                        <li><a href="product-grid-4-no-sb.html">Product Grid 4 No Sidebar</a></li>
                        <li><a href="product-grid-5-fullwidth.html">Product Grid 5 Fullwidth</a></li>
                        <li><a href="product-detail.html">Product Detail</a></li>
                        <li><a href="product-detail-rated.html">Product Detail Rated</a></li>
                        <li><a href="search.html">Search</a></li>
                      </ul>
                    </li>
                    <li><a href="#"><span class="menu-text">Shop <i class="menu-icon fa fa-angle-down"></i></span></a>
                      <ul>
                        <li><a href="cart.html">Cart</a></li>
                        <li><a href="checkout.html">Checkout</a></li>
                        <li><a href="wishlist.html">Wishlist</a></li>
                        <li><a href="compare.html">Compare</a></li>
                        <li><a href="track-your-order.html">Track Your Order</a></li>
                        <li><a href="cart-empty.html">Cart Empty</a></li>
                      </ul>
                    </li>
                    <li><a href="#"><span class="menu-text">Blog <i class="menu-icon fa fa-angle-down"></i></span></a>
                      <ul>
                        <li><a href="blog.jsp">Blog List</a></li>
                        <li><a href="blog-grid-2.html">Blog Grid 2</a></li>
                        <li><a href="blog-grid-3-no-sb.html">Blog Grid 3 No Sidebar</a></li>
                        <li><a href="blog-grid-3-mansory-no-sb.html">Blog Grid 3 Mansory No Sidebar</a></li>
                        <li><a href="blog-detail.html">Blog Detail</a></li>
                      </ul>
                    </li>
                    <li><a href="about-us.html"><span class="menu-text">About Us</span></a></li>
                    <li><a href="contact.html"><span class="menu-text">Contact</span></a></li>
                    <li><a href="#"><span class="menu-text">Pages <i class="menu-icon fa fa-angle-down"></i></span></a>
                      <ul class="dropdown-left">
                        <li><a href="/login">Login & Register</a></li>
                        <li><a href="forgot-password.html">Forgot Password</a></li>
                        <li><a href="faqs.html">Faqs</a></li>
                        <li><a href="newsletter.html">Newsletter</a></li>
                        <li><a href="shortcodes.html">Shortcodes</a></li>
                        <li><a href="common-element.html">Common Element</a></li>
                        <li><a href="error-page.html">Error Page</a></li>
                        <li><a href="#"><span class="menu-text">Example menu item <i class="menu-icon fa fa-angle-down"></i></span></a>
                          <ul>
                            <li><a href="#">Example menu item</a></li>
                            <li><a href="#"><span class="menu-text">Example menu item <i class="menu-icon fa fa-angle-down"></i></span></a>
                              <ul>
                                <li><a href="#">Example menu item</a></li>
                                <li><a href="#">Example menu item</a></li>
                              </ul>
                            </li>
                            <li><a href="#"><span class="menu-text">Example menu item <i class="menu-icon fa fa-angle-down"></i></span></a>
                              <ul class="dropdown-left">
                                <li><a href="#">Example menu item</a></li>
                                <li><a href="#">Example menu item</a></li>
                              </ul>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- .header-main-nav-->

              <div class="header-right-button">
                <div class="header-search">
                  <div class="item-button">
                    <button type="button" data-toggle="modal" data-target="#popupSearch" class="mv-btn mv-btn-style-10 btn-open-field-search"><i class="fa fa-search"></i></button>
                    <button type="button" class="mv-btn mv-btn-style-10 btn-open-filter click-btn-off-canvas-right hidden-md hidden-lg"><i class="fa fa-filter mv-f-18"></i></button>
                  </div>
                </div>
                <!-- .header-search-->

                <div class="header-shop">
<!--                  <div class="item-button"><a href="wishlist.html" class="mv-btn mv-btn-style-11 btn-my-wishlist"><span class="btn-inner"><span class="icon fa fa-heart-o"></span><span class="number">8</span></span></a></div>-->

                  <div class="item-button dropdown mv-dropdown-style-1 script-dropdown-1">
                    <button type="button" class="mv-btn mv-btn-style-11 btn-dropdown btn-my-cart"><span class="btn-inner"><span class="icon fa fa-shopping-bag"></span><span class="number">${sessionScope['cart']== null ? '0' : sessionScope['cart'].getProducts().size()}</span></span></button>
                    <div class="dropdown-menu pull-right">
                      <div class="dropdown-menu-inner">
                        <div class="mv-block-style-39">
                            <div class="block-39-header">You have 
                                <span class="mv-color-primary">${sessionScope['cart']== null ? '0' : sessionScope['cart'].getProducts().size()} items</span> in your shopping cart</div>
                          <div class="block-39-list">
                              <c:if test="${sessionScope['cart']== null}">
                              Cart is Empty
                              </c:if>
                              
                              <c:if test="${sessionScope['cart']!= null}">
                            <c:forEach var="item" items="${sessionScope['cart'].getProducts()}">
                            <article class="item post">
                              <div class="item-inner">
                                <div class="mv-dp-table align-top">
                                  <div class="mv-dp-table-cell block-39-thumb">
                                    <div class="thumb-inner mv-lightbox-style-1"><a href="product-detail.html" title="Richa Rock Glove"><img src="${item.product.imageUrl}" alt="demo" class="block-39-thumb-img"/></a></div>
                                  </div>
                                  <div class="mv-dp-table-cell block-39-main">
                                    <div class="block-39-main-inner">
                                      <div class="block-39-title"><a href="product-detail.html" title="Richa Rock Glove" class="mv-overflow-ellipsis">${item.product.productName}</a></div>
                                      <div class="block-39-price"> 
                                        <div class="new-price">$${item.product.unitPrice}</div>
                                      </div>
                                      <ul class="block-24-meta mv-ul">
                                        <li class="meta-item mv-icon-left-style-3"><span class="text">Quanlity: ${item.quantity}</span></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <button type="button" title="Remove from Wishlist" class="mv-btn mv-btn-style-4 fa fa-close btn-delete-product"></button>
                              </div>
                            </article>
                              </c:forEach>
                              </c:if>
                          
                            <!-- .post-->

<!--                            <article class="item post">
                              <div class="item-inner">
                                <div class="mv-dp-table align-top">
                                  <div class="mv-dp-table-cell block-39-thumb">
                                    <div class="thumb-inner mv-lightbox-style-1"><a href="product-detail.html" title="Richa Rock Glove"><img src="images/demo/demo_80x100.png" alt="demo" class="block-39-thumb-img"/></a></div>
                                  </div>
                                  <div class="mv-dp-table-cell block-39-main">
                                    <div class="block-39-main-inner">
                                      <div class="block-39-title"><a href="product-detail.html" title="Richa Rock Glove" class="mv-overflow-ellipsis">Richa Rock Glove</a></div>
                                      <div class="block-39-price"> 
                                        <div class="new-price">$200,00</div>
                                      </div>
                                      <ul class="block-24-meta mv-ul">
                                        <li class="meta-item mv-icon-left-style-3"><span class="text">Quanlity: 2</span></li>
                                      </ul>
                                    </div>
                                  </div>
                                </div>
                                <button type="button" title="Remove from Wishlist" class="mv-btn mv-btn-style-4 fa fa-close btn-delete-product"></button>
                              </div>
                            </article>-->
                            <!-- .post-->
                          </div>

                          <div class="block-39-total mv-col-wrapper">
                            <div class="mv-col-left">total</div>
                            <div class="mv-col-right">$${sessionScope['cart'] == null ? '0' : sessionScope['cart'].getTotalPrice()}</div>
                          </div>

                          <div class="block-39-footer">
                            <div class="row">
                              <div class="col-xs-6">
                                  <a href="${pageContext.request.contextPath}/cart" class="mv-btn mv-btn-style-5 btn-5-h-45 btn-5-gray responsive-btn-5-type-2 mv-btn-block">view cart</a></div>
                              <div class="col-xs-6"><a href="${pageContext.request.contextPath}/cart/checkout" class="mv-btn mv-btn-style-5 btn-5-h-45 responsive-btn-5-type-2 mv-btn-block">checkout</a></div>
                            </div>
                          </div>
                        </div>
                        <!-- .mv-block-style-39-->
                      </div>
                    </div>
                  </div>
                </div>
                <!-- .header-shop-->
              </div>
            </div>
          </div>
        </div>
        <!-- .header-main-nav-->
      </header>
    </body>
</html>
