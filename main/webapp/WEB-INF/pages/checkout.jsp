<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Checkout - The Professor's Plate</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/checkout.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>
    <jsp:include page="header.jsp" />
  
    <div class="container">
    <h1>Your order</h1>
    <div class="order-box">
      <div class="order-header">
        <span><strong>Product</strong></span>
        <span><strong>Total</strong></span>
      </div>

  
      <div class="order-item">
        <div class="product-info">
          <img src="../resources/images/system/burger.jpeg" />
          <div class="product-details">
            <p>Cheese burger</p>
            <div class="quantity">
              <button>-</button>
              <input type="text" value="1" readonly />
              <button>+</button>
            </div>
          </div>
        </div>
        <div class="product-price">$20</div>
    </div>

      <div class="order-item">
        <div class="product-info">
          <img src="../resources/images/system/momo.jpg" />
          <div class="product-details">
            <p>Momo</p>
            <div class="quantity">
              <button class="decrease">-</button>
              <input type="text" value="1" readonly />
              <button class="increase">+</button>
            </div>
          </div>
        </div>
        <div class="product-price">$<span class="item-total">15</span></div>
      </div>

      <hr />

      <div class="summary">
        <div><strong>Subtotal</strong><span>$20</span></div>
        <div><strong>Shipping</strong><span>$5</span></div>
        <div><strong>Total</strong><span>$25</span></div>
      </div>

      <div class="payment-method">
        <p><strong>Choose payment method</strong></p>
        <label><input type="radio" name="payment" checked /> E-sewa <img src="esewa.png" /></label><br />
        <label><input type="radio" name="payment" /> Cash on delivery</label>
      </div>

      <button class="place-order">Place order</button>
    </div>
  </div>

    <div class="images-section">
        <img src="../resources/images/system/checkout1.jpeg" alt="Checkout image 1" >
        <img src="../resources/images/system/checkout3.jpeg" alt="Checkout image 3">
        <img src="../resources/images/system/checkout2.jpeg" alt="Checkout image 2">
        <img src="../resources/images/system/checkout4.jpeg" alt="Checkout image 4">
        <img src="../resources/images/system/checkout5.jpeg" alt="Checkout image 5">
    </div>

     
   <jsp:include page="footer.jsp" />
</body>
</html>

