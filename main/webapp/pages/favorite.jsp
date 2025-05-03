<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorite</title>
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/css/favorite.css" />
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="favorites-container">
        <h1>Your Favorite Items</h1>

        <div class="favorites-list" id="favorites-list">
            <!-- Favorite items will be dynamically inserted here -->
        </div>

        <div class="empty-message" id="empty-message">
            <p>Your favorites list is empty. Start adding some items!</p>
        </div>
    </div>

    <jsp:include page="footer.jsp" />

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const favoritesList = document.getElementById('favorites-list');
            const emptyMessage = document.getElementById('empty-message');

            // Get the favorites from localStorage
            const favorites = JSON.parse(localStorage.getItem('favorites')) || [];

            // If there are favorites, show them, otherwise show the empty message
            if (favorites.length > 0) {
                emptyMessage.style.display = 'none';

                favorites.forEach(item => {
                    const favoriteItem = document.createElement('div');
                    favoriteItem.classList.add('favorite-item');

                    favoriteItem.innerHTML = `
                        <img src="${item.image}" alt="${item.name}" class="favorite-img"/>
                        <div class="favorite-info">
                            <h3 class="favorite-name">${item.name}</h3>
                            <p class="favorite-price">Rs. ${item.price}</p>
                        </div>
                    `;

                    favoritesList.appendChild(favoriteItem);
                });
            } else {
                favoritesList.style.display = 'none';
            }
        });
    </script>
</body>
</html>