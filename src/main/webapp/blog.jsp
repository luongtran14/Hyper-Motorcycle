<%-- 
    Document   : blog
    Created on : Sep 28, 2022, 1:00:16 PM
    Author     : huyen
--%>


<%@page import="model.Blog" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Blog List - Motor Vehikal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon-->
    <link rel="shortcut icon" href="images/icon/favicon.ico" type="image/x-icon">

    <!-- Web Fonts-->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Varela+Round">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">

    <!-- Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="Assets/libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/libs/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/libs/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/libs/superfish-menu/css/superfish.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/libs/slick-sider/slick.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/libs/slick-sider/slick-theme.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/libs/swiper-sider/dist/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/libs/magnific-popup/dist/magnific-popup.min.css">

    <!-- Theme CSS-->
    <link rel="stylesheet" type="text/css" href="Assets/css/main.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/shortcodes.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/style-selector.css">
    <link id="style-main-color" rel="stylesheet" type="text/css" href="Assets/css/color/color1.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!-- WARNING: Respond.js doesn't work if you view the page via file://-->
    <!--if lt IE 9
    script(src='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js')
    script(src='https://oss.maxcdn.com/respond/1.4.2/respond.min.js')
    
    -->
  </head>
  <body>
    <div class="mv-site">
      <header class="header mv-header-style-1 mv-wrap">
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
                                <li><a href="login.html"><i class="fa fa-sign-in mv-color-primary"></i>&nbsp;
                                    Login</a></li>
                                <li><a href="login.html"><i class="fa fa-pencil-square-o mv-color-primary"></i>&nbsp;
                                    Register</a></li>
                                <li><a href="wishlist.html">My Wishlist</a></li>
                                <li><a href="compare.html">Compare</a></li>
                              </ul>
                            </nav>
                          </div>
                        </div>
                      </div>
                      <div class="item-button mv-btn"><a href="checkout.html" class="item-button mv-btn mv-btn-style-12"> <i class="btn-icon fa fa-shopping-cart hidden-md hidden-lg"></i><span class="btn-text hidden-xs hidden-sm">checkout</span></a></div>
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

              <div class="header-logo"><a href="home.html" title="Motor Vehikal"><img src="images/logo/logo_2.png" alt="logo" class="logo-img img-default image-live-view"/><img src="images/logo/logo_2.png" alt="logo" class="logo-img img-scroll image-live-view"/></a></div>
              <!-- .header-logo-->

              <div class="main-nav-wrapper hidden-xs hidden-sm">
                <nav class="main-nav">
                  <ul class="nav sf-menu">
                    <li class="mega-columns"><a href="home.html"><span class="menu-text">Home <i class="menu-icon fa fa-angle-down"></i></span></a>
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
                        <li><a href="product-list.html">Product List</a></li>
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
                        <li><a href="blog-list.html">Blog List</a></li>
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
                        <li><a href="login.html">Login & Register</a></li>
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
                  <div class="item-button"><a href="wishlist.html" class="mv-btn mv-btn-style-11 btn-my-wishlist"><span class="btn-inner"><span class="icon fa fa-heart-o"></span><span class="number">8</span></span></a></div>

                  <div class="item-button dropdown mv-dropdown-style-1 script-dropdown-1">
                    <button type="button" class="mv-btn mv-btn-style-11 btn-dropdown btn-my-cart"><span class="btn-inner"><span class="icon fa fa-shopping-bag"></span><span class="number">3</span></span></button>
                    <div class="dropdown-menu pull-right">
                      <div class="dropdown-menu-inner">
                        <div class="mv-block-style-39">
                          <div class="block-39-header">You have <span class="mv-color-primary">3 items</span> in your shopping cart</div>
                          <div class="block-39-list">
                            <article class="item post">
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
                            </article>
                            <!-- .post-->

                            <article class="item post">
                              <div class="item-inner">
                                <div class="mv-dp-table align-top">
                                  <div class="mv-dp-table-cell block-39-thumb">
                                    <div class="thumb-inner mv-lightbox-style-1"><a href="product-detail.html" title="Richa Rock Glove"><img src="images/demo/demo_80x100.png" alt="demo" class="block-39-thumb-img"/></a></div>
                                  </div>
                                  <div class="mv-dp-table-cell block-39-main">
                                    <div class="block-39-main-inner">
                                      <div class="block-39-title"><a href="product-detail.html" title="Richa Rock Glove" class="mv-overflow-ellipsis">Richa Rock Glove Richa Rock Glove</a></div>
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
                            </article>
                            <!-- .post-->

                            <article class="item post">
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
                            </article>
                            <!-- .post-->
                          </div>

                          <div class="block-39-total mv-col-wrapper">
                            <div class="mv-col-left">total</div>
                            <div class="mv-col-right">$3600.00</div>
                          </div>

                          <div class="block-39-footer">
                            <div class="row">
                              <div class="col-xs-6"><a href="cart.html" class="mv-btn mv-btn-style-5 btn-5-h-45 btn-5-gray responsive-btn-5-type-2 mv-btn-block">view cart</a></div>
                              <div class="col-xs-6"><a href="checkout.html" class="mv-btn mv-btn-style-5 btn-5-h-45 responsive-btn-5-type-2 mv-btn-block">checkout</a></div>
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
      <!-- .header-->

      <section class="main-banner mv-wrap">
        <div data-image-src="images/background/demo_bg_1920x1680.png" class="mv-banner-style-1 mv-bg-overlay-dark overlay-0-85 mv-parallax">
          <div class="page-name mv-caption-style-6">
            <div class="container">
              <div class="mv-title-style-9"><span class="main">blog list</span><img src="images/icon/icon_line_polygon_line.png" alt="icon" class="line"/></div>
            </div>
          </div>
        </div>
      </section>
      <!-- .main-banner-->

      <section class="main-breadcrumb mv-wrap">
        <div class="mv-breadcrumb-style-1">
          <div class="container">
            <ul class="breadcrumb-1-list">
              <li><a href="home.html"><i class="fa fa-home"></i></a></li>
              <li><a href="#">Blog</a></li>
              <li><a>Blog list</a></li>
            </ul>
          </div>
        </div>
      </section>
      <!-- .main-breadcrumb-->

      <section class="mv-main-body blog-list-main mv-bg-gray mv-wrap">
        <div class="container">
          <div class="row mv-content-sidebar">
            <div class="mv-c-s-content col-xs-12 col-md-8 col-lg-9">
              <div class="mv-list-blog-wrapper mv-block-style-15">
                <div class="row block-15-list mv-list-blog">
				 
                  <article class="col-xs-6 col-sm-4 col-md-12 item item-blog-list post">
				            <c:forEach items="${Blog}" var="o">
                    <div class="item-inner mv-box-shadow-gray-1">
                      <div class="item-inner-relative">
                        <div class="block-15-thumb mv-effect-relative"><a href="blogdetail?bid=${o.blogID}" title="${o.title}"><span style="background-image: url(${o.image});" class="block-15-thumb-img"></span></a><span class="polygon hidden-xs hidden-sm"></span><span onclick="$(this).remove()" class="block-15-date mv-date-style-1 hidden-xs hidden-sm"><span class="day">${o.createdDate}</span></span></div>
                        <!-- .block-15-thumb-->

                        <div class="block-15-main">
                          <div class="block-15-main-inner">
                            <div class="block-15-title"><a href="blogdetail?bid=${o.blogID}" title="${o.title}" class="mv-overflow-ellipsis">${o.title}</a></div>
                            <ul class="block-15-meta mv-ul">
                              <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text"> <span class="icon"><i class="fa fa-pencil-square-o"></i></span>${o.firstName} ${o.lastname}</span</a></li>
                              <!--<li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text"> <span class="icon"><i class="fa fa-comments-o"></i></span>150</span></a></li>-->
                              <li class="meta-item mv-icon-left-style-3 hidden-md hidden-lg"><a href="blogdetail?bid=${o.blogID}"><span class="text"><span class="icon"><i class="fa fa-calendar"></i></span>${o.createdDate}</span></a></li>
                            </ul>
                            <div class="block-15-content">${o.blogContent}</div>
                            <div class="block-15-read-more"><a href="blogdetail?bid=${o.blogID}" class="mv-btn mv-btn-style-1 btn-1-h-40 btn-1-gray responsive-btn-1-type-5 btn-read-more"><span class="btn-inner"><i class="btn-icon fa fa-long-arrow-right"></i><span class="btn-text">read more</span></span></a></div>
                            <div class="block-15-post-format hidden-xs hidden-sm"><i class="icon fa fa-file-image-o"></i></div>
                          </div>
                        </div>
                        <!-- .block-15-main-->
                      </div>
                    </div>
					          </c:forEach>
                  </article>
				  
                  <!-- .post-->

             <!--  <article class="col-xs-6 col-sm-4 col-md-12 item item-blog-list post">
                    <div class="item-inner mv-box-shadow-gray-1">
                      <div class="item-inner-relative">
                        <div class="block-15-thumb mv-effect-relative"><a href="blog-detail.html" title="Kenseth takes Dover, but others' mistakes matter more"><span style="background-image: url(images/demo/demo_820x540.png);" class="block-15-thumb-img"></span></a><span class="polygon hidden-xs hidden-sm"></span><span onclick="$(this).remove()" class="block-15-date mv-date-style-1 hidden-xs hidden-sm"><span class="day">29</span><span class="month">sep</span></span></div>
                        <!-- .block-15-thumb-->

                     <!--     <div class="block-15-main">
                          <div class="block-15-main-inner">
                            <div class="block-15-title"><a href="blog-detail.html" title="Kenseth takes Dover, but others' mistakes matter more" class="mv-overflow-ellipsis">Kenseth takes Dover, but others' mistakes matter more</a></div>
                            <ul class="block-15-meta mv-ul">
                              <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text"> <span class="icon"><i class="fa fa-pencil-square-o"></i></span>Tony Jahson</span></a></li>
                              <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text"> <span class="icon"><i class="fa fa-comments-o"></i></span>150</span></a></li>
                              <li class="meta-item mv-icon-left-style-3 hidden-md hidden-lg"><a href="#"><span class="text"><span class="icon"><i class="fa fa-calendar"></i></span>Sep 29, 2016</span></a></li>
                            </ul>
                            <div class="block-15-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci</div>
                            <div class="block-15-read-more"><a href="#" class="mv-btn mv-btn-style-1 btn-1-h-40 btn-1-gray responsive-btn-1-type-5 btn-read-more"><span class="btn-inner"><i class="btn-icon fa fa-long-arrow-right"></i><span class="btn-text">read more</span></span></a></div>
                            <div class="block-15-post-format hidden-xs hidden-sm"><i class="icon fa fa-motorcycle"></i></div>
                          </div>
                        </div>
                        <!-- .block-15-main-->
                    <!--    </div>
                    </div>
                  </article>
                  <!-- .post-->

                <!--  <article class="col-xs-6 col-sm-4 col-md-12 item item-blog-list post">
                    <div class="item-inner mv-box-shadow-gray-1">
                      <div class="item-inner-relative">
                        <div class="block-15-thumb mv-effect-relative"><a href="blog-detail.html" title="Hamlin fights back to win Chase opener at Chicagoland"><span style="background-image: url(images/demo/demo_820x540.png);" class="block-15-thumb-img"></span></a><span class="polygon hidden-xs hidden-sm"></span><span onclick="$(this).remove()" class="block-15-date mv-date-style-1 hidden-xs hidden-sm"><span class="day">29</span><span class="month">sep</span></span></div>
                        <!-- .block-15-thumb-->

                      <!--  <div class="block-15-main">
                          <div class="block-15-main-inner">
                            <div class="block-15-title"><a href="blog-detail.html" title="Hamlin fights back to win Chase opener at Chicagoland" class="mv-overflow-ellipsis">Hamlin fights back to win Chase opener at Chicagoland</a></div>
                            <ul class="block-15-meta mv-ul">
                              <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text"> <span class="icon"><i class="fa fa-pencil-square-o"></i></span>Tony Jahson</span></a></li>
                              <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text"> <span class="icon"><i class="fa fa-comments-o"></i></span>150</span></a></li>
                              <li class="meta-item mv-icon-left-style-3 hidden-md hidden-lg"><a href="#"><span class="text"><span class="icon"><i class="fa fa-calendar"></i></span>Sep 29, 2016</span></a></li>
                            </ul>
                            <div class="block-15-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci</div>
                            <div class="block-15-read-more"><a href="#" class="mv-btn mv-btn-style-1 btn-1-h-40 btn-1-gray responsive-btn-1-type-5 btn-read-more"><span class="btn-inner"><i class="btn-icon fa fa-long-arrow-right"></i><span class="btn-text">read more</span></span></a></div>
                            <div class="block-15-post-format hidden-xs hidden-sm"><i class="icon fa fa-play-circle-o"></i></div>
                          </div>
                        </div>
                        <!-- .block-15-main-->
                     <!--   </div>
                    </div>
                  </article> 
                  <!-- .post-->
                </div>
              </div>
              <!-- .mv-list-blog-wrapper-->
              <div class="mv-pagination-wrapper">
                <div class="mv-pagination-style-1 has-count-post">
                  <div class="count-post mv-title-style-10"><span class="number">12</span> Products of <span class="number">5</span> Pages</div>
                  <ul class="pagination">
                    <li class="prev"><a href="#">prev</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li class="active"><a>3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li class="next"><a href="#">next</a></li>
                  </ul>
                </div>
                <!-- .mv-pagination-style-1-->
              </div>
              <!-- .mv-pagination-wrapper-->
            </div>
            <!-- .mv-c-s-content-->

            <div class="mv-c-s-sidebar col-xs-12 col-md-4 col-lg-3 hidden-xs hidden-sm">
              <div class="mv-c-s-sidebar-inner">
                <div class="mv-aside mv-aside-search">
                  <div class="aside-title mv-title-style-11">search</div>
                  <div class="aside-body">
				 
                    <form method="get" class="form-aside-search" action="searchblog" >
                      <div class="mv-inputbox-icon right">
                        <input value="${txtS}" name="txt" type="text" class="mv-inputbox mv-inputbox-style-2"/>
                        <button type="submit" class="icon mv-btn mv-btn-style-4 fa fa-search"></button>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- .mv-aside-search-->

                <!--<div class="mv-aside mv-aside-category-blog">
                  <div class="aside-title mv-title-style-11">category blog</div>
                  <div class="aside-body">
                    <nav class="mv-menu-style-2">
                      <ul>
                        <li><a href="#" class="mv-col-wrapper"><span class="mv-col-left menu-text mv-icon-left-style-5">News </span><span class="mv-col-right menu-number">78</span></a></li>
                        <li><a href="#" class="mv-col-wrapper"><span class="mv-col-left menu-text mv-icon-left-style-5">All time Champions</span><span class="mv-col-right menu-number">38</span></a></li>
                        <li><a href="#" class="mv-col-wrapper"><span class="mv-col-left menu-text mv-icon-left-style-5">Starting Lineup </span><span class="mv-col-right menu-number">16</span></a></li>
                        <li class="active"><a href="#" class="mv-col-wrapper"><span class="mv-col-left menu-text mv-icon-left-style-5">Driver Averages </span><span class="mv-col-right menu-number">95</span></a></li>
                        <li><a href="#" class="mv-col-wrapper"><span class="mv-col-left menu-text mv-icon-left-style-5">Past race Winners </span><span class="mv-col-right menu-number">27</span></a></li>
                        <li><a href="#" class="mv-col-wrapper"><span class="mv-col-left menu-text mv-icon-left-style-5">Final Practice Speeds </span><span class="mv-col-right menu-number">39</span></a></li>
                        <li><a href="#" class="mv-col-wrapper"><span class="mv-col-left menu-text mv-icon-left-style-5">2015 Driver ratings </span><span class="mv-col-right menu-number">50</span></a></li>
                        <li><a href="#" class="mv-col-wrapper"><span class="mv-col-left menu-text mv-icon-left-style-5">Loop data</span><span class="mv-col-right menu-number">10</span></a></li>
                      </ul>
                    </nav>
                  </div>
                </div>
                <!-- .mv-aside-category-blog-->

                <div class="mv-aside mv-aside-recent-posts">
                  <div class="aside-title mv-title-style-11">recent posts</div>
                  <div class="aside-body">
                    <div class="recent-posts-list">
                      <div class="mv-block-style-24">
                        <div class="block-24-list">
                          <article class="item item-aside-recent-posts post">
						   <c:forEach items="${last}" var="o">
                            <div class="item-inner">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-24-thumb">
                                  <div class="thumb-inner mv-lightbox-style-1"><a href="blogdetail?bid=${o.blogID}" title="${o.title}"><span style="background-image: url(${o.image});" class="block-24-thumb-img"></span></a><a href="${o.image}" data-lightbox-href="blogdetail?bid=${o.blogID}" title="${o.title}" class="mv-btn mv-lightbox-item"><i class="icon fa fa-share-square-o"></i></a></div>
                                </div>
                                <div class="mv-dp-table-cell block-24-main">
                                  <div class="block-24-title"><a href="blogdetail?bid=${o.blogID}" title="${o.title}">${o.title}</a></div>
                                  <ul class="block-24-meta mv-ul">
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text">${o.firstName} ${o.lastname}</span></a></li>
                                    <!-- <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text"> <span class="icon"><i class="fa fa-comments-o"></i></span>138</span></a></li>-->
                                  </ul>
                                </div>
                              </div>
                            </div>
							  </c:forEach>
                          </article>
                          <!-- .post-->

                        <!--  <article class="item item-aside-recent-posts post">
                            <div class="item-inner">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-24-thumb">
                                  <div class="thumb-inner mv-lightbox-style-1"><a href="blog-detail.html" title="Spada Enforcer WP"><span style="background-image: url(images/demo/demo_300x400.png);" class="block-24-thumb-img"></span></a><a href="images/demo/demo_300x400.png" data-lightbox-href="blog-detail.html" title="Spada Enforcer WP" class="mv-btn mv-lightbox-item"><i class="icon fa fa-share-square-o"></i></a></div>
                                </div>
                                <div class="mv-dp-table-cell block-24-main">
                                  <div class="block-24-title"><a href="blog-detail.html" title="Logano thwarts Harvick">Logano thwarts Harvick</a></div>
                                  <ul class="block-24-meta mv-ul">
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text">Mr. Snow</span></a></li>
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text"> <span class="icon"><i class="fa fa-comments-o"></i></span>138</span></a></li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </article>
                          <!-- .post-->

                          <!--<article class="item item-aside-recent-posts post">
                            <div class="item-inner">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-24-thumb">
                                  <div class="thumb-inner mv-lightbox-style-1"><a href="blog-detail.html" title="Richa Drift Water"><span style="background-image: url(images/demo/demo_300x400.png);" class="block-24-thumb-img"></span></a><a href="images/demo/demo_300x400.png" data-lightbox-href="blog-detail.html" title="Richa Drift Water" class="mv-btn mv-lightbox-item"><i class="icon fa fa-share-square-o"></i></a></div>
                                </div>
                                <div class="mv-dp-table-cell block-24-main">
                                  <div class="block-24-title"><a href="blog-detail.html" title="Hamlin fights back to win">Hamlin fights back to win</a></div>
                                  <ul class="block-24-meta mv-ul">
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text">Mr. Snow</span></a></li>
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text"> <span class="icon"><i class="fa fa-comments-o"></i></span>138</span></a></li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </article>
                          <!-- .post-->
                        </div>
                      </div>
                      <!-- .mv-block-style-24-->
                    </div>
                  </div>
                </div>
                <!-- .mv-aside-recent-posts-->

                <!--<div class="mv-aside mv-aside-tags">
                  <div class="aside-title mv-title-style-11">tags</div>
                  <div class="aside-body">
                    <div class="tag-list">
                      <div class="mv-btn-group">
                        <div class="group-inner"><a href="#" class="mv-btn mv-btn-style-22">Helmet</a><a href="#" class="mv-btn mv-btn-style-22 active">Gloves</a><a href="#" class="mv-btn mv-btn-style-22">Sercurity</a><a href="#" class="mv-btn mv-btn-style-22">Boots</a><a href="#" class="mv-btn mv-btn-style-22">Clothing</a><a href="#" class="mv-btn mv-btn-style-22">Luggage</a><a href="#" class="mv-btn mv-btn-style-22">Maintenance</a><a href="#" class="mv-btn mv-btn-style-22">Bodywork</a><a href="#" class="mv-btn mv-btn-style-22">Gift</a><a href="#" class="mv-btn mv-btn-style-22">Exhauts</a><a href="#" class="mv-btn mv-btn-style-22">Tyres</a><a href="#" class="mv-btn mv-btn-style-22">Casual Wear</a><a href="#" class="mv-btn mv-btn-style-22">R&G Racing</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- .mv-aside-tags-->

                <!--<div class="mv-aside mv-aside-most-view">
                  <div class="aside-title mv-title-style-11">most view</div>
                  <div class="aside-body">
                    <div class="most-view-list">
                      <div class="mv-block-style-29">
                        <div class="block-29-list">
                          <article class="item post">
                            <div class="item-inner">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-29-date">
                                  <div class="mv-date-style-2">
                                    <div class="day">28</div>
                                    <div class="month">december</div>
                                  </div>
                                </div>
                                <div class="mv-dp-table-cell block-29-main">
                                  <div class="block-29-title"><a href="blog-detail.html" title="Harvick gets what he needs">Harvick gets what he needs</a></div>
                                  <ul class="block-29-meta mv-ul">
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text">Mr. Snow</span></a></li>
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="icon"><i class="fa fa-comments-o"></i></span><span class="text">156</span></a></li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </article>
                          <!-- .post-->

                         <!-- <article class="item post">
                            <div class="item-inner">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-29-date">
                                  <div class="mv-date-style-2">
                                    <div class="day">25</div>
                                    <div class="month">November</div>
                                  </div>
                                </div>
                                <div class="mv-dp-table-cell block-29-main">
                                  <div class="block-29-title"><a href="blog-detail.html" title="Logano spins blocking Kenseth to win">Logano spins blocking Kenseth to win</a></div>
                                  <ul class="block-29-meta mv-ul">
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text">Mr. Snow</span></a></li>
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="icon"><i class="fa fa-comments-o"></i></span><span class="text">156</span></a></li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </article>
                          <!-- .post-->

                          <!--<article class="item post">
                            <div class="item-inner">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-29-date">
                                  <div class="mv-date-style-2">
                                    <div class="day">15</div>
                                    <div class="month">October</div>
                                  </div>
                                </div>
                                <div class="mv-dp-table-cell block-29-main">
                                  <div class="block-29-title"><a href="blog-detail.html" title="Gordon clinches Homestead">Gordon clinches Homestead</a></div>
                                  <ul class="block-29-meta mv-ul">
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="text">Mr. Snow</span></a></li>
                                    <li class="meta-item mv-icon-left-style-3"><a href="#"><span class="icon"><i class="fa fa-comments-o"></i></span><span class="text">156</span></a></li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </article>
                          <!-- .post-->
                        </div>
                      </div>
                      <!-- .mv-block-style-29-->
                    </div>
                  </div>
                </div>
                <!-- .mv-aside-most-view-->
              </div>
            </div>
            <!-- .mv-c-s-sidebar-->
          </div>
        </div>
      </section>
      <!-- .mv-main-body-->

      <section class="main-newsletter mv-newsletter-style-1 mv-wrap">
        <div style="background-image: url(images/background/demo_bg_1920x1680.png)" class="newsletter-bg">
          <div class="container">
            <form method="GET" class="form-newsletter">
              <label class="hidden-xs mv-label text-right text-uppercase">Newsletter</label>
              <div class="mv-field">
                <div class="mv-inputbox-group">
                  <input type="text" name="test138" placeholder="Subscribe your email here" data-mv-placeholder="Subscribe your email here" class="mv-inputbox mv-inputbox-style-3"/>
                  <div class="inputbox-addon">
                    <button type="button" class="mv-btn mv-btn-block mv-btn-style-13"><span class="btn-icon fa fa-long-arrow-right"></span></button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </section>
      <!-- .mv-newsletter-style-1-->

      <footer class="footer mv-footer-style-2 mv-wrap">
        <div style="background-image: url(images/background/demo_bg_1920x1200.png)" class="footer-bg">
          <div class="container">
            <div class="footer-inner">
              <div id="footerNav" role="tablist" aria-multiselectable="true" class="footer-nav panel-group">
                <div class="row">
                  <div class="col-md-3 footer-nav-col footer-contact"><a data-toggle="collapse" data-parent="#footerNav" href="#footerContact" aria-expanded="true" aria-controls="footerContact" class="footer-title collapsed">contact info</a>
                    <div id="footerContact" role="tabpanel" class="footer-main collapse">
                      <ul class="mv-ul footer-main-inner list">
                        <li class="mv-icon-left-style-1 item">
                          <div class="mv-dp-table align-middle">
                            <div class="mv-dp-table-cell icon"><i class="icon-fa fa fa-map-marker mv-f-22 mv-color-primary"></i></div>
                            <div class="mv-dp-table-cell text">123 Sky Tower address name, Los Algeles</div>
                          </div>
                        </li>
                        <li class="mv-icon-left-style-1 item">
                          <div class="mv-dp-table align-middle">
                            <div class="mv-dp-table-cell icon"><i class="icon-fa fa fa-mobile mv-f-26 mv-color-primary"></i></div>
                            <div class="mv-dp-table-cell text">PHONE : (012) 345 6789</div>
                          </div>
                        </li>
                        <li class="mv-icon-left-style-1 item">
                          <div class="mv-dp-table align-middle">
                            <div class="mv-dp-table-cell icon"><i class="icon-fa fa fa-envelope-o mv-f-20 mv-color-primary"></i></div>
                            <div class="mv-dp-table-cell text">EMAIL:<a href="mailto:info@Juxdesign.com"> info@Juxdesign.com</a></div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>

                  <div class="col-md-3 footer-nav-col footer-about-us"><a data-toggle="collapse" data-parent="#footerNav" href="#footerAboutUs" aria-expanded="false" aria-controls="footerAboutUs" class="footer-title collapsed">about us</a>
                    <div id="footerAboutUs" role="tabpanel" class="footer-main collapse">
                      <div class="footer-main-inner">
                        <div class="about-us-content">
                          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam.</p>
                          <p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip</p>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-3 footer-nav-col footer-faqs"><a data-toggle="collapse" data-parent="#footerNav" href="#footerFaqs" aria-expanded="false" aria-controls="footerFaqs" class="footer-title collapsed">faqs</a>
                    <div id="footerFaqs" role="tabpanel" class="footer-main collapse">
                      <ul class="mv-ul footer-main-inner list">
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>Contact us</span></a></li>
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>Returns</span></a></li>
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>Site Map</span></a></li>
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>Brands</span></a></li>
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>Gift Vouchers</span></a></li>
                      </ul>
                    </div>
                  </div>

                  <div class="col-md-3 footer-nav-col footer-order-tracking"><a data-toggle="collapse" data-parent="#footerNav" href="#footerOrderTracking" aria-expanded="false" aria-controls="footerOrderTracking" class="footer-title collapsed">order tracking</a>
                    <div id="footerOrderTracking" role="tabpanel" class="footer-main collapse">
                      <ul class="mv-ul footer-main-inner list">
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>About us</span></a></li>
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>Returns</span></a></li>
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>Contact us</span></a></li>
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>Term & Conditions</span></a></li>
                        <li class="item mv-icon-left-style-2"><a href="#"><span class="text"><span class="icon"><i class="fa fa-angle-right"></i></span>Privacy Policy</span></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <!-- .footer-nav-->

              <div class="footer-payment">
                <ul class="mv-ul list">
                  <li class="item"><a href="#"><img src="images/icon/icon_paypal.png" alt="icon"/></a></li>
                  <li class="item"><a href="#"><img src="images/icon/icon_master_card.png" alt="icon"/></a></li>
                  <li class="item"><a href="#"><img src="images/icon/icon_american_express.png" alt="icon"/></a></li>
                  <li class="item"><a href="#"><img src="images/icon/icon_visa.png" alt="icon"/></a></li>
                </ul>
              </div>
              <!-- .footer-payment-->

              <div class="footer-copyright text-center">Copyright &copy; 2016 Motor Vehikal by<a href="http://www.joomlaux.com/" target="_blank"> JUXdesign.</a> All Rights Reserved.</div>
              <!-- .footer-copyright-->
            </div>
          </div>
        </div>

        <button type="button" class="mv-btn mv-btn-style-17 mv-back-to-top fixed-right-bottom"><i class="btn-icon fa fa-long-arrow-up"></i></button>
      </footer>
      <!-- .footer-->

      <div class="off-canvas-wrapper-left hidden-md hidden-lg">
        <div class="off-canvas-left">
          <div class="off-canvas-header">
            <button class="btn-close-off-canvas click-close-off-canvas">x</button>
          </div>
          <div class="off-canvas-body">
            <nav class="main-nav">
              <ul class="nav sf-menu expand-all">
                <li class="mega-columns"><a href="home.html"><span class="menu-text">Home <i class="menu-icon fa fa-angle-down"></i></span></a>
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
                    <li><a href="product-list.html">Product List</a></li>
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
                    <li><a href="blog-list.html">Blog List</a></li>
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
                    <li><a href="login.html">Login & Register</a></li>
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
        </div>
      </div>
      <!-- .off-canvas-wrapper-left-->

      <div class="off-canvas-wrapper-right hidden-md hidden-lg">
        <div class="off-canvas-right">
          <div class="off-canvas-header">
            <button class="btn-close-off-canvas click-close-off-canvas">x</button>
          </div>

          <div class="off-canvas-body">
            <div class="mv-aside mv-aside-search">
              <div class="aside-title mv-title-style-11">search</div>
              <div class="aside-body">
                <form method="GET" class="form-aside-search">
                  <div class="mv-inputbox-icon right">
                    <input type="text" name="test138" class="mv-inputbox mv-inputbox-style-2"/>
                    <button type="submit" class="icon mv-btn mv-btn-style-4 fa fa-search"></button>
                  </div>
                </form>
              </div>
            </div>
            <!-- .mv-aside-search-->

            <div class="mv-aside mv-aside-filter-by-price">
              <div class="aside-title mv-title-style-11">filter by price</div>
              <div class="aside-body">
                <form method="GET" class="form-aside-filter-by-price">
                  <div class="mv-slider-range">
                    <div class="slider-range-wrapper mv-slider-range-style-1">
                      <div class="slider-range"></div>
                    </div>
                    <div class="mv-dp-table align-middle">
                      <div class="mv-dp-table-cell view-values">Price: $<span class="min-value"></span> - $<span class="max-value"></span></div>
                      <div class="mv-dp-table-cell filter-button">
                        <button type="submit" class="mv-btn mv-btn-style-5 btn-5-h-30">filter</button>
                      </div>
                    </div>
                  </div>
                </form>

                <nav class="filter-by-price-menu mv-menu-style-1">
                  <ul>
                    <li><a href="#" class="mv-icon-left-style-5">$10 - $50<span class="sub-text">&nbsp; (8)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">$50 - $100<span class="sub-text">&nbsp; (8)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">$100 - $500<span class="sub-text">&nbsp; (3)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">$500 - $1000<span class="sub-text">&nbsp; (16)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">$1000 - $5000<span class="sub-text">&nbsp; (6)</span></a></li>
                  </ul>
                </nav>
              </div>
            </div>
            <!-- .mv-aside-filter-by-price-->

            <div class="mv-aside mv-aside-product-type">
              <div class="aside-title mv-title-style-11">product type</div>
              <div class="aside-body">
                <nav class="product-type-menu mv-menu-style-1">
                  <ul>
                    <li><a href="#" class="mv-icon-left-style-5">Full Face Helmets<span class="sub-text">&nbsp; (8)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Flip Up Helmets<span class="sub-text">&nbsp; (3)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Open Face Helmets<span class="sub-text">&nbsp; (38)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Adventure Helmets<span class="sub-text">&nbsp; (12)</span></a>
                      <ul class="sub-menu">
                        <li><a href="#" class="mv-icon-left-style-5">AGV Helmets<span class="sub-text">&nbsp; (3)</span></a></li>
                        <li><a href="#" class="mv-icon-left-style-5">Arai Helmets<span class="sub-text">&nbsp; (12)</span></a></li>
                        <li class="active"><a href="#" class="mv-icon-left-style-5">Bell Helmets<span class="sub-text">&nbsp; (8)</span></a></li>
                        <li><a href="#" class="mv-icon-left-style-5">BOX Helmets<span class="sub-text">&nbsp; (15)</span></a></li>
                      </ul>
                    </li>
                    <li><a href="#" class="mv-icon-left-style-5">Trousers<span class="sub-text">&nbsp; (19)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Dresses<span class="sub-text">&nbsp; (34)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Shoes<span class="sub-text">&nbsp; (22)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Accessories<span class="sub-text">&nbsp; (17)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Sale<span class="sub-text">&nbsp; (3)</span></a></li>
                    <li><a href="#" class="mv-icon-left-style-5"> <strong>View More</strong><span class="sub-text">&nbsp; (50) &nbsp;</span><i class="fa fa-caret-down"></i></a></li>
                  </ul>
                </nav>
              </div>
            </div>
            <!-- .mv-aside-product-type-->

            <div class="mv-aside mv-aside-filter-by-size">
              <div class="aside-title mv-title-style-11">filter by</div>
              <div class="aside-body">
                <nav class="filter-by-price-menu mv-menu-style-1">
                  <ul>
                    <li><a href="#" class="mv-icon-left-style-5">Extra Large</a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Extra Small</a></li>
                    <li class="active"><a href="#" class="mv-icon-left-style-5">Large</a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Medium</a></li>
                    <li><a href="#" class="mv-icon-left-style-5">One Size Fits All</a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Small</a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Taille Unique</a></li>
                    <li><a href="#" class="mv-icon-left-style-5">Sale</a></li>
                  </ul>
                </nav>
              </div>
            </div>
            <!-- .mv-aside-filter-by-size-->

            <div class="mv-aside mv-aside-size">
              <div class="aside-title mv-title-style-11">size</div>
              <div class="aside-body">
                <nav class="size-list">
                  <div class="mv-btn-group">
                    <div class="group-inner"><a href="#" class="mv-btn mv-btn-style-21">XXL</a><a href="#" class="mv-btn mv-btn-style-21 active">XL</a><a href="#" class="mv-btn mv-btn-style-21">L</a><a href="#" class="mv-btn mv-btn-style-21">M</a><a href="#" class="mv-btn mv-btn-style-21">S</a></div>
                  </div>
                </nav>
              </div>
            </div>
            <!-- .mv-aside-size-->

            <div class="mv-aside mv-aside-color">
              <div class="aside-title mv-title-style-11">color</div>
              <div class="aside-body">
                <div class="color-list mv-list-inline-style-1 space-10">
                  <ul class="list-inline-1">
                    <li class="active"><a href="#"><span style="background-color: #7bef66;" class="icon-color"></span></a></li>
                    <li><a href="#"><span style="background-color: #ff8888;" class="icon-color"></span></a></li>
                    <li><a href="#"><span style="background-color: #c4dd66;" class="icon-color"></span></a></li>
                    <li><a href="#"><span style="background-color: #94b7f7;" class="icon-color"></span></a></li>
                    <li><a href="#"><span style="background-color: #a3fbff;" class="icon-color"></span></a></li>
                    <li><a href="#"><span style="background-color: #f7fb0d;" class="icon-color"></span></a></li>
                    <li><a href="#"><span style="background-color: #7b7878;" class="icon-color"></span></a></li>
                    <li><a href="#"><span style="background-color: #d041ff;" class="icon-color"></span></a></li>
                    <li><a href="#"><span style="background-color: #fdab14;" class="icon-color"></span></a></li>
                    <li><a href="#"><span style="background-color: #eeeeee" class="icon-color"></span></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- .mv-aside-color-->

            <div class="mv-aside mv-aside-products">
              <div class="aside-title mv-title-style-11">products</div>
              <div class="aside-body">
                <div class="products-list">
                  <div class="mv-block-style-24">
                    <div class="block-24-list">
                      <article class="item post">
                        <div class="item-inner">
                          <div class="mv-dp-table">
                            <div class="mv-dp-table-cell block-24-thumb">
                              <div class="thumb-inner mv-lightbox-style-1"><a href="product-detail.html" title="Open Face Helmets"><img src="images/demo/demo_300x400.png" alt="demo"/></a><a href="images/demo/demo_300x400.png" title="Open Face Helmets" data-lightbox-href="product-detail.html" class="mv-btn mv-btn-style-20 mv-lightbox-item"><i class="icon fa fa-search"></i></a></div>
                            </div>
                            <div class="mv-dp-table-cell block-24-main">
                              <div class="block-24-title"><a href="product-detail.html" title="Open Face Helmets" class="mv-overflow-ellipsis">Open Face Helmets</a></div>
                              <div class="block-24-price">
                                <div class="new-price">$200,00</div>
                                <div class="old-price">$250,99</div>
                              </div>
                              <div data-rate="true" data-score="4.0" class="block-24-rate mv-rate text-left">
                                <div class="rate-inner mv-f-12">
                                  <div class="stars-wrapper empty-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                                  <div class="stars-wrapper filled-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </article>
                      <!-- .post-->

                      <article class="item post">
                        <div class="item-inner">
                          <div class="mv-dp-table">
                            <div class="mv-dp-table-cell block-24-thumb">
                              <div class="thumb-inner mv-lightbox-style-1"><a href="product-detail.html" title="Spada Enforcer WP"><img src="images/demo/demo_300x400.png" alt="demo"/></a><a href="images/demo/demo_300x400.png" title="Spada Enforcer WP" data-lightbox-href="product-detail.html" class="mv-btn mv-btn-style-20 mv-lightbox-item"><i class="icon fa fa-search"></i></a></div>
                            </div>
                            <div class="mv-dp-table-cell block-24-main">
                              <div class="block-24-title"><a href="product-detail.html" title="Spada Enforcer WP" class="mv-overflow-ellipsis">Spada Enforcer WP Spada Enforcer WP</a></div>
                              <div class="block-24-price">
                                <div class="new-price">$300,00</div>
                                <div class="old-price">$400,99</div>
                              </div>
                              <div data-rate="true" data-score="5.0" class="block-24-rate mv-rate text-left">
                                <div class="rate-inner mv-f-12">
                                  <div class="stars-wrapper empty-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                                  <div class="stars-wrapper filled-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </article>
                      <!-- .post-->

                      <article class="item post">
                        <div class="item-inner">
                          <div class="mv-dp-table">
                            <div class="mv-dp-table-cell block-24-thumb">
                              <div class="thumb-inner mv-lightbox-style-1"><a href="product-detail.html" title="Richa Drift Water"><img src="images/demo/demo_300x400.png" alt="demo"/></a><a href="images/demo/demo_300x400.png" title="Richa Drift Water" data-lightbox-href="product-detail.html" class="mv-btn mv-btn-style-20 mv-lightbox-item"><i class="icon fa fa-search"></i></a></div>
                            </div>
                            <div class="mv-dp-table-cell block-24-main">
                              <div class="block-24-title"><a href="product-detail.html" title="Richa Drift Water" class="mv-overflow-ellipsis">Richa Drift Water</a></div>
                              <div class="block-24-price">
                                <div class="new-price">$210,00</div>
                                <div class="old-price">$290,99</div>
                              </div>
                              <div data-rate="true" data-score="3.0" class="block-24-rate mv-rate text-left">
                                <div class="rate-inner mv-f-12">
                                  <div class="stars-wrapper empty-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                                  <div class="stars-wrapper filled-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </article>
                      <!-- .post-->
                    </div>
                  </div>
                  <!-- .mv-block-style-24-->
                </div>
              </div>
            </div>
            <!-- .mv-aside-products-->

            <div class="mv-aside mv-aside-tags">
              <div class="aside-title mv-title-style-11">tags</div>
              <div class="aside-body">
                <div class="tag-list">
                  <div class="mv-btn-group">
                    <div class="group-inner"><a href="#" class="mv-btn mv-btn-style-22">Helmet</a><a href="#" class="mv-btn mv-btn-style-22 active">Gloves</a><a href="#" class="mv-btn mv-btn-style-22">Sercurity</a><a href="#" class="mv-btn mv-btn-style-22">Boots</a><a href="#" class="mv-btn mv-btn-style-22">Clothing</a><a href="#" class="mv-btn mv-btn-style-22">Luggage</a><a href="#" class="mv-btn mv-btn-style-22">Maintenance</a><a href="#" class="mv-btn mv-btn-style-22">Bodywork</a><a href="#" class="mv-btn mv-btn-style-22">Gift</a><a href="#" class="mv-btn mv-btn-style-22">Exhauts</a><a href="#" class="mv-btn mv-btn-style-22">Tyres</a><a href="#" class="mv-btn mv-btn-style-22">Casual Wear</a><a href="#" class="mv-btn mv-btn-style-22">R&G Racing</a></div>
                  </div>
                </div>
              </div>
            </div>
            <!-- .mv-aside-tags-->
          </div>
        </div>
      </div>
      <!-- .off-canvas-wrapper-right-->
    </div>
    <!-- .mv-site-->

    <div class="popup-wrapper">
      <div id="popupSearch" tabindex="-1" role="dialog" aria-hidden="true" class="popup-search modal fade modal-effect-zoom mv-modal-style-2">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <form method="GET" action="/motor_vehikal_html/search.html" class="form-search">
              <div class="mv-inputbox-icon right">
                <input type="text" name="test138" data-mv-placeholder="Type here and enter to search" placeholder="Type here and enter to search" class="mv-inputbox mv-inputbox-style-5"/>
                <button type="submit" class="icon mv-btn mv-btn-style-4"><i class="fa fa-search"></i></button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- .popup-search-->
    </div>
    <!-- .popup-wrapper-->

    <!-- Vendor jQuery-->
    <script type="text/javascript" src="Assets/libs/jquery/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="Assets/libs/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="Assets/libs/smoothscroll/SmoothScroll.min.js"></script>
    <script type="text/javascript" src="Assets/libs/superfish-menu/js/superfish.min.js"></script>
    <script type="text/javascript" src="Assets/libs/jquery-ui/jquery-ui.min.js"></script>
    <script type="text/javascript" src="Assets/libs/jquery-ui/external/touch-punch/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript" src="Assets/libs/jquery-ui/external/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" src="Assets/libs/parallax/parallax.min.js"></script>
    <script type="text/javascript" src="Assets/libs/jquery-countto/jquery.countTo.min.js"></script>
    <script type="text/javascript" src="Assets/libs/jquery-appear/jquery.appear.min.js"></script>
    <script type="text/javascript" src="Assets/libs/as-pie-progress/jquery-asPieProgress.min.js"></script>
    <script type="text/javascript" src="Assets/libs/caroufredsel/helper-plugins/jquery.touchSwipe.min.js"></script>
    <script type="text/javascript" src="Assets/libs/caroufredsel/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script type="text/javascript" src="Assets/libs/isotope/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="Assets/libs/isotope/fit-columns.min.js"></script>
    <script type="text/javascript" src="Assets/libs/slick-sider/slick.min.js"></script>
    <script type="text/javascript" src="Assets/libs/lwt-countdown/jquery.lwtCountdown-1.0.min.js"></script>
    <script type="text/javascript" src="Assets/libs/swiper-sider/dist/js/swiper.min.js"></script>
    <script type="text/javascript" src="Assets/libs/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="Assets/libs/jplayer/dist/jplayer/jquery.jplayer.min.js"></script>
    <script type="text/javascript" src="Assets/libs/jquery-cookie/jquery.cookie.min.js"></script>

    <!-- Theme Script-->
    <script type="text/javascript" src="Assets/js/style.selector.js"></script>
    <script type="text/javascript" src="Assets/js/main.js"></script>
  </body>
</html>

