<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professor's Plate</title>
    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <div id="header-container"></div>

    <main>
        <section class="hero">
            <div class="hero-content">
                <h1>Welcome to the Professor's Plate</h1>
                <p>Some Random Text</p>
                <div class="cta-buttons">
                    <a href="register.html" class="primary-btn">Get Started</a>
                    <a href="#" class="secondary-btn">Browse Icons</a>
                </div>
            </div>
            <div class="hero-image">
                <img src="/api/placeholder/600/400" alt="Icon Collection">
            </div>
        </section>

        <section class="features">
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fa-duotone fa-solid fa-mug-hot"></i>
                </div>
                <h3>Customizable</h3>
                <p>Some Random Text.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fa-solid fa-flask"></i>
                </div>
                <h3>Workings</h3>
                <p>Some Random Text</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fa-regular fa-child"></i>
                </div>
                <h3>Children Friendly</h3>
                <p>Random text.</p>
            </div>
        </section>

        <section class="categories">
            <h2>Browse Icon Menu</h2>
            <div class="category-grid">
                <div class="category-item">
                    <div class="category-icon">
                        <i class="fas fa-laptop"></i>
                    </div>
                    <h3>Menu</h3>
                </div>
                <div class="category-item">
                    <div class="category-icon">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <h3>E-commerce</h3>
                </div>
                <div class="category-item">
                    <div class="category-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <h3>Business</h3>
                </div>
                <div class="category-item">
                    <div class="category-icon">
                        <i class="fas fa-paint-brush"></i>
                    </div>
                    <h3>Design</h3>
                </div>
                <div class="category-item">
                    <div class="category-icon">
                        <i class="fas fa-globe"></i>
                    </div>
                    <h3>Social Media</h3>
                </div>
                <div class="category-item">
                    <div class="category-icon">
                        <i class="fas fa-utensils"></i>
                    </div>
                    <h3>Food & Drink</h3>
                </div>
            </div>
        </section>

        <section class="testimonial">
            <div class="testimonial-content">
                <div class="quote">
                    <i class="fas fa-quote-left"></i>
                </div>
                <p>"Professor has revolutionized our taste buds. The quality and variety of food has increased dramatically."</p>
                <div class="testimonial-author">
                    <img src="/api/placeholder/60/60" alt="Client" class="author-image">
                    <div class="author-info">
                        <h4>Sarah Johnson</h4>
                        <p>Lead Cook, ProfPlat</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="cta">
            <h2>Ready to enhance your taste buds.</h2>
            <p>Join thousands of foodies and taste the food of The Professor.</p>
            <a href="register.html" class="cta-button">Create Free Account</a>
        </section>
    </main>

    <div id="footer-container"></div>

    <script>
        $(document).ready(function() {
            $("#header-container").load("header.html");
            $("#footer-container").load("footer.html");
        });
    </script>
</body>
</html>