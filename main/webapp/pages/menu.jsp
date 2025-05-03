<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/menu.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>
<jsp:include page="header.jsp" />
<div class="horizontal-box">
    <h1>Foods and Drinks</h1>
</div>
<div class="container">
    <div class="filter-menu">
        <button class="filter-icon" id="filterButton">
            <img src="../resources/images/icons/filter.png" alt="Icon" class="icon"/>
            <span>Filter</span>
        </button>
        <div class="dropdown-menu" id="filterMenu">
            <form id="filterForm">
                <label><input type="checkbox" name="category" value="nepali"> Nepali</label><br>
                <label><input type="checkbox" name="category" value="italian"> Italian</label><br>
                <label><input type="checkbox" name="category" value="american"> American</label><br>
                <label><input type="checkbox" name="category" value="indian"> Indian</label><br>
                <button type="button" class="done-button" id="doneButton">Done</button>
            </form>
        </div>
    </div>
</div>
<div class="container">
    <div class="item-row">
        <div class="item-col" data-category="nepali">
            <img src="../resources/images/food/momo.jpg" alt="Mo Mo" class="item-img" />
            <h3 class="item-name">Mo Mo</h3>
            <h3 class="item-price">Rs. 120</h3>
            <span class="heart">&#9825;</span>
            <button class="order-btn">Order</button>
        </div>
        <div class="item-col" data-category="nepali">
            <img src="../resources/images/food/noodle.jpg" alt="Noodle" class="item-img" />
            <h3 class="item-name">Noodle</h3>
            <h3 class="item-price">Rs. 120</h3>
            <span class="heart">&#9825;</span>
            <button class="order-btn">Order</button>
        </div>
        <div class="item-col" data-category="italian">
            <img src="../resources/images/food/sandwich.jpg" alt="Sandwich" class="item-img" />
            <h3 class="item-name">Sandwich</h3>
            <h3 class="item-price">Rs. 130</h3>
            <span class="heart">&#9825;</span>
            <button class="order-btn">Order</button>
        </div>
    </div>

    <div class="item-row">
        <div class="item-col" data-category="indian">
            <img src="../resources/images/food/biryani.jpg" alt="Biryani" class="item-img" />
            <h3 class="item-name">Biryani</h3>
            <h3 class="item-price">Rs. 150</h3>
            <span class="heart">&#9825;</span>
            <button class="order-btn">Order</button>
        </div>
        <div class="item-col" data-category="american">
            <img src="../resources/images/food/burger.jpg" alt="Burger" class="item-img" />
            <h3 class="item-name">Burger</h3>
            <h3 class="item-price">Rs. 150</h3>
            <span class="heart">&#9825;</span>
            <button class="order-btn">Order</button>
        </div>
        <div class="item-col" data-category="italian">
            <img src="../resources/images/food/pizza.jpg" alt="Pizza" class="item-img" />
            <h3 class="item-name">Pizza</h3>
            <h3 class="item-price">Rs. 200</h3>
            <span class="heart">&#9825;</span>
            <button class="order-btn">Order</button>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp" />
<script>
	document.addEventListener("DOMContentLoaded", function() {
	    const hearts = document.querySelectorAll(".heart");
	    const orderButtons = document.querySelectorAll(".order-btn");
	
	    // Load favorites from localStorage
	    let favorites = JSON.parse(localStorage.getItem('favorites')) || [];
	
	    // On page load, mark favorited items
	    hearts.forEach(heart => {
	        const card = heart.closest(".item-col");
	        const name = card.querySelector(".item-name").innerText.trim();
	        
	        if (favorites.find(fav => fav.name === name)) {
	            heart.innerHTML = "&#9829;"; // filled heart
	            heart.classList.add("favorited"); // change color to red
	        }
	    });
	
	    hearts.forEach(heart => {
	        heart.addEventListener("click", function() {
	            const card = heart.closest(".item-col");
	            const item = getItemDetails(card);
	
	            let favorites = JSON.parse(localStorage.getItem('favorites')) || [];
	
	            const index = favorites.findIndex(fav => fav.name === item.name);
	
	            if (index !== -1) {
	                // Remove from favorites
	                favorites.splice(index, 1);
	                heart.innerHTML = "&#9825;"; // empty heart
	                heart.classList.remove("favorited");
	            } else {
	                // Add to favorites
	                favorites.push(item);
	                heart.innerHTML = "&#9829;"; // filled heart
	                heart.classList.add("favorited");
	            }
	
	            localStorage.setItem('favorites', JSON.stringify(favorites));
	        });
	    });
	
	    orderButtons.forEach(button => {
	        button.addEventListener("click", function() {
	            const card = button.closest(".item-col");
	            const item = getItemDetails(card);
	
	            let cart = JSON.parse(localStorage.getItem('cart')) || [];
	            cart.push(item);
	
	            localStorage.setItem('cart', JSON.stringify(cart));
	
	            alert("Added to cart! 🛒");
	        });
	    });
	
	    function getItemDetails(card) {
	        const img = card.querySelector(".item-img").getAttribute("src");
	        const name = card.querySelector(".item-name").innerText.trim();
	        const priceText = card.querySelector(".item-price").innerText.trim();
	        const price = parseInt(priceText.replace('Rs.', '').trim());
	
	        return {
	            image: img,
	            name: name,
	            price: price
	        };
	    }
	});
</script>
<script>
    // Get DOM elements
    const filterButton = document.getElementById('filterButton');
    const filterMenu = document.getElementById('filterMenu');
    const doneButton = document.getElementById('doneButton');
    const checkboxes = document.querySelectorAll('input[name="category"]');
    const foodItems = document.querySelectorAll('.item-col');
    
    // Toggle filter dropdown menu
    filterButton.addEventListener('click', function() {
        filterMenu.classList.toggle('active');
    });
    
    // Apply filtering when Done button is clicked
    doneButton.addEventListener('click', function() {
        // Get selected categories
        const selectedCategories = [];
        checkboxes.forEach(checkbox => {
            if (checkbox.checked) {
                selectedCategories.push(checkbox.value.toLowerCase());
            }
        });
        
        // If no categories selected, show all items
        if (selectedCategories.length === 0) {
            foodItems.forEach(item => {
                item.classList.remove('hidden');
            });
        } else {
            // Otherwise show only selected categories
            foodItems.forEach(item => {
                const category = item.getAttribute('data-category');
                if (selectedCategories.includes(category)) {
                    item.classList.remove('hidden');
                } else {
                    item.classList.add('hidden');
                }
            });
        }
        
        // Close the filter menu
        filterMenu.classList.remove('active');
        
        // Store filter preferences in session
        storeFilterPreferences(selectedCategories);
    });
    
    // Close the dropdown when clicking outside
    window.addEventListener('click', function(event) {
        if (!filterButton.contains(event.target) && !filterMenu.contains(event.target)) {
            filterMenu.classList.remove('active');
        }
    });
    
    // Function to store filter preferences in session
    function storeFilterPreferences(categories) {
        // Use JSP session to store preferences
        fetch('saveFilters.jsp', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: 'categories=' + JSON.stringify(categories)
        });
    }
    
    // Load saved filter preferences on page load
    window.addEventListener('DOMContentLoaded', function() {
        <%
        // Get saved filter preferences from session
        String savedCategories = (String) session.getAttribute("filterCategories");
        if (savedCategories != null && !savedCategories.isEmpty()) {
        %>
            // Apply saved filters
            const savedCats = <%= savedCategories %>;
            
            // Check the appropriate checkboxes
            checkboxes.forEach(checkbox => {
                if (savedCats.includes(checkbox.value.toLowerCase())) {
                    checkbox.checked = true;
                }
            });
            
            // Apply filtering
            if (savedCats.length > 0) {
                foodItems.forEach(item => {
                    const category = item.getAttribute('data-category');
                    if (savedCats.includes(category)) {
                        item.classList.remove('hidden');
                    } else {
                        item.classList.add('hidden');
                    }
                });
            }
        <% } %>
    });
</script>

</body>
</html>