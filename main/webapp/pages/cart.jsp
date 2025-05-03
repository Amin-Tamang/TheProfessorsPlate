<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/css/cart.css" />
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>
<jsp:include page="header.jsp" />
	<div class="horizontal-box">
    	<h1>Cart</h1>
	</div>

	<div class="container">
    <h1>Shopping Cart</h1>

    <div class="cart-item">
      <img src="../resources/images/food/burger.jpg" alt="Burger" />
      <div class="cart-item-info">
        <strong>Burger</strong>
        <div>Rs. 150</div>
      </div>
      <div class="cart-item-controls">
        <button>-</button>
        <input type="text" value="1" style="width: 30px; text-align:center;" readonly>
        <button>+</button>
        <span class="remove">&times;</span>
      </div>
    </div>

    <div class="cart-item">
      <img src="../resources/images/food/momo.jpg" alt="Mo Mo">
      <div class="cart-item-info">
        <strong>Mo Mo</strong>
        <div>Rs. 120</div>
      </div>
      <div class="cart-item-controls">
        <button>-</button>
        <input type="text" value="2" style="width: 30px; text-align:center;" readonly>
        <button>+</button>
        <span class="remove">&times;</span>
      </div>
    </div>

    <div class="cart-item">
      <img src="../resources/images/food/biryani.jpg" alt="Biryani">
      <div class="cart-item-info">
        <strong>Biryani</strong>
        <div>Rs. 130</div>
      </div>
      <div class="cart-item-controls">
        <button>-</button>
        <input type="text" value="1" style="width: 30px; text-align:center;" readonly>
        <button>+</button>
        <span class="remove">&times;</span>
      </div>
    </div>

    <div class="summary">
      <div><span>Subtotal</span><span>Rs.</span></div>
      <div><span>Shipping</span><span>Rs.</span></div>
      <div><span>Tax</span><span>Rs.</span></div>
      <div class="total"><span>Total</span><span>Rs.</span></div>
    </div>

    <button class="checkout">PROCEED TO CHECKOUT</button>
  </div>
	<jsp:include page="footer.jsp" />
</body>
</html>