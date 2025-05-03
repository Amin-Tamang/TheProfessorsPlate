<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/css/aboutus.css" />
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="horizontal-box">
    	<h1>About Us</h1>
    </div>	
	<div class="container">
        <div class="text-content">
            <h1>Welcome to <br>The Professor Plate</h1>
            <p>
            Opens Everyday: <strong>7 AM to 10 PM</strong>
            </p>
            <a href="#" class="button">Learn More</a>
        </div>
        <div class="image-content">
            <img src="../resources/images/extra/Pic 3.jpg">
        </div>
    </div>
    <div class="container">
        <div class="image-content">
            <img src="../resources/images/extra/Pic 2.jpg">
        </div>
         <div class="text-content">
            <p>
            A dining destination where culinary artistry meets convenience.
            At our core, we believe that food is more than just sustainance;
            it's an experience that connects, inspires, and delights. Driven
            by a passion for taste excellence, we offer expertly crafted dishes
            designed to tantalize taste buds and elevate every meal into a memorable 
            occasion.
            </p>
            <a href="#" class="button">Learn More</a>
        </div>
    </div>
    <div class="container">
        <div class="text-content">
            <p>
            <strong>Our mission</strong> is simple: to bring high-quality, 
            sophisticated dining directly to your doorstep. Whether you're 
            indulging in a solo treat or hosting a grand gathering, 
            The Professor's Plate delivers elegance, flavor, and variety—all 
            with the click of a button.
            </p>
            <a href="#" class="button">Learn More</a>
        </div>
        <div class="image-content">
            <img src="../resources/images/extra/Pic 1.jpg">
        </div>
    </div>
    <div class="container">
    	<div class="text-content">
    		<p>
    		The Professor's Plate website is thoughtfully designed to enhance your 
    		experience. With a user-friendly interface, you can explore our diverse 
    		culinary selections, customize your meals, and place orders effortlessly. 
    		We prioritize quality ingredients, innovative recipes, and exceptional 
    		customer service to ensure every meal feels like a masterpiece.
			</p>
			<p>
			From appetizers to entrees, and desserts to beverages, our menu caters 
			to every palate, offering both classic favorites and bold new creations. 
			At The Professor's Plate, we embrace the idea that fine dining should be 
			accessible, enjoyable, and perfectly tailored to your needs.
			</p>
			<p>
			Thank you for choosing The Professor's Plate. We're delighted to serve you 
			the finest dishes and unforgettable moments, one plate at a time.
    		</p>
    	</div>
    </div>
	<jsp:include page="footer.jsp" />
</body>
</html>