<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professor's Plate - Customer Reviews</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/review.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>
    <jsp:include page="header.jsp" />

    <div class="hero-section">
        <div class="hero-content">
            <div class="hero-logo">
                <img src="logo.png" alt="Professor's Plate Logo" class="main-logo">
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
                    <div class="avatar"></div>
                </div>
                <div class="review-content">
                    <h3>Sophia Williams</h3>
                    <p>What sets Professor's Plate apart is their delivery service. The food arrived hot and well-packaged, and the delivery staff is incredibly professional and punctual...</p>
                    <div class="verified-tag">✓ Verified Customer</div>
                    <div class="read-more">
                        <span>read more</span>
                    </div>
                    <div class="rating">
                        <span class="stars">★★★★★</span>
                        <span class="score">5/5</span>
                    </div>
                </div>
            </div>

            <div class="review-card">
                <div class="avatar-container">
                    <div class="avatar"></div>
                </div>
                <div class="review-content">
                    <h3>Michael Johnson</h3>
                    <p>Even through delivery, the flavor profiles are exceptional! Their signature dishes combine traditional techniques with modern twists. The pasta arrived perfectly al dente with the sauce still fresh.</p>
                    <div class="verified-tag">✓ Verified Customer</div>
                    <div class="read-more">
                        <span>read more</span>
                    </div>
                    <div class="rating">
                        <span class="stars">★★★★★</span>
                        <span class="score">5/5</span>
                    </div>
                </div>
            </div>
            
            <div class="review-card">
                <div class="avatar-container">
                    <div class="avatar"></div>
                </div>
                <div class="review-content">
                    <h3>Amanda Chen</h3>
                    <p>The food quality is outstanding! I ordered their signature steak and it arrived perfectly cooked, juicy and tender. The seasoning was spot-on and the sides were equally delicious. So impressed that such high-quality restaurant food can be delivered so well.</p>
                    <div class="verified-tag">✓ Verified Customer</div>
                    <div class="read-more">
                        <span>read more</span>
                    </div>
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
                <img src="food 9.jpg" alt="Food Image 1" class="food-img">
                <img src="food 6.jpg" alt="Food Image 2" class="food-img">
                <img src="food 8.jpg" alt="Food Image 3" class="food-img">
            </div>
        </div>
    </div>

    <div class="gallery-section">
        <div class="gallery-container">
            <img src="woman.jpg" alt="Woman eating salad" class="gallery-img large">
            <img src="food 7.jpg" class="gallery-img small">
            <img src="snoop.jpg" class="gallery-img medium-vertical">
            <img src="food 5.jpg" class="gallery-img medium-horizontal">
        </div>
        <img src="food 4.jpg" alt="Chef preparing food" class="gallery-img banner">
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>