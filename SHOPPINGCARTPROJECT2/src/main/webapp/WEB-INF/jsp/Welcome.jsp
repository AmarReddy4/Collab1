<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en-US">
<head>

<style>
ul {
	list-style: none;
	padding: 0; 
	margin: 0;
}

.menu {
	display: flex;
	justify-content: space-around;
}

li {
	hover: none;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: 0 auto;
}
</style>

<meta charset="ISO-8859-1">
<title>GADGETS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/demo.css" />" 
	rel="stylesheet">
<link href="<c:url value="/resources/css/footer-distributed-with-address-and-phones.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap-theme.min.css" />"
	rel="stylesheet">
 <link href="<c:url value="/resources/css/w3.css" />" 
	rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" 
	rel="stylesheet">
<link href="<c:url value="/resources/css/anim.css" />" 
	rel="stylesheet">
<link href="<c:url value="/resources/css/main_global.css" />" rel="stylesheet">
<link href="<c:url value="/resources/js/gulpfile.js" />" rel="stylesheet">
<link href="<c:url value="/resources/css/HomePage.css" />" rel="stylesheet">
<link href="<c:url value="/resources/js/all.js" />" rel="stylesheet">
<link href="<c:url value="/resources/js/jquery-1.11.1.min.js" />"rel="stylesheet">
<link href="<c:url value="/resources/js/main.js" />" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/gulpfile.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/all.js" ></script>	
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" media="all" href="styles/main_global.css"/>
</head>


<body class="subscribe_title">

<%-- <c:when test="${!Administrator}"> --%>
<%-- <header class="header">      
	  <div class="header_main_row headerRow"><a href="#" class="sidebar_open_link nav_mod navOpen">
          <svg height="18" width="26" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 26 18">
            <path fill="#ffffff" fill-rule="evenodd" d="M 0 18 C 0 18 0 16 0 16 C 0 16 26 16 26 16 C 26 16 26 18 26 18 C 26 18 0 18 0 18 Z M 0 0 C 0 0 26 0 26 0 C 26 0 26 2 26 2 C 26 2 0 2 0 2 C 0 2 0 0 0 0 Z M 20 10 C 20 10 0 10 0 10 C 0 10 0 8 0 8 C 0 8 20 8 20 8 C 20 8 20 10 20 10 Z"></path>
          </svg></a>
        <div class="logo_wrap header_mod"><a href="Welcomepage" class="logo_text">GADGETS</a></div><a href="#" class="sidebar_open_link cart_mod cartOpen">
          <svg height="25" width="20" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 20 25">
            <path fill="#ffffff" fill-rule="evenodd" d="M 19 8 C 19 8 16 8 16 8 C 16 8 16 6 16 6 C 16 2.69 13.31 0 10 0 C 6.69 0 4 2.69 4 6 C 4 6 4 8 4 8 C 4 8 1 8 1 8 C 0.45 8 0 8.45 0 9 C 0 9 0 10 0 10 C 0 10 0 23 0 23 C 0 24.1 0.89 25 2 25 C 2 25 18 25 18 25 C 19.11 25 20 24.1 20 23 C 20 23 20 10 20 10 C 20 10 20 9 20 9 C 20 8.45 19.55 8 19 8 Z M 6 6 C 6 3.79 7.79 2 10 2 C 12.21 2 14 3.79 14 6 C 14 6 14 8 14 8 C 14 8 6 8 6 8 C 6 8 6 6 6 6 Z M 18 22 C 18 22.55 18.55 23 18 23 C 18 23 3 23 3 23 C 2.45 23 2 22.55 2 22 C 2 22 2 21 2 21 C 2 21 18 21 18 21 C 18 21 18 22 18 22 Z M 18 19 C 18 19 2 19 2 19 C 2 19 2 10 2 10 C 2 10 4 10 4 10 C 4 10 4 11 4 11 C 4 11.55 4.45 12 5 12 C 5.55 12 6 11.55 6 11 C 6 11 6 10 6 10 C 6 10 14 10 14 10 C 14 10 14 11 14 11 C 14 11.55 14.45 12 15 12 C 15.55 12 16 11.55 16 11 C 16 11 16 10 16 10 C 16 10 18 10 18 10 C 18 10 18 19 18 19 Z"></path>
          </svg></a>
      </div>
	  
      <!-- sidebars-->
      
	  <div class="nav_sidebar navSidebar">
        <dl class="form_cell search_mod">
          <dt class="form_c_hline search_mod hline_hide_mod">
            <label for="search_header">Search</label>
          </dt>
          <dd class="form_c_f_w search_mod hline_hide_mod">
            <input type="text" id="search_header" placeholder="Search"  class="f_c_field search_mod "/><a href="#" class="header_search_link"></a><a href="#" class="sidebar_close_btn navClose"></a>
          </dd>
        </dl>
        <c:if test="${!empty categoryList}">
						<div class="horizontal">
							 <ul class="cat_list header_mod">
								<li class="cat_item header_modclass=">
								<c:forEach items="${categoryList}" var="category"> 
									<li><a href="view/${category.id}" class="w3-hover-none"><i
											class="fa fa-list-alt" aria-hidden="true"></i>
											${category.name}</a></li>
								</c:forEach>
								</ul>
								</div>
							
						
					</c:if>
        <!-- <ul class="cat_list header_mod">
          <li class="cat_item header_mod"><a href="#" class="cat_link header_mod">Furniture</a></li>
          <li class="cat_item header_mod"><a href="#" class="cat_link header_mod">Decoration</a></li>
          <li class="cat_item header_mod"><a href="#" class="cat_link header_mod">Lighting</a></li>
          <li class="cat_item header_mod"><a href="#" class="cat_link header_mod">Electronics</a></li>
        </ul> -->
        
        <nav>
          <ul class="main_menu_list header_mod">
            <li class="main_menu_item header_mod"><a href="#" class="main_menu_link header_mod">About Us</a></li>
            <li class="main_menu_item header_mod"><a href="#" class="main_menu_link header_mod">Contact Us</a></li>
            <li class="main_menu_item header_mod"><a href="#" class="main_menu_link header_mod">Delivery</a></li>
            <li class="main_menu_item header_mod"><a href="#" class="main_menu_link header_mod">Returns</a></li>
          </ul>
        </nav>
        
      </div>
      <div class="cart_sidebar cartSidebar">
        <div class="cart_header"><span class="cart_amount">2</span><a href="#" class="sidebar_close_btn cartClose"></a></div>
        <ul class="product_list cart_mod">
          <li class="product_item cart_mod">
            
            
            <!-- <div class="product_block cart_mod">
              <div class="product_i_w cart_mod"><img alt="" src="i/product_16.jpg" class="product_i cart_mod"/></div>
              <div class="product_info cart_mod"><a href="#" class="product_title cart_mod">Bright Wall Clock</a><span class="product_price cart_mod">$99</span><a href="#" class="product_remove cart_mod">Delete</a></div>
            </div> -->
          </li>
      
        </ul>
        <div class="cart_footer">
          <div class="cart_total">
            <dl>
              <dt class="title">Total:</dt>
              <dd class="def">$308</dd>
            </dl>
          </div><a href="Payment" class="cart_check_btn">Checkout</a>
        </div>
      </div>
    </header> --%>
<%--     </c:when> --%>	

<nav class="navbar navbar-light" style="background-color: steelblue; opacity: 0.9;">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-toggle collapsed" data-target="#navbar" data-toggle="collapse">
                <i class="fa fa-chevron-down faa-vertical animated"></i>
            </a>
            <!-- <a href="Welcomepage" tabindex="0" class="navbar-brand faa-pulse faa-slow animated" data-toggle="popover" data-trigger="focus" data-html="true" data-placement="bottom" data-title="Brand Quote..." data-content="<img class='img-responsive' height='140' width='140' src='data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=='/<p>Your Brand Image</p>> -->
                <a href="Welcomepage">
               <i class="fa fa-home" style="font-size:25px"> <span style="font-size:25px">GADGETS</span></i>
                <!-- <i class="fa fa-lg">G</i>
                <i class="fa fa-lg">a</i>
                <i class="fa fa-lg">d</i>
                <i class="fa fa-lg">g</i>
                <i class="fa fa-lg">e</i>
                <i class="fa fa-lg">t</i>
                <i class="fa fa-lg">S</i> -->
            </a>
        </div>
        	<c:choose>
					<c:when test="${LoggedIn}">

						<li style="float: right"><a href="perform_logout"
							class="w3-hover-none w3-text-sand w3-hover-text-white faa-parent animated-hover"><i
								class="fa fa-fw fa-lg fa-sign-out faa-tada faa-fast" style="font-size:25px"></i></a></li>
						<c:choose>
							<c:when test="${!Administrator}">
								<li style="float: right"><a href="viewcart"
									class="w3-hover-none w3-text-sand w3-hover-text-white faa-parent animated-hover"><i
										class="fa fa-fw fa-lg fa-shopping-cart faa-tada faa-fast" style="font-size:25px"></i> 
										<span class="w3-badge w3-white">${cartsize}<span style="margin-right:20px"></span></span></a></li>
							</c:when>
						</c:choose>
						<li style="float: right"><a href="#"
							class="w3-hover-none w3-text-sand w3-hover-text-white faa-parent animated-hover"><i
								class="fa fa-fw fa-lg fa-user faa-tada faa-fast" style="font-size:25px"></i> Hi, ${name}<span style="margin-right:10px"></span></a></li>
					</c:when>
					<c:otherwise>
						<li style="float: right"><a href="Register"
							class="w3-hover-none w3-text-sand w3-hover-text-white faa-parent animated-hover"><i
								class="fa fa-fw fa-lg fa-user-plus faa-tada faa-fast" style="font-size:25px"></i></a></li>
								
						
						<li style="float: right"><a href="login"
							class="w3-hover-none w3-text-sand w3-hover-text-white faa-parent animated-hover"><i
								class="fa fa-fw fa-lg fa-sign-in faa-tada faa-fast" style="font-size:30px">
								</i></a></li>
							
					</c:otherwise>
				</c:choose>
       <!--  <div id="navbar" class="navbar-collapse collapse">
            
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="faa-parent animated-hover">
	                   <i class="fa fa-fw fa-lg fa-sign-in faa-tada faa-fast"></i>LogIn
                    </a>
                </li>
            </ul>
        </div> -->
    </div>
<!-- </nav> -->			
	<!-- <div class="w3-top"> -->
		<!-- <nav> -->
			<%-- <ul class="w3-navbar w3-card-2 w3-medium "
				style="opacity: 0.9; background-color:steelblue">
				 <li><a href="Welcomepage"
					 style="background-color: steelblue;"><i
						class="fa fa-home"></i> G A D G E T S </a></li>	
				<c:choose>
					<c:when test="${LoggedIn}">

						<li style="float: right"><a href="perform_logout"
							class="w3-hover-none w3-text-sand w3-hover-text-white"><i
								class="fa fa-sign-out"></i></a></li>
						<c:choose>
							<c:when test="${!Administrator}">
								<li style="float: right"><a href="viewcart"
									class="w3-hover-none w3-text-sand w3-hover-text-white"><i
										class="fa fa-shopping-cart"></i> <span
										class="w3-badge w3-white">${cartsize}</span></a></li>
							</c:when>
						</c:choose>
						<li style="float: right"><a href="#"
							class="w3-hover-none w3-text-sand w3-hover-text-white"><i
								class="fa fa-user"></i> Hi, ${name}</a></li>
					</c:when>
					<c:otherwise>
						<li style="float: right"><a href="Register"
							class="w3-hover-none w3-text-sand w3-hover-text-white"><i
								class="fa fa-user-plus"></i></a></li>
						<li style="float: right"><a href="login"
							class="w3-hover-none w3-text-sand w3-hover-text-white"><i
								class="fa fa-sign-in"></i></a></li>
					</c:otherwise>
				</c:choose>
			</ul> --%>

			<c:choose>
				<c:when test="${!Administrator}">
					<!-- Category List -->
					<c:if test="${!empty categoryList}">
						<div>
							 <ul
								class="w3-navbar nav-tabs w3-round w3-small menu  ">
								<c:forEach items="${categoryList}" var="category"> 
									
									<li><a href="view/${category.id}" class="w3-hover-none"><i
											class="fa fa-list-alt" aria-hidden="true"></i>
											${category.name}</a></li>
								</c:forEach>

							</ul>
						</div>
					</c:if>
				</c:when>

				<c:when test="${Administrator}">
					<ul
						class="w3-navbar w3-light-grey w3-round w3-small menu w3-card-4 "
						Style="width: 100%;">
						<!-- 		<li><a href="Report" class="w3-hover-none"><i
								class="fa fa-cog fa-spin  fa-fw"></i> <span class="sr-only">Loading...</span>
								Recent Order</a></li> -->
						<li><a href="product" class="w3-hover-none"><i
								class="fa fa-list   fa-fw"></i> <span class="sr-only">Loading...</span>
								Products</a></li>
						<li><a href="category" class="w3-hover-none"><i
								class="fa fa-list  fa-fw"></i> <span class="sr-only">Loading...</span>
								Category</a></li>
						<li><a href="supplier" class="w3-hover-none"><i
								class="fa fa-list  fa-fw"></i> <span class="sr-only">Loading...</span>
								Supplier</a></li>
					</ul>
				</c:when>
			</c:choose>
		</nav>




	<c:choose>
		<c:when test="${IfViewCartClicked}">
			<c:import url="/WEB-INF/jsp/cart.jsp">
			</c:import>
		</c:when>
		<c:when test="${IndividualItemClicked}">
			<c:import url="/WEB-INF/jsp/IndividualItem.jsp">
			</c:import>
		</c:when>
		<c:when test="${IfPaymentClicked}">
			<c:import url="/WEB-INF/jsp/Payment.jsp">
			</c:import>
		</c:when>
	</c:choose>
	<!-- Category List End -->
	<c:choose>
		<c:when test="${IfLoginClicked}">
			<c:import url="/WEB-INF/jsp/logins.jsp">
			</c:import>
		</c:when>
		<c:when test="${IfRegisterClicked}">
			<c:import url="/WEB-INF/jsp/registers.jsp">
			</c:import>
		</c:when>
		<c:when test="${ViewCategoryClicked}">
			<c:import url="/WEB-INF/jsp/viewitem.jsp">
			</c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${ProductPageClicked}">
			<c:import url="/WEB-INF/jsp/AdminProduct.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${CategoryPageClicked}">
			<c:import url="/WEB-INF/jsp/AdminCategory.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${SupplierPageClicked}">
			<c:import url="/WEB-INF/jsp/AdminSupplier.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${AdminReportClicked} ">
			<c:import url="/WEB-INF/jsp/AdminReport.jsp">
			</c:import>
		</c:when>
	</c:choose>
	<!-- carousel -->
	<c:choose>
		<c:when test="${!Administrator}">
			<c:if test="${empty HideOthers}">


<!--  <div class="page_head_block parallaxContainer"><span data-layer-depth="0.2" data-array-index="1" class="page_head_bg parallaxLayer"></span>
          <h1 data-layer-depth="0.1" data-array-index="0" class="page_head_title parallaxLayer">Electronics</h1>
        </div> -->
			
			</c:if>
		</c:when>
	</c:choose>
	
	
<!--  <div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="http://proconsolerepair2dfw.com/wp-content/uploads/slider1.jpg" width="1900" height="400" alt="style">
      </div>

      <div class="item">
        <img src="http://www.digitaldepot.com.au/assets/marketing/18.jpg" width="1900" height="400" alt="pant">
      </div>

      <div class="item">
        <img src="http://norgent.co.uk/wp-content/uploads/2015/02/Laptop-home-banner-2.jpg" width="1900" height="400" alt="pant">
      </div>    
  
      <div class="item">
        <img src="http://www.yottaa.com/wp-content/uploads/2015/10/laptop3.png" width="1900" height="400" alt="Footwear">
      </div>

      <div class="item">
        <img src="http://konimboimages.s3.amazonaws.com/system/photos/65601/original/b47d6aac66f9c295d54d036ebbc9fbcb.jpg" width="1900" height="400" alt="Eyewear">
      </div>
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> -->

	<!-- Corousel End -->

	<!-- Product List-->

	<c:if test="${empty HideOthers}">

		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList6}">
					<div>
						<%-- <div align="center"
							style="background-color: #111111; height: 141px; padding-top: 20px">
							<img alt="Empty Cart"
								src="<c:url value="/resources/images/Black-Friday-Banner.jpg"></c:url>">


						</div> --%>
						<!-- <ul> -->
						<c:forEach items="${productList6}" var="product">
						 <%-- <ul class="grid_list v1_mod">
						<li class="grid_item v1_mod"><a href="item.html" data-animation_name="fadeIn" class="product_block grid_mod animationTarget">
									<div class="img">
										<img height="192px" width="192px" alt="${product.id}"
											src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>">
										<div class="desc w3-black" style="opacity: 0.9">
											<p>
												${product.name}<br> <i class="fa fa-inr"
													aria-hidden="true"></i> ${product.price}
											</p>
											</a>
											</li>
											</ul> --%>
											</c:forEach>
											
										</div>
									
             			 <%-- <div class="product_info grid_mod"><span class="product_cat grid_mod">${category}"</span>
               			 <h2 class="product_title grid_mod">B&O BeoPlay A9</h2><span class="product_price grid_mod">$149</span> --%>
              				
              				
              				
						<div class="row"
							style="padding-top: 20px; padding-botton: 20px; padding-left: 20px; padding-bottom: 20px;">
							<!-- <h3 style="margin-left: 15px">Latest Products</h3> -->
							<c:forEach items="${productList6}" var="product">
								<div class="col-xs-2 w3-animate-opacity w3-animate-left">
									<div class="img">
										<img height="192px" width="192px" alt="${product.id}"
											src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>">
										<div class="desc w3-lavender" style="opacity: 0.9">
											<p>
												${product.name}<br> <i class="fa fa-inr"
													aria-hidden="true"></i> ${product.price}
												<%-- <c:choose>
													<c:when test="${LoggedIn}">
														<form action="addtoCart/${userId}/${product.id}">
															<input type="number" value="1" name="quantity"
																class="btn btn-xs btn-primary   col-xs-6 "> <input
																type="submit" value="Add"
																class="btn btn-xs col-xs-6 btn-primary">
														</form>
													</c:when>
												</c:choose> --%>
											</p>

										</div>
									</div>
								</div>

								<%-- <li><a href=" ${product.id}" class="w3-hover-none">${product.name}</a></li>
								<li><img alt="Image"
									src="<c:url value="/WEB-INF/resources/images/product/${product.id}.jpg"></c:url>"></li>
								
								<c:choose>
									<c:when test="${LoggedIn}">
											<li><a href="addtoCart/${userId}/${product.id}"
						class="w3-hover-none">Add to Cart</a></li>
										<li>
											<form action="addtoCart/${userId}/${product.id}">
												<input type="number" value="1" name="quantity"> <input
													type="submit" value="Add to Cart">
											</form>
										</li>
									</c:when>
								</c:choose> --%>
							</c:forEach>
						</div>
						<!-- </ul> -->
					
				</c:if>
			</c:when>
		</c:choose>
	</c:if>

	<%-- <div class="row w3-card-8 w3-margin" style="margin-bottom: 0px">
		<br>
		<div class="col-xs-2 ">
			<div class="thumbnail">
				<img height="150px" width="150px" alt="${product.id}"
					src="<c:url value="/WEB-INF/resources/images/product/Lap.jpg"></c:url>">
				<div class="caption">
					<p>
						<input type="number" value="1" name="quantity"
							class="btn btn-xs btn-primary   col-xs-6 "> <a href="#"
							class="btn btn-xs btn-primary col-xs-6" role="button">Add</a>
					</p>
				</div>
			</div>
		</div>
	</div> --%>
	<!-- Product List End -->
<hr>
<footer class="footer">
        <div class="top_footer">
          <ul class="social_list">
            <li class="social_item"><a href="#" class="social_link facebook_mod ">facebook</a></li>
            <li class="social_item"><a href="#" class="social_link twitter_mod ">twitter</a></li>
            <li class="social_item"><a href="#" class="social_link insta_mod ">insta</a></li>
          </ul>
          <div class="subscribe_block"><span class="subscribe_title">Subscribe to get <strong>updates</strong></span>
            <form class="subscribe_form">
              <dl class="form_cell form_cell_v1_mod">
                <dt class="form_c_hline form_v1_mod hline_hide_mod">
                  <label for="email_subscribe">Email</label>
                </dt>
                <dd class="form_c_f_w form_v1_mod hline_hide_mod">
                  <input type="email" id="email_subscribe" placeholder="Your e-mail..." class="f_c_field default_mod subscribe_mod"/>
                </dd>
              </dl>
              <button class="subscribe_btn">Subscribe</button>
            </form>
          </div>
        </div>
        <div class="footer_in_hold">
          <div class="footer_in">
            <div class="footer_first_row">
              <h4 class="footer_title">About us</h4>
            </div>
            <div class="footer_sec_row">
              <div class="footer_text">
                <p>GADGETS make it possible for everyone to get in touch with a unique and personal look by introducing a large range of different Electronics, new technologies and beautiful colors. Thank your for your attention.</p>
              </div>
              <div class="footer_split">
                <ul class="cat_list footer_mod">
                  <li class="cat_item footer_mod"><a href="#" class="cat_link footer_mod">Mobiles</a></li>
                  <li class="cat_item footer_mod"><a href="#" class="cat_link footer_mod">Laptops</a></li>
                  <li class="cat_item footer_mod"><a href="#" class="cat_link footer_mod">Tablets</a></li>
                  <li class="cat_item footer_mod"><a href="#" class="cat_link footer_mod">Cameras</a></li>
                  <li class="cat_item footer_mod"><a href="#" class="cat_link footer_mod">Gaming</a></li>
                </ul>
                <ul class="main_menu_list footer_mod">
                  <li class="main_menu_item footer_mod"><a href="#" class="main_menu_link footer_mod">About Us</a></li>
                  <li class="main_menu_item footer_mod"><a href="#" class="main_menu_link footer_mod">Contact Us</a></li>
                  <li class="main_menu_item footer_mod"><a href="#" class="main_menu_link footer_mod">Delivery</a></li>
                  <li class="main_menu_item footer_mod"><a href="#" class="main_menu_link footer_mod">Deals</a></li>
                </ul>
                <div class="footer_info">
                  <p>Copyright 2016 GADGETS.</p>
                  <p>Powered by <a href="#">GADGETS</a></p>
                  <ul class="bank_list">
                    <li class="bank_item"><a href="#" class="bank_link"><img alt="" src="resources/i/visa.svg" class="bank_i"/></a></li>
                    <li class="bank_item"><a href="#" class="bank_link"><img alt="" src="resources/i/mastercard.svg" class="bank_i"/></a></li>
                    <li class="bank_item"><a href="#" class="bank_link"><img alt="" src="resources/i/paypal.svg" class="bank_i"/></a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </footer>



	<!-- <footer class="footer-distributed w3-card-4 w3-silver w3-margin-0"
		style="opacity: 0.9">
		<div class="footer-left" style="margin-top: 10px">
			<p>Payment Options</p>
			<a href="#"><i class="fa fa-paypal" aria-hidden="true"></i> </a> . <a
				href="#"><i class="fa fa-cc-amex" aria-hidden="true"></i> </a> . <a
				href="#"><i class="fa fa-cc-mastercard" aria-hidden="true"></i>
			</a> . <a href="#"><i class="fa fa-cc-visa" aria-hidden="true"></i> </a>
			. <a href="#"><i class="fa fa-credit-card" aria-hidden="true"></i>
			</a> . <a href="#"><i class="fa fa-google-wallet" aria-hidden="true"></i>
			</a> . <a href="#"><i class="fa fa-cc-stripe" aria-hidden="true"></i>
			</a>
			<p></p>
			<p></p>
			<p>
				GADGETS <i class="fa fa-copyright" aria-hidden="true"> 2016</i>
			</p>
			<p></p>
			<div class="footer-icons">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-linkedin"></i></a>
			</div>
		</div>
		<div class="footer-center">
			<div>
				<i class="fa fa-map-marker"></i>
				<p>
					<span>HYDERABAD, INDIA</span>
				</p>
			</div>
			<div>
				<i class="fa fa-phone"></i>
				<p>+1 832 762 0570</p>
			</div>
			<div>
				<i class="fa fa-envelope"></i>
				<p>
					<a href="mailto:support@company.com">support@gadgets.com</a>
				</p>
			</div>
		</div>
		<div class="footer-right">
			<p class="footer-company-about">
				<span>About the company</span> <a href="http://www.secura.e-sim.org"
					title="Musica, website template creation">Gadgets</a> is direct online retailer for the all new electronics.We also offer a wide range of services to the new era industry.
					This GADGETS is well known for our focus on customer service and it has become one of the most trusted names in the industry. 
					Our vision is to dominate all aspects of the Gadgets industry including gaming, photography, education, consumption, artist relations,curation and culture.
					GadGETS was started in 2016. Starting with zero capital and a simple business plan
					in growing the GADGEEKS into the leading online retailer in the electronics industry.
			</p>
		</div>
	</footer> -->


	<!-- Carousel Script -->
	<!--  -->
	<script>
		$(document).ready(function() {
			// Activate Carousel
			$("#carousel-home").carousel();

			// Enable Carousel Indicators
			$(".item1").click(function() {
				$("#carousel-home").carousel(0);
			});
			$(".item2").click(function() {
				$("#carousel-home").carousel(1);
			});
			$(".item3").click(function() {
				$("#carousel-home").carousel(2);
			});
			$(".item4").click(function() {
				$("#carousel-home").carousel(3);
			});
			$(".item5").click(function() {
				$("#carousel-home").carousel(4);
			});
			$(".item6").click(function() {
				$("#carousel-home").carousel(5);
			});

			// Enable Carousel Controls
			$(".left").click(function() {
				$("#carousel-home").carousel("prev");
			});
			$(".right").click(function() {
				$("#carousel-home").carousel("next");
			});
		});
	</script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="js/all.js"></script>
    <script src="js/main.js"></script>
	<!-- Carousel Script End  -->

</body>
</html>
