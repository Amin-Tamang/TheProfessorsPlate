<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- TODO Always Update Title Below to the page name your are building.  -->
    <title>Review Page</title>
    <!-- TODO don't forget to rename the first css path ie home.css to the page you will be building -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/review.css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp" />
    <!-- TODO Code Below -->
    
  
    <div class="hero-section">
        <div class="hero-content">
            <div class="hero-logo">
                <img src="${pageContext.request.contextPath}/resources/images/system/logo.png" alt="Professor's Plate Logo" class="main-logo">
            </div>
            <div class="hero-title">
                <h1>Professor's Plate Delivery Through Our Customer's Eyes</h1>
            </div>
        </div>
    </div>

    <div class="reviews-container">
        <div class="reviews-section">
            <div class="review-card">
                <div class="avatar-container">
                    <div class="avatar">
                        <img src="${pageContext.request.contextPath}/resources/images/system/travis.png">
                    </div>
                </div>
                <div class="review-content">
                    <h3>Travis Scott</h3>
                    <p>What sets Professor's Plate apart is their delivery service. The food arrived hot and well-packaged, and the delivery staff is incredibly professional and punctual.</p>
                    <div class="verified-tag">✓ Verified Customer</div>
                    <div class="rating">
                        <span class="stars">★★★★★</span>
                        <span class="score">5/5</span>
                    </div>
                </div>
            </div>

            <div class="review-card">
                <div class="avatar-container">
                    <div class="avatar">
                        <img src="${pageContext.request.contextPath}/resources/images/system/sza.jpg">
                    </div>
                </div>
                <div class="review-content">
                    <h3>Solána Imani Rowe</h3>
                    <p>Even through delivery, the flavor profiles are exceptional! Their signature dishes combine traditional techniques with modern twists. The pasta arrived perfectly al dente with the sauce still fresh.</p>
                    <div class="verified-tag">✓ Verified Customer</div>
                    <div class="rating">
                        <span class="stars">★★★★★</span>
                        <span class="score">5/5</span>
                    </div>
                </div>
            </div>
            
            <div class="review-card">
                <div class="avatar-container">
                    <div class="avatar">
                        <img src="${pageContext.request.contextPath}/resources/images/system/max.jpg">
                    </div>
                </div>
                <div class="review-content">
                    <h3>Max Verstappen</h3>
                    <p>The food quality is outstanding! I ordered their signature steak and it arrived perfectly cooked, juicy and tender. The seasoning was spot-on and the sides were equally delicious. So impressed that such high-quality restaurant food can be delivered so well.</p>
                    <div class="verified-tag">✓ Verified Customer</div>
                    <div class="rating">
                        <span class="stars">★★★★★</span>
                        <span class="score">5/5</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="food-images">
            <div class="restaurant-name">
                <h3>The Professor's Plate Delivery</h3>
                <p>Contact us: 9840754489 | Order online 24/7</p>
            </div>
            <div class="images-grid">
                <img src="${pageContext.request.contextPath}/resources/images/system/salad.jpg" alt="Food Image 1" class="food-img">
                <img src="${pageContext.request.contextPath}/resources/images/system/pizzas.jpg" alt="Food Image 2" class="food-img">
                <img src="${pageContext.request.contextPath}/resources/images/system/meat.jpg" alt="Food Image 3" class="food-img">
            </div>
        </div>
    </div>
        

    <div class="gallery-section">
        <div class="gallery-container">
            <img src="${pageContext.request.contextPath}/resources/images/system/woman.jpg" alt="Woman eating salad" class="gallery-img large">
            <img src="${pageContext.request.contextPath}/resources/images/system/sushi.jpg" class="gallery-img small">
            <img src="${pageContext.request.contextPath}/resources/images/system/snoop.jpg" class="gallery-img medium-vertical">
            <img src="${pageContext.request.contextPath}/resources/images/system/group-food.jpg" class="gallery-img medium-horizontal">
        </div>
        <img src="${pageContext.request.contextPath}/resources/images/system/expensive-cuisine.jpg" class="gallery-img banner">
    </div>


	<jsp:include page="footer.jsp" />
</body>
</html>