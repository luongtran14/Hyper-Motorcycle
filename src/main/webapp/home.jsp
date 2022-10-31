<%-- 
    Document   : home
    Created on : Sep 15, 2022, 11:33:38 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
    <link rel="stylesheet" type="text/css" href="CSS/main.css">
    <link rel="stylesheet" type="text/css" href="CSS/shortcodes.css">
    <link rel="stylesheet" type="text/css" href="CSS/home.css">
    <link rel="stylesheet" type="text/css" href="CSS/style-selector.css">
    <link id="style-main-color" rel="stylesheet" type="text/css" href="CSS/color/color1.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!-- WARNING: Respond.js doesn't work if you view the page via file://-->
    <!--if lt IE 9
    script(src='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js')
    script(src='https://oss.maxcdn.com/respond/1.4.2/respond.min.js')
    
    -->
  </head>
  <body>
    <div class="mv-site">
        <jsp:include page="header.jsp"/>
      <!-- .header-->

      <section class="home-1-slideshow mv-wrap">
        <div id="home-1-slideshow" class="mv-caroufredsel">
   
          <ul class="mv-slider-wrapper">

            <li class="mv-slider-item"><img src="images/slideshow/slide_1920x1080.png" alt="slide" class="mv-slider-img"/>
              <div class="mv-caption-style-1">
                <div class="container">
                  <div class="caption-1-text-1">Best Sale</div>
                  <div class="caption-1-text-2">
                    <div class="mv-title-style-1"><img src="images/icon/icon_line_1.png" alt="icon" class="line-left"/><img src="images/icon/icon_line_2.png" alt="icon" class="line-right"/>the black phantom</div>
                  </div><a href="product-grid-3.html" class="caption-1-button-1 mv-btn mv-btn-style-1 responsive-btn-1-type-2"><span class="btn-inner"><i class="btn-icon fa fa-cart-plus"></i><span class="btn-text">shop now</span></span></a>
                </div>
              </div>
            </li>
       

           
            <!-- .mv-slider-item-->
          </ul>

          <button id="home-1-slideshow-prev" type="button" class="mv-slider-control-btn prev mv-btn mv-btn-style-2"><span class="icon fa fa-angle-left"></span></button>
          <button id="home-1-slideshow-next" type="button" class="mv-slider-control-btn next mv-btn mv-btn-style-2"><span class="icon fa fa-angle-right"></span></button>
        </div>
      </section>
      <!-- .home-1-slideshow-->

      <section class="home-1-highlight mv-wrap">
        <div class="container">
          <div class="mv-block-style-1">
            <div class="row block-1-list">
             <c:forEach var="item" items="${bestSeller}">
              <article class="col-xs-6 col-sm-4 item post">
                <div class="item-inner mv-effect-translate-1">
                  <div class="content-thumb">
                    <div class="thumb-inner mv-effect-relative"><a href="product-detail.html" title="Caberg Riviera V2+ Italia Open Face Motorcycle Helmet">
                            <img src="${item.imageUrl}" alt="demo" class="mv-effect-item"/></a><a href="product-detail.html" title="Caberg Riviera V2+ Italia Open Face Motorcycle Helmet" class="mv-btn mv-btn-style-25 btn-readmore-plus hidden-xs"><span class="btn-inner"></span></a>

                      <div class="content-message mv-message-style-1">
                        <div class="message-inner"></div>
                      </div>
                    </div>
                  </div>

                  <div class="content-main">
                    <div class="content-name hidden-xs hidden-sm">
                      <div class="name-inner mv-overflow-ellipsis">${item.productName}</div>
                    </div>
                    <div class="content-text">
                      <div class="content-price">$${item.unitPrice}</div>
                      <div class="content-desc"><a href="product-detail.html" title="${item.description}" class="mv-overflow-ellipsis">
                              ${item.description}
                          </a></div>
                    </div>
                  </div>

                  <div class="content-hover">
                    <div class="content-button mv-btn-group text-center">
                      <div class="group-inner">
                      
                          <button onclick="addToCart('${item.productId}')" 
                                  type="button" title="Add To Cart" 
                                  class="mv-btn mv-btn-style-1 responsive-btn-1-type-1 btn-add-to-cart">
                              <span class="btn-inner"><i class="btn-icon fa fa-cart-plus"></i>
                                  <span class="btn-text">Add to cart</span></span></button>
                      </div>
                    </div>
                  </div>
                </div>
              </article>
                </c:forEach>
            
            </div>
          </div>
          <!-- .mv-block-style-1-->
        </div>
      </section>
      <!-- .home-1-highlight-->

      <section class="home-1-featured-products mv-wrap">
        <div class="container">
          <div class="featured-title mv-title-style-2">
            <div class="title-2-inner"><img src="images/icon/icon_m.png" alt="icon" class="icon image-live-view"/><span class="main">featured products</span><span class="sub">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</span></div>
          </div>
          <!-- .featured-title-->

          <div class="featured-main mv-filter-style-1">
            <div class="filter-button mv-btn-group">
              <div class="group-inner">
                <button data-filter=".motor" class="mv-btn mv-btn-style-8 active">motor</button>
                <button data-filter=".helmet" class="mv-btn mv-btn-style-8">helmet</button>
                <button data-filter=".boots" class="mv-btn mv-btn-style-8">boots</button>
                <button data-filter=".protection" class="mv-btn mv-btn-style-8">protection</button>
                <button data-filter=".gear" class="mv-btn mv-btn-style-8">gear</button>
                <button data-filter=".tires" class="mv-btn mv-btn-style-8">tires</button>
              </div>
            </div>
            <!-- .filter-button-->

            <div class="row filter-list-warpper">
              <div class="filter-list mv-block-style-2">
                <div class="block-2-list">
                    <c:forEach var="item" items="${data}">
                          <article class="col-xs-6 col-sm-4 col-md-3 item post filter-item motor">
                    <div class="item-inner mv-effect-translate-1">
                      <div class="content-default">
                        <div class="content-thumb">
                          <div class="thumb-inner mv-effect-relative">
                              <a href="product-detail.html" title="RST Full Zipped Sweatshirt"><img src="${item.imageUrl}" alt="demo" class="mv-effect-item"/></a>
                              <a href="product-detail.html" title="RST Full Zipped Sweatshirt" class="mv-btn mv-btn-style-25 btn-readmore-plus hidden-xs"><span class="btn-inner"></span></a>

                            <div class="content-message mv-message-style-1">
                              <div class="message-inner"></div>
                            </div>
                          </div>
                        </div>

                        <div data-rate="true" data-score="5.0" class="content-rate mv-rate text-center">
                          <div class="rate-inner mv-f-14 text-left">
                            <div class="stars-wrapper empty-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                            <div class="stars-wrapper filled-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                          </div>
                        </div>

<!--                        <div class="content-sale-off mv-label-style-3 label-primary">
                          <div class="label-inner"></div>
                        </div>-->
                      </div>

                      <div class="content-main">
                        <div class="content-text">
                          <div class="content-price"><span class="new-price">$ ${item.unitPrice}</span></div>
                          <div class="content-desc">
                              <a href="product-detail.html" title="${item.description}" class="mv-overflow-ellipsis">${item.description}</a></div>
                        </div>
                      </div>

                      <div class="content-hover">
                        <div class="content-button mv-btn-group text-center">
                          <div class="group-inner">
                            <button type="button" title="Add To Wishlist" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-wishlist"><i class="fa fa-heart-o"></i></button>
                            <button type="button" title="Compare" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-compare"><i class="fa fa-signal"></i></button>
              
                            <button type="button" title="Add To Cart" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-cart"><i class="fa fa-cart-plus"></i></button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </article>
                    </c:forEach>
                
                
                  
                </div>
              </div>
            </div>
            <!-- .filter-list-wrapper-->
          </div>
          <!-- .featured-main-->
        </div>
      </section>
      <!-- .home-1-featured-products-->

<!--      <section class="home-1-shop hidden-xs hidden-sm mv-wrap">
        <div class="container">
          <div class="block-list-1">
            <div class="mv-block-style-3"><a href="#" class="mv-btn mv-btn-style-1 btn-1-h-40 btn-1-gray responsive-btn-1-type-2 btn-shop-now hidden-xs hidden-sm"><span class="btn-inner"><i class="btn-icon fa fa-cart-plus"></i><span class="btn-text">shop now</span></span></a>
              <div class="block-3-list">
                <div class="item">
                  <div class="block-3-title">
                    <div class="main"><a href="product-detail.html" title="Alpinestars Bionic Plus">Alpinestars Bionic Plus</a></div>
                    <div class="sub">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</div>
                  </div>
                  <div class="block-3-thumb"><a href="product-detail.html" title="Alpinestars Bionic Plus"><img src="images/demo/demo_300x400.png" alt="demo" class="block-3-thumb-img"/></a></div>
                </div>

                <div class="item">
                  <div class="block-3-thumb"><a href="product-detail.html" title="Alpinestars Bionic Plus"><img src="images/demo/demo_300x400.png" alt="demo" class="block-3-thumb-img hidden-xs hidden-sm"/></a></div>
                  <div class="block-3-title">
                    <div class="main"><a href="product-detail.html" title="Alpinestars Bionic Plus">Alpinestars Roving Backpack</a></div>
                    <div class="sub">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam</div>
                  </div>
                  <div class="block-3-thumb"><a href="product-detail.html" title="Alpinestars Bionic Plus"><img src="images/demo/demo_300x400.png" alt="demo" class="block-3-thumb-img hidden-md hidden-lg"/></a></div>
                </div>
              </div>
            </div>
             .mv-block-style-3
          </div>
        </div>
      </section>-->
      <!-- .home-1-shop-->

<!--      <section class="home-1-latest-blog mv-wrap">
        <div class="container">
          <div class="latest-blog-title mv-title-style-2">
            <div class="title-2-inner"><img src="images/icon/icon_m.png" alt="icon" class="icon image-live-view"/><span class="main">Latest blogs</span><span class="sub">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</span></div>
          </div>
           .latest-blog-title

          <div class="latest-blog-main">
            <div class="latest-blog-list">
              <div class="mv-block-style-4">
                <div class="row block-4-list">
                  <article class="col-xs-6 col-sm-12 item post">
                    <div class="item-inner mv-effect-zoom-in-out">
                      <div class="block-4-thumb">
                        <div class="row">
                          <div class="col-sm-6"><span class="block-4-thumb-inner"><a href="blog-detail.html" title="Lamcorper suscipit lobortis nisl"><span style="background-image: url(images/demo/demo_800x300.png);" class="block-4-thumb-img"></span></a><span class="polygon hidden-xs"></span><span onclick="$(this).remove()" class="block-4-date mv-date-style-1"><span class="day">29</span><span class="month">sep</span></span></span></div>
                          <div class="col-sm-6"></div>
                        </div>
                      </div>
                       .block-4-thumb

                      <div class="block-4-main">
                        <div class="block-4-main-inner"><a href="blog-detail.html" title="Lamcorper suscipit lobortis nisl" class="block-4-title mv-overflow-ellipsis">Lamcorper suscipit lobortis nisl</a>
                          <div class="block-4-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation</div>
                          <div class="block-4-read-more"><a href="#" class="mv-btn mv-btn-style-1 btn-1-h-40 btn-1-gray responsive-btn-1-type-5 btn-read-more"><span class="btn-inner"><i class="btn-icon fa fa-angle-right"></i><span class="btn-text">read more</span></span></a></div>
                        </div>
                      </div>
                       .block-4-main
                    </div>
                  </article>
                   .item

                  <article class="col-xs-6 col-sm-12 item post">
                    <div class="item-inner mv-effect-zoom-in-out">
                      <div class="block-4-thumb">
                        <div class="row">
                          <div class="col-sm-6"><span class="block-4-thumb-inner"><a href="blog-detail.html" title="Lamcorper suscipit lobortis nisl"><span style="background-image: url(images/demo/demo_800x300.png);" class="block-4-thumb-img"></span></a><span class="polygon hidden-xs"></span><span onclick="$(this).remove()" class="block-4-date mv-date-style-1"><span class="day">29</span><span class="month">sep</span></span></span></div>
                          <div class="col-sm-6"></div>
                        </div>
                      </div>
                       .block-4-thumb

                      <div class="block-4-main">
                        <div class="block-4-main-inner"><a href="blog-detail.html" title="Duis autem vel eum iriure dolor in hendrerit" class="block-4-title mv-overflow-ellipsis">Duis autem vel eum iriure dolor in hendrerit</a>
                          <div class="block-4-content">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation</div>
                          <div class="block-4-read-more"><a href="#" class="mv-btn mv-btn-style-1 btn-1-h-40 btn-1-gray responsive-btn-1-type-5 btn-read-more"><span class="btn-inner"><i class="btn-icon fa fa-angle-right"></i><span class="btn-text">read more</span></span></a></div>
                        </div>
                      </div>
                       .block-4-main
                    </div>
                  </article>
                   .item
                </div>
              </div>
               .mv-block-style-4
            </div>
          </div>
           .latest-blog-main
        </div>
      </section>-->
      <!-- .home-1-latest-blog-->

<!--      <section class="home-1-deals-last-week mv-wrap">
        <div data-image-src="images/background/demo_bg_1920x1680.png" class="deals-last-week-bg mv-parallax">
          <div class="container">
            <div class="deals-last-week-title mv-title-style-2 color-white">
              <div class="title-2-inner"><img src="images/icon/icon_m_2.png" alt="icon" class="icon image-live-view"/><span class="main">deals last week</span><span class="sub">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod  <br/>tincidunt ut laoreet dolore magna aliquam erat volutpat</span></div>
            </div>
             .deals-last-week-title

            <div class="deals-last-week-main">
              <div class="deals-last-week-list">
                <div class="mv-block-style-2">
                  <div class="row block-2-list">
                    <article class="col-xs-6 col-md-3 item post item-bg-white">
                      <div class="item-inner mv-effect-translate-1">
                        <div class="content-default">
                          <div class="content-thumb">
                            <div class="thumb-inner mv-effect-relative"><a href="product-detail.html" title="Alpinestars Techstar Motocross Kit Combo"><img src="images/demo/demo_300x400.png" alt="demo" class="mv-effect-item"/></a><a href="product-detail.html" title="Alpinestars Techstar Motocross Kit Combo" class="mv-btn mv-btn-style-25 btn-readmore-plus hidden-xs"><span class="btn-inner"></span></a>

                              <div class="content-message mv-message-style-1">
                                <div class="message-inner"></div>
                              </div>
                            </div>
                          </div>

                          <div data-rate="true" data-score="5.0" class="content-rate mv-rate text-center">
                            <div class="rate-inner mv-f-14 text-left">
                              <div class="stars-wrapper empty-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                              <div class="stars-wrapper filled-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                            </div>
                          </div>
                        </div>

                        <div class="content-main">
                          <div class="content-text">
                            <div class="content-price"><span class="new-price">$ 128.24</span></div>
                            <div class="content-desc"><a href="product-detail.html" title="Alpinestars Techstar Motocross Kit Combo" class="mv-overflow-ellipsis">Alpinestars Techstar Motocross Kit Combo</a></div>
                          </div>
                        </div>

                        <div class="content-hover">
                          <div class="content-button mv-btn-group text-center">
                            <div class="group-inner">
                              <button type="button" title="Add To Wishlist" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-wishlist"><i class="fa fa-heart-o"></i></button>
                              <button type="button" title="Compare" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-compare"><i class="fa fa-signal"></i></button>
                              <button type="button" title="Add To Cart" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-cart"><i class="fa fa-cart-plus"></i></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </article>
                     .post

                    <article class="col-xs-6 col-md-3 item post item-bg-white">
                      <div class="item-inner mv-effect-translate-1">
                        <div class="content-default">
                          <div class="content-thumb">
                            <div class="thumb-inner mv-effect-relative"><a href="product-detail.html" title="Spada Enforcer WP Glove"><img src="images/demo/demo_300x400.png" alt="demo" class="mv-effect-item"/></a><a href="product-detail.html" title="Spada Enforcer WP Glove" class="mv-btn mv-btn-style-25 btn-readmore-plus hidden-xs"><span class="btn-inner"></span></a>

                              <div class="content-message mv-message-style-1">
                                <div class="message-inner"></div>
                              </div>
                            </div>
                          </div>

                          <div data-rate="true" data-score="5.0" class="content-rate mv-rate text-center">
                            <div class="rate-inner mv-f-14 text-left">
                              <div class="stars-wrapper empty-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                              <div class="stars-wrapper filled-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                            </div>
                          </div>

                          <div class="content-sale-off mv-label-style-3 label-dark"> 
                            <div class="label-inner">-25%</div>
                          </div>
                        </div>

                        <div class="content-main">
                          <div class="content-text">
                            <div class="content-price"><span class="new-price">$ 128.24</span></div>
                            <div class="content-desc"><a href="product-detail.html" title="Spada Enforcer WP Glove" class="mv-overflow-ellipsis">Spada Enforcer WP Glove</a></div>
                          </div>
                        </div>

                        <div class="content-hover">
                          <div class="content-button mv-btn-group text-center">
                            <div class="group-inner">
                              <button type="button" title="Add To Wishlist" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-wishlist"><i class="fa fa-heart-o"></i></button>
                              <button type="button" title="Compare" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-compare"><i class="fa fa-signal"></i></button>
                              <button type="button" title="Add To Cart" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-cart"><i class="fa fa-cart-plus"></i></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </article>
                     .post

                    <article class="col-xs-6 col-md-3 item post item-bg-white">
                      <div class="item-inner mv-effect-translate-1">
                        <div class="content-default">
                          <div class="content-thumb">
                            <div class="thumb-inner mv-effect-relative"><a href="product-detail.html" title="Spada Enforcer WP Glove"><img src="images/demo/demo_300x400.png" alt="demo" class="mv-effect-item"/></a><a href="product-detail.html" title="Spada Enforcer WP Glove" class="mv-btn mv-btn-style-25 btn-readmore-plus hidden-xs"><span class="btn-inner"></span></a>

                              <div class="content-message mv-message-style-1">
                                <div class="message-inner"></div>
                              </div>
                            </div>
                          </div>

                          <div data-rate="true" data-score="5.0" class="content-rate mv-rate text-center">
                            <div class="rate-inner mv-f-14 text-left">
                              <div class="stars-wrapper empty-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                              <div class="stars-wrapper filled-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                            </div>
                          </div>
                        </div>

                        <div class="content-main">
                          <div class="content-text">
                            <div class="content-price"><span class="new-price">$ 128.24</span></div>
                            <div class="content-desc"><a href="product-detail.html" title="Spada Enforcer WP Glove" class="mv-overflow-ellipsis">Spada Enforcer WP Glove</a></div>
                          </div>
                        </div>

                        <div class="content-hover">
                          <div class="content-button mv-btn-group text-center">
                            <div class="group-inner">
                              <button type="button" title="Add To Wishlist" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-wishlist"><i class="fa fa-heart-o"></i></button>
                              <button type="button" title="Compare" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-compare"><i class="fa fa-signal"></i></button>
                              <button type="button" title="Add To Cart" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-cart"><i class="fa fa-cart-plus"></i></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </article>
                     .post

                    <article class="col-xs-6 col-md-3 item post item-bg-white">
                      <div class="item-inner mv-effect-translate-1">
                        <div class="content-default">
                          <div class="content-thumb">
                            <div class="thumb-inner mv-effect-relative"><a href="product-detail.html" title="Spada Enforcer WP Glove"><img src="images/demo/demo_300x400.png" alt="demo" class="mv-effect-item"/></a><a href="product-detail.html" title="Spada Enforcer WP Glove" class="mv-btn mv-btn-style-25 btn-readmore-plus hidden-xs"><span class="btn-inner"></span></a>

                              <div class="content-message mv-message-style-1">
                                <div class="message-inner"></div>
                              </div>
                            </div>
                          </div>

                          <div data-rate="true" data-score="5.0" class="content-rate mv-rate text-center">
                            <div class="rate-inner mv-f-14 text-left">
                              <div class="stars-wrapper empty-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                              <div class="stars-wrapper filled-stars"><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span><span class="item-rate"></span></div>
                            </div>
                          </div>

                          <div class="content-sale-off mv-label-style-3 label-primary"> 
                            <div class="label-inner">-25%</div>
                          </div>
                        </div>

                        <div class="content-main">
                          <div class="content-text">
                            <div class="content-price"><span class="new-price">$ 128.24</span></div>
                            <div class="content-desc"><a href="product-detail.html" title="Spada Enforcer WP Glove" class="mv-overflow-ellipsis">Spada Enforcer WP Glove</a></div>
                          </div>
                        </div>

                        <div class="content-hover">
                          <div class="content-button mv-btn-group text-center">
                            <div class="group-inner">
                              <button type="button" title="Add To Wishlist" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-wishlist"><i class="fa fa-heart-o"></i></button>
                              <button type="button" title="Compare" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-compare"><i class="fa fa-signal"></i></button>
                              <button type="button" title="Add To Cart" class="mv-btn mv-btn-style-3 responsive-btn-3-type-1 btn-add-to-cart"><i class="fa fa-cart-plus"></i></button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </article>
                     .post
                  </div>
                </div>
                 .mv-block-style-2
              </div>
            </div>
             .deals-last-week-main
          </div>
        </div>
      </section>-->
      <!-- .home-1-deals-last-week-->

<!--      <section class="home-1-testimonial mv-wrap">
        <div class="container">
          <div class="testimonial-title mv-title-style-2">
            <div class="title-2-inner"><img src="images/icon/icon_m.png" alt="icon" class="icon image-live-view"/><span class="main">Testimonial</span><span class="sub">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</span></div>
          </div>
           .testimonial-title

          <div class="testimonial-main">
            <div class="mv-block-style-5">
              <div id="home-1-testimonial-slider" class="mv-slick-slide">
                <div class="row">
                  <div class="col-md-6 col-main">
                    <div class="col-inner">
                      <div class="slider gallery-main">

                        <div class="slick-slide">
                          <div class="slick-slide-inner">
                            <div class="block-5-quote mv-quote-style-1">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell quote-icon"><i class="icon fa fa-quote-left"></i></div>
                                <div class="mv-dp-table-cell quote-main">
                                  <div class="quote-content">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum</div>
                                  <div class="quote-line"></div>

                                  <div class="block-5-profile mv-block-style-6">
                                    <div class="mv-dp-table">
                                      <div class="mv-dp-table-cell block-6-thumb"><a href="#"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-6-thumb-img"></span></a></div>
                                      <div class="mv-dp-table-cell block-6-main">
                                        <div class="block-6-name"> <a href="#">Robert william</a></div>
                                        <div class="block-6-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                      </div>
                                    </div>
                                  </div>
                                   .block-5-profile
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide

                        <div class="slick-slide">
                          <div class="slick-slide-inner">
                            <div class="block-5-quote mv-quote-style-1">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell quote-icon"><i class="icon fa fa-quote-left"></i></div>
                                <div class="mv-dp-table-cell quote-main">
                                  <div class="quote-content">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum</div>
                                  <div class="quote-line"></div>

                                  <div class="block-5-profile mv-block-style-6">
                                    <div class="mv-dp-table">
                                      <div class="mv-dp-table-cell block-6-thumb"><a href="#"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-6-thumb-img"></span></a></div>
                                      <div class="mv-dp-table-cell block-6-main">
                                        <div class="block-6-name"> <a href="#">Robert william</a></div>
                                        <div class="block-6-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                      </div>
                                    </div>
                                  </div>
                                   .block-5-profile
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide

                        <div class="slick-slide">
                          <div class="slick-slide-inner">
                            <div class="block-5-quote mv-quote-style-1">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell quote-icon"><i class="icon fa fa-quote-left"></i></div>
                                <div class="mv-dp-table-cell quote-main">
                                  <div class="quote-content">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum</div>
                                  <div class="quote-line"></div>

                                  <div class="block-5-profile mv-block-style-6">
                                    <div class="mv-dp-table">
                                      <div class="mv-dp-table-cell block-6-thumb"><a href="#"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-6-thumb-img"></span></a></div>
                                      <div class="mv-dp-table-cell block-6-main">
                                        <div class="block-6-name"> <a href="#">Robert william</a></div>
                                        <div class="block-6-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                      </div>
                                    </div>
                                  </div>
                                   .block-5-profile
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide

                        <div class="slick-slide">
                          <div class="slick-slide-inner">
                            <div class="block-5-quote mv-quote-style-1">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell quote-icon"><i class="icon fa fa-quote-left"></i></div>
                                <div class="mv-dp-table-cell quote-main">
                                  <div class="quote-content">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum</div>
                                  <div class="quote-line"></div>

                                  <div class="block-5-profile mv-block-style-6">
                                    <div class="mv-dp-table">
                                      <div class="mv-dp-table-cell block-6-thumb"><a href="#"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-6-thumb-img"></span></a></div>
                                      <div class="mv-dp-table-cell block-6-main">
                                        <div class="block-6-name"> <a href="#">Robert william</a></div>
                                        <div class="block-6-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                      </div>
                                    </div>
                                  </div>
                                   .block-5-profile
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide

                        <div class="slick-slide">
                          <div class="slick-slide-inner">
                            <div class="block-5-quote mv-quote-style-1">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell quote-icon"><i class="icon fa fa-quote-left"></i></div>
                                <div class="mv-dp-table-cell quote-main">
                                  <div class="quote-content">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum</div>
                                  <div class="quote-line"></div>

                                  <div class="block-5-profile mv-block-style-6">
                                    <div class="mv-dp-table">
                                      <div class="mv-dp-table-cell block-6-thumb"><a href="#"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-6-thumb-img"></span></a></div>
                                      <div class="mv-dp-table-cell block-6-main">
                                        <div class="block-6-name"> <a href="#">Robert william</a></div>
                                        <div class="block-6-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                      </div>
                                    </div>
                                  </div>
                                   .block-5-profile
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide
                      </div>

                      <div class="slick-slide-control mv-btn-group">
                        <div class="group-inner"></div>
                      </div>
                    </div>
                     .gallery-main
                  </div>

                  <div class="col-md-6 col-thumbs hidden-xs hidden-sm">
                    <div class="col-inner">
                      <div class="slider gallery-thumbs">
                        <div class="slick-slide">
                          <div class="slick-slide-inner mv-block-style-7">
                            <div style="background-image: url(images/demo/demo_800x300.png)" class="block-7-bg"></div>
                            <div class="block-7-polygon"><span class="polygon-inner"></span></div>
                            <div class="block-7-main">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-7-thumb"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-7-thumb-img"></span></div>
                                <div class="mv-dp-table-cell block-7-detail">
                                  <div class="block-7-detail-inner">
                                    <div class="block-7-name">Robert william</div>
                                    <div class="block-7-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                    <div class="block-7-icon-quote"><i class="icon fa fa-quote-left"></i></div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide

                        <div class="slick-slide">
                          <div class="slick-slide-inner mv-block-style-7">
                            <div style="background-image: url(images/demo/demo_800x300.png)" class="block-7-bg"></div>
                            <div class="block-7-polygon"><span class="polygon-inner"></span></div>
                            <div class="block-7-main">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-7-thumb"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-7-thumb-img"></span></div>
                                <div class="mv-dp-table-cell block-7-detail">
                                  <div class="block-7-detail-inner">
                                    <div class="block-7-name">Robert william</div>
                                    <div class="block-7-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                    <div class="block-7-icon-quote"><i class="icon fa fa-quote-left"></i></div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide

                        <div class="slick-slide">
                          <div class="slick-slide-inner mv-block-style-7">
                            <div style="background-image: url(images/demo/demo_800x300.png)" class="block-7-bg"></div>
                            <div class="block-7-polygon"><span class="polygon-inner"></span></div>
                            <div class="block-7-main">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-7-thumb"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-7-thumb-img"></span></div>
                                <div class="mv-dp-table-cell block-7-detail">
                                  <div class="block-7-detail-inner">
                                    <div class="block-7-name">Robert william</div>
                                    <div class="block-7-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                    <div class="block-7-icon-quote"><i class="icon fa fa-quote-left"></i></div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide

                        <div class="slick-slide">
                          <div class="slick-slide-inner mv-block-style-7">
                            <div style="background-image: url(images/demo/demo_800x300.png)" class="block-7-bg"></div>
                            <div class="block-7-polygon"><span class="polygon-inner"></span></div>
                            <div class="block-7-main">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-7-thumb"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-7-thumb-img"></span></div>
                                <div class="mv-dp-table-cell block-7-detail">
                                  <div class="block-7-detail-inner">
                                    <div class="block-7-name">Robert william</div>
                                    <div class="block-7-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                    <div class="block-7-icon-quote"><i class="icon fa fa-quote-left"></i></div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide

                        <div class="slick-slide">
                          <div class="slick-slide-inner mv-block-style-7">
                            <div style="background-image: url(images/demo/demo_800x300.png)" class="block-7-bg"></div>
                            <div class="block-7-polygon"><span class="polygon-inner"></span></div>
                            <div class="block-7-main">
                              <div class="mv-dp-table">
                                <div class="mv-dp-table-cell block-7-thumb"><span style="background-image: url(images/avatar/avatar_100x100.png);" class="block-7-thumb-img"></span></div>
                                <div class="mv-dp-table-cell block-7-detail">
                                  <div class="block-7-detail-inner">
                                    <div class="block-7-name">Robert william</div>
                                    <div class="block-7-office">MANAGER MOTOR VERHIKLE<span class="sub">Gold Medalist, Olympics 2015</span></div>
                                    <div class="block-7-icon-quote"><i class="icon fa fa-quote-left"></i></div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                         .slick-slide
                      </div>
                    </div>
                  </div>
                </div>
                 .gallery-thumbs
              </div>
               #home-1-testimonial-slider
            </div>
             .mv-block-style-5
          </div>
           .testimonial-main
        </div>
      </section>-->
      <!-- .home-1-testimonial-->

<!--      <section class="main-newsletter mv-newsletter-style-2 mv-wrap">
        <div class="container">
          <form method="GET" class="form-newsletter mv-form-horizontal">
            <div class="mv-form-group">
              <label class="col-xs-12 col-sm-3 hidden-xs mv-label text-right text-uppercase">Newsletter</label>
              <div class="col-xs-12 col-sm-9 mv-field">
                <div class="mv-inputbox-icon right">
                  <input type="text" name="test138" data-mv-placeholder="Subscribe your email here" placeholder="Subscribe your email here" class="mv-inputbox mv-inputbox-style-1"/>
                  <button type="button" class="mv-btn mv-btn-style-4 icon"><i class="btn-icon fa fa-long-arrow-right"></i></button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </section>-->
      <!-- .mv-newsletter-style-2-->

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
    <script type="text/javascript" src="JS/style.selector.js"></script>
    <script type="text/javascript" src="JS/main.js"></script>
  </body>
</html>
<script type="text/javascript">
    function addToCart(productId){
       window.location.href = '${pageContext.request.contextPath}/cart/add?id='+productId;
    }
</script>
    </body>
</html>
