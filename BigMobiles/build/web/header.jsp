<%@page import="model.Customers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>   
<% Customers custom = (Customers) session.getAttribute("LOGIN_CUSTOMER");%>
<header>
    <!-- Begin Header Top Area -->
    <div class="header-top">
        <div class="container">
            <div class="row">
                <!-- Begin Header Top Left Area -->
                <div class="col-lg-3 col-md-4">
                    <div class="header-top-left">
                        <ul class="phone-wrap">
                            <li><span>Telephone Enquiry:</span><a href="#">(+123) 123 321 345</a></li>
                        </ul>
                    </div>
                </div>
                <!-- Header Top Left Area End Here -->
                <!-- Begin Header Top Right Area -->
                <div class="col-lg-9 col-md-8">
                    <div class="header-top-right">
                        <ul class="ht-menu">
                            <%
                                if (custom == null) {
                            %>   
                            <li>
                                <a href="logreg.jsp">Đăng Nhập||Đăng ký</a>
                            </li>
                            <%  } else {%> 
                            <li><a href="#">Xin chào <%=custom.getFullname()%></a></li>
                            <li><a href="logout">Đăng xuất</a></li>
                                <%       }%>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="header-middle pl-sm-0 pr-sm-0 pl-xs-0 pr-xs-0">
        <div class="container">
            <div class="row">
                <!-- Begin Header Logo Area -->
                <div class="col-lg-3">
                    <div class="logo pb-sm-30 pb-xs-30">
                        <a href="index.jsp">
                            <img src="images/menu/logo/1.jpg" alt="">
                        </a>
                    </div>
                </div>
                <!-- Header Logo Area End Here -->
                <!-- Begin Header Middle Right Area -->
                <div class="col-lg-9">
                    <!-- Begin Header Middle Searchbox Area -->
                    <form action="#" class="hm-searchbox">

                        <input type="text" placeholder="Enter your search key ...">
                        <button class="li-btn" type="submit"><i class="fa fa-search"></i></button>
                    </form>
                    <!-- Header Middle Searchbox Area End Here -->
                    <!-- Begin Header Middle Right Area -->
                    <div class="header-middle-right">
                        <ul class="hm-menu">
                            <!-- Begin Header Middle Wishlist Area -->
                            <li class="hm-wishlist">
                                <a href="wishlist.html">
                                    <span class="cart-item-count wishlist-item-count">0</span>
                                    <i class="fa fa-heart-o"></i>
                                </a>
                            </li>
                            <!-- Header Middle Wishlist Area End Here -->
                            <!-- Begin Header Mini Cart Area -->
                            <li class="hm-minicart">
                                <div class="hm-minicart-trigger">
                                    <span class="item-icon"></span>
                                    <span class="item-text">£80.00
                                        <span class="cart-item-count">2</span>
                                    </span>
                                </div>
                                <span></span>
                                <div class="minicart">
                                    <ul class="minicart-product-list">
                                        <li>
                                            <a href="single-product.html" class="minicart-product-image">
                                                <img src="images/product/small-size/1.jpg" alt="cart products">
                                            </a>
                                            <div class="minicart-product-details">
                                                <h6><a href="single-product.html">Aenean eu tristique</a></h6>
                                                <span>£40 x 1</span>
                                            </div>
                                            <button class="close">
                                                <i class="fa fa-close"></i>
                                            </button>
                                        </li>
                                        <li>
                                            <a href="single-product.html" class="minicart-product-image">
                                                <img src="images/product/small-size/2.jpg" alt="cart products">
                                            </a>
                                            <div class="minicart-product-details">
                                                <h6><a href="single-product.html">Aenean eu tristique</a></h6>
                                                <span>£40 x 1</span>
                                            </div>
                                            <button class="close">
                                                <i class="fa fa-close"></i>
                                            </button>
                                        </li>
                                    </ul>
                                    <p class="minicart-total">SUBTOTAL: <span>£80.00</span></p>
                                    <div class="minicart-button">
                                        <a href="checkout.html" class="li-button li-button-dark li-button-fullwidth li-button-sm">
                                            <span>View Full Cart</span>
                                        </a>
                                        <a href="checkout.html" class="li-button li-button-fullwidth li-button-sm">
                                            <span>Checkout</span>
                                        </a>
                                    </div>
                                </div>
                            </li>
                            <!-- Header Mini Cart Area End Here -->
                        </ul>
                    </div>
                    <!-- Header Middle Right Area End Here -->
                </div>
                <!-- Header Middle Right Area End Here -->
            </div>
        </div>
    </div>
    <!-- Header Middle Area End Here -->
    <!-- Begin Header Bottom Area -->
    <div class="header-bottom header-sticky stick d-none d-lg-block d-xl-block">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Begin Header Bottom Menu Area -->
                    <div class="hb-menu hb-menu-2">
                        <nav>
                            <ul><li></li>
                                <li><a href="index.jsp">Trang chủ</a></li>
                                <li class="megamenu-holder"><a href="shop-left-sidebar.html">Shop</a>
                                    <ul class="megamenu hb-megamenu">
                                        <li><a href="shop-left-sidebar.html">Điện thoại</a>
                                            <ul>
                                                <li><a href="shop-3-column.html">Shop 3 Column</a></li>
                                                <li><a href="shop-4-column.html">Shop 4 Column</a></li>
                                                <li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
                                                <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                                <li><a href="shop-list.html">Shop List</a></li>
                                                <li><a href="shop-list-left-sidebar.html">Shop List Left Sidebar</a></li>
                                                <li><a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="single-product-gallery-left.html">Máy tính bảng</a>
                                            <ul>
                                                <li><a href="single-product-carousel.html">Single Product Carousel</a></li>
                                                <li><a href="single-product-gallery-left.html">Single Product Gallery Left</a></li>
                                                <li><a href="single-product-gallery-right.html">Single Product Gallery Right</a></li>
                                                <li><a href="single-product-tab-style-top.html">Single Product Tab Style Top</a></li>
                                                <li><a href="single-product-tab-style-left.html">Single Product Tab Style Left</a></li>
                                                <li><a href="single-product-tab-style-right.html">Single Product Tab Style Right</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="single-product.html">Laptop</a>
                                            <ul>
                                                <li><a href="single-product.html">Single Product</a></li>
                                                <li><a href="single-product-sale.html">Single Product Sale</a></li>
                                                <li><a href="single-product-group.html">Single Product Group</a></li>
                                                <li><a href="single-product-normal.html">Single Product Normal</a></li>
                                                <li><a href="single-product-affiliate.html">Single Product Affiliate</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                                <li class="megamenu-static-holder"><a href="index.html">Pages</a>
                                    <ul class="megamenu hb-megamenu">
                                        <li><a href="blog-left-sidebar.html">Blog Layouts</a>
                                            <ul>
                                                <li><a href="blog-2-column.html">Blog 2 Column</a></li>
                                                <li><a href="blog-3-column.html">Blog 3 Column</a></li>
                                                <li><a href="blog-left-sidebar.html">Grid Left Sidebar</a></li>
                                                <li><a href="blog-right-sidebar.html">Grid Right Sidebar</a></li>
                                                <li><a href="blog-list.html">Blog List</a></li>
                                                <li><a href="blog-list-left-sidebar.html">List Left Sidebar</a></li>
                                                <li><a href="blog-list-right-sidebar.html">List Right Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="blog-details-left-sidebar.html">Blog Details Pages</a>
                                            <ul>
                                                <li><a href="blog-details-left-sidebar.html">Left Sidebar</a></li>
                                                <li><a href="blog-details-right-sidebar.html">Right Sidebar</a></li>
                                                <li><a href="blog-audio-format.html">Blog Audio Format</a></li>
                                                <li><a href="blog-video-format.html">Blog Video Format</a></li>
                                                <li><a href="blog-gallery-format.html">Blog Gallery Format</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="index.html">Other Pages</a>
                                            <ul>
                                                <li><a href="login-register.html">My Account</a></li>
                                                <li><a href="checkout.html">Checkout</a></li>
                                                <li><a href="compare.html">Compare</a></li>
                                                <li><a href="wishlist.html">Wishlist</a></li>
                                                <li><a href="shopping-cart.html">Shopping Cart</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="index.html">Other Pages 2</a>
                                            <ul>
                                                <li><a href="contact.html">Contact</a></li>
                                                <li><a href="about-us.html">About Us</a></li>
                                                <li><a href="faq.html">FAQ</a></li>
                                                <li><a href="404.html">404 Error</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li></li>
                                <li><a href="">Tin tức</a></li>

                                <li><a href="">Liên hệ</a></li>

                                <li><a href="">Giới thiệu</a></li>

                                <li class="hb-info f-right p-0 d-sm-none d-lg-block">
                                    <span>590 Cách mạng tháng 8,Quận 3,TP.Hồ Chí Minh</span>
                                </li>
                                <!-- Header Bottom Menu Information Area End Here -->
                            </ul>
                        </nav>
                    </div>
                    <!-- Header Bottom Menu Area End Here -->
                </div>
            </div>
        </div>
    </div>

</header>