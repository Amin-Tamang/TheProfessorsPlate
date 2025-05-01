<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Gallery - The Professor's Plate</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/gallery.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Include Header -->
    <jsp:include page="header.jsp" />

    <!-- Gallery Hero Section -->
    <section class="gallery-hero">
        <div class="gallery-hero-text">
            <h1>Our Food Gallery</h1>
            <p>Explore our mouthwatering creations, which are expertly and passionately made. Every meal is a tale of taste, custom, and culinary brilliance.</p>
        </div>
        <div class="gallery-hero-image">
         <img src="${pageContext.request.contextPath}/resources/images/Pizza.jpg" alt="Delicious Pizza">
        </div>
    </section>

    <!-- Gallery Grid -->
    <section class="gallery-container">
        <div class="gallery-grid">
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/images/Drinks.jpg" alt="Refreshing Drink">
                <div class="food-description">
                    <h3>Signature Cocktails</h3>
                    <p>The beverages are prepared from scratch using fresh fruits and high-quality ingredients.</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/images/Steak.jpg"alt="Juicy Steak">
                <div class="food-description">
                    <h3>Prime Steak</h3>
                    <p>Beef, having been matured for 28 days, cooked to perfection and served with roasted vegetables.</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/images/Caviar.jpg"alt="Caviar presentation.">
                <div class="food-description">
                    <h3>Caviar presentation.</h3>
                    <p>Premium caviar elegantly served in a coupe glass with crackers on the side.</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/images/Beer.jpg" alt="Cold Beer">
                <div class="food-description">
                    <h3>Beer</h3>
                    <p>Local beers from a light lager to a rich full-bodied stout.</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/images/Salmon.jpg"alt="Seafood Platter">
                <div class="food-description">
                    <h3>Grilled Salmon</h3>
                    <p>Wild-caught salmon with lemon-dill sauce and seasonal vegetables.</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/images/Burger.jpg" alt="Gourmet Burger">
                <div class="food-description">
                    <h3>Professor's Signature Burger</h3>
                    <p>House-ground beef burger with caramelized onions, artisan cheese, and secret sauce.</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/images/Roast.jpg" alt="Sunday Roast">
                <div class="food-description">
                    <h3>Traditional Roast</h3>
                    <p>Slow-roasted beef served with Yorkshire pudding and rich gravy.</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/images/Small Pizza.jpg" alt="Artisan Pizza">
                <div class="food-description">
                    <h3>Wood-Fired Margherita Pizza</h3>
                    <p>Made with tomatoes, fresh mozzarella, signature sauce and fermented dough.</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="${pageContext.request.contextPath}/resources/images/Chef.jpg"alt="Our Chef">
                <div class="food-description">
                    <h3>Chef Michel </h3>
                    <p>Our head chef with over 20 years of experience.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Include Footer -->
    <jsp:include page="footer.jsp" />
</body>
</html>