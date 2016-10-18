<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<link href="<c:url value="/resources/css/credit.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/add.css" />" rel="stylesheet">
</head>
<body style="text-align:center">

 <div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <font size="4">Payment Details</font>
                    </h3>
                    <!-- <div class="checkbox pull-right">
                        <label>
                            <input type="checkbox" />
                            Remember
                        </label>
                    </div> -->
                </div>
                <div class="panel-body">
                    <form role="form">
                    <div class="form-group">
                        <label for="cardNumber">
                            <font size="4">CARD NUMBER</font></label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number"
                                required autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-7 col-md-7">
                            <div class="form-group">
                                <label for="expityMonth">
                                    <font size="4">EXPIRY DATE</font></label>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
                                </div>
                                <div class="col-xs-6 col-lg-6 pl-ziro">
                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group">
                                <label for="cvCode">
                                    <font size="4">CVV CODE</font></label>
                                <input type="password" class="form-control" id="cvCode" placeholder="CV" required />
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#"><span class="badge pull-right"><span class="glyphicon glyphicon-usd"></span>Rs ${Price}</span> Final Payment</a>
                </li>
            </ul>
            
            <br/>
            <button class="adc" value="Pay">Pay</button>
            <!-- <a href="#" class="btn btn-success btn-lg btn-block" role="button">Pay</a> -->
        </div>
    </div>
</div>
 
</body>
</html>






















<%-- <div class="container">
		<div class="row col-xs-4"></div>
		<div class="col-xs-4">
     <!-- CREDIT CARD FORM STARTS HERE -->
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="row">
							<h3 class="panel-title " style="padding-left: 20px">Payment Details</h3>
							
						</div>
					</div>
					<div class="panel-body">
						<form action="pay" method="post">
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group">
										<label for="cardNumber">Card Number</label>
										<div class="form-group">
											<input type="text" class="form-control input-sm" name="cardNumber"
												placeholder="Valid Card Number" pattern="^[123456789]\d{15}$"
												title="Enter valid 16 digit number"
												required /> 
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-7 col-md-7">
									<div class="form-group">
										<label for="cardExpiry"><span class="hidden-xs">Expiration</span><span
											class="visible-xs-inline">EXP</span> DATE</label> <input type="tel"
											class="form-control input-sm" name="cardExpiry" placeholder="MM / YY"
											 required />
									</div>
								</div>
								<div class="col-xs-5 col-md-5 pull-right">
									<div class="form-group">
										<label for="cardCVC">CVV Code</label> <input type="text" pattern="^[123456789]\d{2}$"  size="3"
											class="form-control input-sm" name="cardCVC" placeholder="CVV"
											required />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group">
										<label for="couponCode">Coupon Code</label> <input type="text"
											class="form-control input-sm" name="couponCode" />
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12">
								
									<button class="btn btn-success btn-sm btn-block" type="submit">Make Payment</button>		
								
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- CREDIT CARD FORM ENDS HERE -->
</div>
     
</div> --%>