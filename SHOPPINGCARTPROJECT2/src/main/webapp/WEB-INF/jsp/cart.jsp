<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/cart.css" />" rel="stylesheet">
<!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"> -->
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head> -->

<body>
<div class="container-fluid">
<div id="cart">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
					<div class="panel panel-primary ">
						<div class="panel-heading">
							<div class="panel-title">
								<div class="row">
									<div class="col-xs-6">
										<h5 style="color: white">
											<span class="glyphicon glyphicon-shopping-cart"></span>
											Your Cart
										</h5>
									</div>
									<div class="col-xs-3"></div>
									<!-- <div class="col-xs-3">
										<h5 style="color: white">
											<a href="#" class="btn btn-success btn-block ">Previous
												Orders</a>
										</h5>
									</div> -->
								</div>
							</div>
						</div>
						<div class="panel-body">

							<div class="row">
								<div class="col-xs-5">
									<label>Product Details</label>
								</div>
								
								<div class="col-xs-2">
									<label> Total Price</label>
								</div>

								<div class="col-xs-4">
									<div class="col-xs-6">
										<label>Quantity</label>
									</div>
									<div class="col-xs-6">
										<label>Update</label>
									</div>
								</div>
								<div class="col-xs-1">
									<a href="#"><span
										class="glyphicon glyphicon-trash"> </span></a>
								</div>
							</div>
							<hr>
							<c:if test="${!empty EmptyCart}">
								<div
									style="display: table-cell; vertical-align: middle; text-align: center">
									<img width="50%" alt="Empty Cart"
										src="<c:url value="/resources/images/emptycart.jpg"></c:url>">
								</div>
							</c:if>
							<c:if test="${!empty CartList}">
								<c:forEach items="${CartList}" var="cart">
									<div class="row" >
										<div class="col-xs-5">
										<div class="col-xs-6">
										<a href="IndividualItem/${cart.productid}">
											<img height="80px" width="80px"  alt="${cart.productid}"
											src="<c:url value="/resources/images/product/${cart.productid}.jpg"></c:url>">
											</a>
										</div>
										<div style="padding-top: 2px" >
											<ul>
											<li><label>${cart.productname}</label></li>
											<li><label>Rs. ${product.price}</label></li>
											</ul>
										</div>
										</div>
										<div class="col-xs-2">
								<input type="text" class="form-control input-sm" value="${cart.quantity}">
									</div>
										<div class="col-xs-2 text-right" style="padding-top: 22px">
											<label>${cart.price}</label>
										</div>

										<div class="col-xs-4" style="padding-top: 22px">
											<form action="editorder/${cart.id}">
												<div class="col-xs-6">
													<input type="text" class="form-control input-sm"
														value="${cart.quantity}" name="quantity">
												</div>
												<div class="col-xs-6" >
													<button type="submit"
														class="btn btn-default btn-sm btn-block">Update
														cart</button>
												</div>

											</form>
										</div>
										<div class="col-xs-1" style="padding-top: 22px">
											<a href="deleteitem/${cart.id}" class="form-control input-sm"><span
												class="glyphicon glyphicon-trash"> </span></a>
										</div>
									</div>
									<hr>
								</c:forEach>
							</c:if>
						</div>
						<div class="panel-footer">
							<div class="row text-center">
								<div class="col-xs-3">
									<a href="Welcomepage" class="btn btn-primary btn-sm btn-block">Continue
										Shopping</a>
								</div>
								<c:if test="${empty EmptyCart}">
								<div class="col-xs-6">
									<h4 class="text-right">Total : Rs ${CartPrice}</h4>
								</div>
								<form action="placeorder">
								
									<div class="col-xs-3">
										<button type="submit" class="btn btn-success btn-block">
											Checkout</button>
									</div>
									
								</form>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:35%">Product</th>
							<th style="text-align:center" style="width:10%">Price</th>
							<th style="text-align:center" style="width:1%">Quantity</th>
							<th style="text-align:center" style="width:8%">Delete</th>
						<!-- 	<th style="width:22%" class="text-center">Subtotal</th> -->
							<th style="width:10%"></th>
						</tr>
					</thead>
					<c:if test="${!empty EmptyCart}">
								<div
									style="display: table-cell; vertical-align: middle; text-align: center">
									<img width="50%" alt="Empty Cart"
										src="<c:url value="/resources/images/emptycart.jpg"></c:url>">
								</div>
							</c:if>
					<tbody>
						<tr>
						<c:if test="${!empty CartList}">
						<c:forEach items="${CartList}" var="cart">
							<td data-th="Product">
								<div class="col-xs-5">
										<div class="col-xs-6">
										<a href="IndividualItem/${cart.productid}">
											<img height="72px" width="72px"  alt="${cart.productid}"
											src="<c:url value="/resources/images/product/${cart.productid}.jpg"></c:url>">
											</a>
										</div>
										<div class="col-xs-8" style="padding-top: 1px" >
											<label>${cart.productname}</label>
										</div>
										</div>
							</td>
							
							<td data-th="Price">${product.price}</td>
							
							<td data-th="Quantity">
								<div class="col-xs-2">
								<input type="text" class="form-control input-sm" value="${cart.quantity}">
									</div>
							</td>
							
							<td data-th="Subtotal" class="text-center">
											<label>${cart.price}</label>
							</td>
							
											 <form action="editorder/${cart.id}">
													<td class="actions" data-th="">
													<input type="text" class="form-control input-sm"
														value="${cart.quantity}" name="quantity">
												</td>
												
												<td>
													<button type="submit"
														class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
												</td>
											</form>
											
											
<!-- 								<button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i>

								</button> -->
								<form action="deleteitem/${cart.id}">
								<td class="actions" data-th="">
								<button type="submit" class="btn btn-danger btn-sm">
								<i class="fa fa-trash-o" >							
										</i></button>								
								</td>
							</form>
							</c:forEach>
						</c:if>
						</tr>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total: Rs ${CartPrice}</strong></td>
						</tr>
						<tr>
							<td><a href="Welcomepage" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total:Rs ${CartPrice}</strong></td>
							<td><a href="Payment" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
				</table>
</div>
	
</body>
</html>
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/cart.css" />" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body> <!-- style="padding-top: 70px"> -->
	<div id="cart">
		<div class="container">
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
					<div class="panel panel-primary ">
						<div class="panel-heading">
							<div class="panel-title">
								<div class="row">
									<div class="col-xs-6">
										<h5 style="color: white">
											<span class="glyphicon glyphicon-shopping-cart"></span>
											Shopping Cart
										</h5>
									</div>
									<div class="col-xs-3"></div>
									<div class="col-xs-3">
										<h5 style="color: white">
											<a href="#" class="btn btn-success btn-block ">Previous
												Orders</a>
										</h5>
									</div>
								</div>
							</div>
						</div>
						<div class="panel-body">

							<div class="row">
								<div class="col-xs-5">
									<label><font size="4">Product Details</font></label>
								</div>
								
								<div class="col-xs-2 text-right">
									<label><font size="4"> Total Price</font></label>
								</div>

								<div class="col-xs-4">
									<div class="col-xs-6">
										<label><font size="4">Quantity</font></label>
									</div>
									<div class="col-xs-6">
										<label><font size="4">Update</font></label>
									</div>
								</div>
								<div class="col-xs-1">
									<a href="#"><span
										class="glyphicon glyphicon-trash"> </span></a>
								</div>
							</div>
							<hr>
							<c:if test="${!empty EmptyCart}">
								<div
									style="display: table-cell; vertical-align: middle; text-align: center">
									<img width="50%" alt="Empty Cart"
										src="<c:url value="/resources/images/emptycart.jpg"></c:url>">
								</div>
							</c:if>
							<c:if test="${!empty CartList}">
								<c:forEach items="${CartList}" var="cart">
									<div class="row" >
										<div class="col-xs-5">
										<div class="col-xs-6">
										<a href="IndividualItem/${cart.productid}">
											<img height="72px" width="72px"  alt="${cart.productid}"
											src="<c:url value="/resources/images/product/${cart.productid}.jpg"></c:url>">
											</a>
										</div>
										<div class="col-xs-6" style="padding-top: 22px" >
											<label><font size="5">${cart.productname}</font></label>
										</div>
										</div>
										<%-- <div class="col-xs-2">
								<input type="text" class="form-control input-sm" value="${cart.quantity}">
						</div> --%>
										<div class="col-xs-2 text-right" style="padding-top: 22px">
											<label><font size="4">Rs.${cart.price}</font></label>
										</div>

										<div class="col-xs-4" style="padding-top: 22px">
											<form action="editorder/${cart.id}">
												<div class="col-xs-6">
													<input type="text" class="form-control input-sm"
														value="${cart.quantity}" name="quantity">
												</div>
												<div class="col-xs-6" >
													<button type="submit"
														class="btn btn-default btn-sm btn-block"><font size="2"><b>Update
														cart</b></font></button>
												</div>

											</form>
										</div>
										<div class="col-xs-1" style="padding-top: 22px">
											<a href="deleteitem/${cart.id}"><span
												class="glyphicon glyphicon-trash"> </span></a>
										</div>
									</div>
									<hr>
								</c:forEach>
							</c:if>
						</div>
						<div class="panel-footer">
							<div class="row text-center">
								<div class="col-xs-3">
									<a href="Welcomepage" class="btn btn-primary btn-sm btn-block">Continue
										Shopping</a>
								</div>
								<c:if test="${empty EmptyCart}">
								<div class="col-xs-6">
									<h3 class="text-right">Total : Rs ${CartPrice}</h3>
								</div>
								<form action="placeorder">
								
									<div class="col-xs-3">
										  <a href="checkoutFlow" type="submit" class="btn btn-success btn-block">
											Checkout</a>
									</div>
									
								</form>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  -->
	
</body>
</html>