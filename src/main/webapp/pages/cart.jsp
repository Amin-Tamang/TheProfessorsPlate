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

	<div class="container" id="cartContainer">
    <!-- Cart items will be inserted here -->
	</div>

	<script>
		document.addEventListener("DOMContentLoaded", function() {
		    const container = document.getElementById("cartContainer");
		    const cart = JSON.parse(localStorage.getItem('cart')) || [];
		
		    if (cart.length === 0) {
		        container.innerHTML = `
		            <div style="text-align:center; width:100%; margin-top:100px;">
		                <h2>Your Cart is Empty 🛒</h2>
		            </div>
		        `;
		    } else {
		        cart.forEach(item => {
		            const card = document.createElement("div");
		            card.classList.add("item-col");
		            card.style.margin = "10px";
		
		            card.innerHTML = `
		                <img src="${item.image}" alt="${item.name}" style="width:330px; height:200px; object-fit:cover;">
		                <h3>${item.name}</h3>
		                <h3>Rs. ${item.price}</h3>
		            `;
		            container.appendChild(card);
		        });
		    }
		});
	</script>
	<jsp:include page="footer.jsp" />
</body>
</html>