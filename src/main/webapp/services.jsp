<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : services
    Created on : Sep 30, 2022, 7:58:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Home 1 - Motor Vehikal</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Favicon-->
        <link rel="shortcut icon" href="images/icon/favicon.ico" type="image/x-icon">

        <!-- Web Fonts-->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Varela+Round">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">

        <!-- Vendor CSS-->
        <link rel="stylesheet" type="text/css" href="libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="libs/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="libs/jquery-ui/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="libs/superfish-menu/css/superfish.min.css">
        <link rel="stylesheet" type="text/css" href="libs/slick-sider/slick.min.css">
        <link rel="stylesheet" type="text/css" href="libs/slick-sider/slick-theme.min.css">
        <link rel="stylesheet" type="text/css" href="libs/swiper-sider/dist/css/swiper.min.css">
        <link rel="stylesheet" type="text/css" href="libs/magnific-popup/dist/magnific-popup.min.css">

        <!-- Theme CSS-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/shortcodes.css">
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <link rel="stylesheet" type="text/css" href="css/style-selector.css">
        <link id="style-main-color" rel="stylesheet" type="text/css" href="css/color/color1.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

        <!-- CSS only -->
        <!-- CSS only -->
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
        <!-- WARNING: Respond.js doesn't work if you view the page via file://-->
        <!--if lt IE 9
        script(src='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js')
        script(src='https://oss.maxcdn.com/respond/1.4.2/respond.min.js')
        
        
        
        -->
        <style>
            a {
                text-decoration: none ; 
                color: black ; 
            }
            a:hover , a:focus {   text-decoration: none ; 
                                  color: black ; }


        </style>
    </head>
    <body>
        <div class="mv-site">
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

                            <div class="header-logo"><a href="home.html" title="Motor Vehikal"><img src="images/logo/logo_1.png" alt="logo" class="logo-img img-default image-live-view"/><img src="images/logo/logo_2.png" alt="logo" class="logo-img img-scroll image-live-view"/></a></div>
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





            <section class="home-1-featured-products mv-wrap mt-5">
                <div class="container">
                    <div class="featured-title mv-title-style-2">
                        <div class="title-2-inner"><img src="images/icon/icon_m.png" alt="icon" class="icon image-live-view"/><span class="main">Services</span>
                        </div>
                    </div>

                    <div class="container px-5">
                        <c:if test="${role == 'true'}">
                            <div class="row justify-content-end px-5">
                                <div>
                                    <button type="button" class="btn btn-lg  shadow shadow-md addBtn">
                                        ADD
                                    </button>
                                </div>
                            </div>
                        </c:if>

                        <div class="row mt-5 justify-content-end">
                            <!--                            <div class="col-8"> 
                                                            <div class="d-flex px-5">
                                                                <div ><h3 class="pe-5">Filter: </h3></div>
                                                                <div class="dropdown">
                                                                    <button class="btn btn-outline-danger dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
                                                                        <span>Filter By:</span>
                                                                        <i class="fa fa-caret-down"></i>
                                                                    </button>
                                                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                        <li><a class="dropdown-item" href="sortServices?sort=name&page=${page}">Sort By Name</a></li>
                                                                        <li><a class="dropdown-item" href="#">Sort By Name</a></li>
                                                                        <li><a class="dropdown-item" href="#">Sort By Name</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                            
                                                        </div>-->

                            <!--                            <style>
                                                            .dropdown-toggle{
                                                                width: 200px;
                                                                display: flex;
                                                                justify-content: space-between;
                                                                align-items: center;
                                                                height: 30px;
                                                                border: 2px solid #dc3545;
                                                                font-weight: 600;
                                                            }
                                                            .dropdown-toggle:focus{
                            
                                                                box-shadow: none !important;
                            
                                                            }
                            
                            
                                                            .dropdown-toggle::after {
                            
                                                                display: none;
                            
                                                            }
                            
                                                            .dropdown-menu{
                            
                                                                width: 200px;
                                                                border: 2px solid #F44336;
                                                                padding: 0rem 0;
                                                                transform: translate3d(0px, 10px, 0px) !important;
                            
                                                            }
                            
                                                            .dropdown-item:focus, .dropdown-item:hover {
                                                                color: #ffffff;
                                                                background-color: #dc3545;
                                                                padding: 12px;
                                                            }
                            
                                                            .dropdown-item {
                                                                display: block;
                                                                width: 100%;
                                                                padding: 12px;
                            
                                                            }
                                                        </style>-->
                            <div class="col-4 justify-content-start "> 
                                <form action="searchService" class="input-group">
                                    <input class="form-control fs-3 px-3" id="floatingTextarea" placeholder="search" name="search">
                                    <button class="form-control-btn btn bg-primary btn-md fs-3" type="submit" >Search</button>
                                </form>
                            </div>

                        </div>


                    </div>
                </div>

                <div class="container mt-3 p-3" >
                    <div class="row">
                        <c:forEach var="o" items="${list}">
                            <div class="col-md-4 mt-4">
                                <div class="card mb-4 border border-0 shadow-md shadow">
                                    <a href="bean">
                                        <img
                                            class="card-img-top"
                                            alt="Card image cap"
                                            src="https://picsum.photos/200/70"
                                            />
                                        <div class="card-body">
                                            <h3>${o.serviceName}</h3>
                                            <p class="card-text">${o.serviceDesc}</p>
                                            <span>Price : </span>
                                            <span class="fw-bold">${o.price} $</span>
                                            <div
                                                class="d-flex justify-content-between align-items-center"
                                                data-id="${o.serviceID}"
                                                >
                                                <c:choose>
                                                    <c:when test="${role == 'true'}">
                                                        <div clas="row justify-content-center ">
                                                            <a 
                                                                class="btn btn-md px-4 py-2 btn-outline-primary mt-2 btn edit-btn me-md-3"
                                                                data-id="${o.serviceID}"
                                                                data-userid="${o.userId}"
                                                                data-name="${o.serviceName}"
                                                                data-desc="${o.serviceDesc}"
                                                                data-price="${o.price}"
                                                                data-time="${o.time} "
                                                                >
                                                                Edit
                                                            </a>
                                                            <a
                                                                class="btn btn-md px-4 py-2 btn-outline-danger mt-2"
                                                                href="DeleteService?id=${o.serviceID}"
                                                                >
                                                                Delete
                                                            </a>
                                                        </div>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a
                                                            class="btn btn-md px-4 py-2 btn-outline-primary mt-2 order-btn"
                                                            >
                                                            Order
                                                        </a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                            </div>
                        </c:forEach>
                    </div>
                </div>

                <style>
                    .active-paging {
                        background: blue !important;
                        color: white !important;
                    }
                </style>

                <c:if test="${numOfPage > 1}">
                    <!--Page Pagination Start--> 
                    <div class="page-pagination mt-2">
                        <ul class="pagination justify-content-center">
                            <c:forEach var = "i" begin = "1" end = "${numOfPage}">
                                <c:choose>
                                    <c:when test="${i==page}">
                                        <li>
                                            <a  class='active-paging' href="${currentPage}?page=${i}${sort != null ? "&sort=" : ""}${sort}">${i}</a>
                                        </li>
                                    </c:when>    
                                    <c:otherwise>
                                        <li>
                                            <a   href="Services?page=${i}">${i}</a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>

                            </c:forEach>
                        </ul>
                    </div>
                    <!--Page Pagination End--> 
                </c:if>                     
            </section>
        </div>


        <div class="modal-add rounded card p-3 ">
            <div class="closeBtn "></div>
            <h3 class="card-title">Add New Service</h3>
            <div class="card-body px-3 py-3">
                <form method="get" action="addService">
                    <div class="form-group">
                        <label for="name">Name Service : </label>
                        <input type="text" class="form-control" id="name" placeholder="Enter name of service ..." name="serviceName">
                    </div>
                    <div class="form-group">
                        <label for="desc">Description :</label>
                        <input type="text" class="form-control" id="desc" placeholder="Ennter Description .... " name="desc">
                    </div>
                    <div class="form-group">
                        <label for="userID">User ID :</label>
                        <input type="text" class="form-control" id="userID" placeholder="Ennter userID .... " name="userID">
                    </div>
                    <div class="form-group">
                        <label for="price">Price :</label>
                        <input type="number " class="form-control" id="price" placeholder="Ennter price .... " name="price">
                    </div>
                    <div class="form-group">
                        <label for="time">Time :</label>
                        <input type="date" class="form-control" id="time" name="time">
                    </div>


                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>

        </div>



        <div class="modal-edit rounded card p-3 ">
            <div class="closeEdit closeBtn"></div>
            <h3 class="card-title">Edit Service</h3>
            <div class="card-body px-3 py-3">
                <form method="get" action="editService">
                    <input name="seviceId" class="edit-serviceId d-none" >
                    <div class="form-group">
                        <label for="name">Name Service : </label>
                        <input type="text" class="form-control  edit-name" id="name" placeholder="Enter name of service ..." name="serviceName">
                    </div>
                    <div class="form-group">
                        <label for="desc">Description :</label>
                        <input type="text" class="form-control edit-desc" id="desc" placeholder="Ennter Description .... " name="desc">
                    </div>
                    <div class="form-group">
                        <label for="userID">User ID :</label>
                        <input type="text" class="form-control edit-userID" id="userID" placeholder="Ennter userID .... " name="userID">
                    </div>
                    <div class="form-group">
                        <label for="price">Price :</label>
                        <input type="number " class="form-control edit-price" id="price" placeholder="Ennter price .... " name="price">
                    </div>
                    <div class="form-group">
                        <label for="time">Time :</label>
                        <input type="date" class="form-control edit-time" id="time" name="time">
                    </div>


                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>

        </div>
        <div class="overlay  "> </div>


        <div class="modal-order rounded card  ">
            <div class="closeBtn close-order"></div>
            <img
                class="card-img-top"
                alt="Card image cap"
                src="https://picsum.photos/200/70"
                />
            <div class="card-body px-3 py-3">
                <form method="get" action="orderService">
                    <input type="number" name="serviceID"  class="d-none" id="serviceID">
                    <h3 class="fw-bold">Order Time :  <select class="px-4 ms-4 border ">
                            <option>2-4</option>
                            <option>4-6</option>
                            <option>6-10</option>
                        </select>
                    </h3>
                    <div class="d-flex justify-content-between align-items-center  order-btn" data-id="${o.serviceID}"  >
                        <a class="btn btn-md px-4 py-2 btn-outline-primary mt-2">
                            Order
                        </a>
                    </div>
                </form>
            </div>
        </div>
        <style>
            .modal-order , .modal-add , .modal-edit {
                background: white;
                position: fixed ; 
                top:20vh;
                width: 500px ;
                left: 50%;
                transform: translateX(-50%);
                z-index: 999999;
                display: none;
            }

            .overlay {
                background: #ccc;
                position: fixed ; 
                top:0;
                left: 0;
                right: 0 ;
                bottom:  0 ; 
                z-index: 99999;
                display: none;
            }
            .closeBtn , closeEdit{
                position: absolute;
                right: 15px;
                top: 15px;
                width: 25px;
                height: 25px;
                background: red;

                opacity: 1;
            }

            .closeBtn:before, .closeBtn:after {
                position: absolute;
                left: 50%;
                top:0;
                content: '';
                height: 25px;
                width: 2px;
                background-color: #333;
                pointer-events: none;
            }
            .closeBtn:before {
                transform: rotate(45deg);
            }
            .closeBtn:after {
                transform: rotate(-45deg);
            }
        </style>
        <script type="text/javascript">
            let close = document.querySelector('.closeBtn');
            let closeOrder = document.querySelector('.close-order');
            let addBtn = document.querySelector('.addBtn');

            let overlay = document.querySelector('.overlay')
            let modalOrder = document.querySelector('.modal-order');
            let modalAdd = document.querySelector('.modal-add');
            let modalEdit = document.querySelector('.modal-edit');
            let editBtns = document.querySelectorAll('.edit-btn')
            let closeEdit = document.querySelector('.closeEdit');
            console.log(editBtns, 'editbtn')
            editBtns.forEach(btn =>
                btn.addEventListener('click', () => {
                    console.log(btn.dataset)
                    document.querySelector('.edit-name').value = btn.dataset.name
                    document.querySelector('.edit-desc').value = btn.dataset.desc
                    document.querySelector('.edit-price').value = btn.dataset.price
                    document.querySelector('.edit-userID').value = btn.dataset.userid
                    document.querySelector('.edit-time').value = new Date(btn.dataset.time).toISOString().slice(0, 10);
                    document.querySelector('.edit-serviceId').value = btn.dataset.id
                    modalEdit.classList.add('d-block');
                    overlay.classList.add('d-block')

                })
            )
            closeEdit.addEventListener('click', () => {
                modalEdit.classList.toggle('d-block')
                overlay.classList.toggle('d-block')
            })


            let orderBtns = document.querySelectorAll('.order-btn');
            console.log(orderBtns, "bean")
            let serviceID = document.querySelector('#serviceID');
            orderBtns.forEach(order => {
                order.addEventListener('click', () => {
                    console.log('bean')
                    modalOrder.classList.add('d-block');
                    overlay.classList.add('d-block');
                    serviceID.value = order.dataset.id;
                })
            })


            closeOrder.addEventListener('click', () => {
                modalOrder.classList.toggle('d-block')
                overlay.classList.toggle('d-block')
            })


            addBtn.addEventListener('click', () => {
                modalAdd.classList.add('d-block')
                overlay.classList.add('d-block')
            })
//            console.log(modalOrder)
            close.addEventListener('click', () => {
                modalAdd.classList.toggle('d-block')
                overlay.classList.toggle('d-block')
            })

        </script>



        <!-- Vendor jQuery-->
        <script type="text/javascript" src="libs/jquery/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="libs/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="libs/smoothscroll/SmoothScroll.min.js"></script>
        <script type="text/javascript" src="libs/superfish-menu/js/superfish.min.js"></script>
        <script type="text/javascript" src="libs/jquery-ui/jquery-ui.min.js"></script>
        <script type="text/javascript" src="libs/jquery-ui/external/touch-punch/jquery.ui.touch-punch.min.js"></script>
        <script type="text/javascript" src="libs/jquery-ui/external/jquery.mousewheel.min.js"></script>
        <script type="text/javascript" src="libs/parallax/parallax.min.js"></script>
        <script type="text/javascript" src="libs/jquery-countto/jquery.countTo.min.js"></script>
        <script type="text/javascript" src="libs/jquery-appear/jquery.appear.min.js"></script>
        <script type="text/javascript" src="libs/as-pie-progress/jquery-asPieProgress.min.js"></script>
        <script type="text/javascript" src="libs/caroufredsel/helper-plugins/jquery.touchSwipe.min.js"></script>
        <script type="text/javascript" src="libs/caroufredsel/jquery.carouFredSel-6.2.1-packed.js"></script>
        <script type="text/javascript" src="libs/isotope/isotope.pkgd.min.js"></script>
        <script type="text/javascript" src="libs/isotope/fit-columns.min.js"></script>
        <script type="text/javascript" src="libs/slick-sider/slick.min.js"></script>
        <script type="text/javascript" src="libs/lwt-countdown/jquery.lwtCountdown-1.0.min.js"></script>
        <script type="text/javascript" src="libs/swiper-sider/dist/js/swiper.min.js"></script>
        <script type="text/javascript" src="libs/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
        <script type="text/javascript" src="libs/jplayer/dist/jplayer/jquery.jplayer.min.js"></script>
        <script type="text/javascript" src="libs/jquery-cookie/jquery.cookie.min.js"></script>

        <!-- Theme Script-->
        <script type="text/javascript" src="js/style.selector.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
            crossorigin="anonymous"
        ></script>
    </body>
</html>