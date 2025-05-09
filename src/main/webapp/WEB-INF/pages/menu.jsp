<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu - The Professor's Plate</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
</head>
<body>
    <jsp:include page="header.jsp" />
    
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-sidebar">
            <h1 class="headline">Our</h1>
            <h1 class="headline-secondary">Menu</h1>
            <p class="hero-text">Savor the flavors of our carefully crafted dishes</p>
            <a href="#menu-categories" class="cta-button">View Menu</a>
        </div>
        <div class="hero-image">
            <img src="${pageContext.request.contextPath}/resources/productsImage/Steak.jpg" alt="Featured Dish">
            <div class="image-overlay">
                <div class="overlay-content">
                    <span class="tag">Chef's Special</span>
                    <h2>Premium Steak</h2>
                    <p>Perfectly grilled to your preference</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Menu Categories -->
    <div id="menu-categories" class="filter-controls">
        <div class="container">
            <h2 class="section-title">Discover Our Dishes</h2>
            <div class="filters">
                <button class="filter-btn active" data-filter="all">All Menu</button>
                <button class="filter-btn" data-filter="appetizers">Appetizers</button>
                <button class="filter-btn" data-filter="mains">Main Course</button>
                <button class="filter-btn" data-filter="desserts">Desserts</button>
                <button class="filter-btn" data-filter="drinks">Beverages</button>
            </div>
        </div>
    </div>
    
    <!-- Menu Grid -->
    <section id="menu" class="menu-grid">
        <!-- Appetizers -->
        <div class="menu-item" data-category="appetizers">
            <img src="${pageContext.request.contextPath}/resources/productsImage/Pasta.jpg" alt="Appetizer">
            <div class="item-overlay">
                <h3>Bruschetta</h3>
                <p>Fresh tomatoes, basil, garlic</p>
                <span class="price">$8.99</span>
            </div>
        </div>

        <!-- Main Courses -->
        <div class="menu-item" data-category="mains">
            <img src="${pageContext.request.contextPath}/resources/productsImage/Steak.jpg" alt="Main Course">
            <div class="item-overlay">
                <h3>Ribeye Steak</h3>
                <p>Premium cut, herb butter</p>
                <span class="price">$34.99</span>
            </div>
        </div>

        <!-- Special Item - Wide -->
        <div class="menu-item wide" data-category="mains">
            <img src="${pageContext.request.contextPath}/resources/productsImage/Salmon.jpg" alt="Seafood Special">
            <div class="item-overlay">
                <h3>Grilled Salmon</h3>
                <p>Fresh Atlantic salmon, lemon butter sauce</p>
                <span class="price">$28.99</span>
            </div>
        </div>

        <!-- Desserts -->
        <div class="menu-item" data-category="desserts">
            <img src="${pageContext.request.contextPath}/resources/productsImage/Food.jpg" alt="Dessert">
            <div class="item-overlay">
                <h3>Chocolate Lava Cake</h3>
                <p>Warm chocolate, vanilla ice cream</p>
                <span class="price">$9.99</span>
            </div>
        </div>

        <!-- Beverages -->
        <div class="menu-item" data-category="drinks">
            <img src="${pageContext.request.contextPath}/resources/productsImage/Drinks.jpg" alt="Cocktail">
            <div class="item-overlay">
                <h3>Signature Cocktail</h3>
                <p>House special blend</p>
                <span class="price">$12.99</span>
            </div>
        </div>

        <!-- More Menu Items -->
        <div class="menu-item" data-category="mains">
            <img src="${pageContext.request.contextPath}/resources/productsImage/Piz.jpg" alt="Pizza">
            <div class="item-overlay">
                <h3>Artisan Pizza</h3>
                <p>Wood-fired, fresh toppings</p>
                <span class="price">$18.99</span>
            </div>
        </div>
    </section>

    <!-- Daily Specials -->
    <div class="feature-section">
        <div class="feature-text">
            <h2>Today's Special</h2>
            <p>Chef's curated three-course meal featuring our signature dishes and a complimentary glass of wine.</p>
            <div class="special-price">
                <span class="price-tag">$49.99</span>
                <span class="per-person">per person</span>
            </div>
            <a href="#" class="cta-button secondary">Reserve Now</a>
        </div>
        <div class="feature-image">
            <img src="${pageContext.request.contextPath}/resources/productsImage/Vegsteak.jpg" alt="Special of the day">
        </div>
    </div>

    <jsp:include page="footer.jsp" />
    <script src="${pageContext.request.contextPath}/javaScript/menu.js"></script>
</body>
</html>