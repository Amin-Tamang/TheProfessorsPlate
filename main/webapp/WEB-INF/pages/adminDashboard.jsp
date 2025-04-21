<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Professor's Plate</title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminDashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <div id="header-container"></div>

    <div class="admin-container">
        <div class="sidebar">
            <div class="sidebar-header">
                <h3>Admin Panel</h3>
            </div>
            <ul class="sidebar-menu">
                <li class="active">
                    <a href="#dashboard"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
                </li>
                <li>
                    <a href="#orders"><i class="fas fa-shopping-bag"></i> Orders</a>
                </li>
                <li>
                    <a href="#menu"><i class="fas fa-utensils"></i> Menu Items</a>
                </li>
                <li>
                    <a href="#users"><i class="fas fa-users"></i> Users</a>
                </li>
                <li>
                    <a href="#reviews"><i class="fas fa-star"></i> Reviews</a>
                </li>
                <li>
                    <a href="#promotions"><i class="fas fa-percentage"></i> Promotions</a>
                </li>
                <li>
                    <a href="#settings"><i class="fas fa-cog"></i> Settings</a>
                </li>
                <li class="logout">
                    <a href="#logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
                </li>
            </ul>
        </div>

        <div class="main-content">
            <div class="page-header">
                <h2>Dashboard</h2>
                <div class="user-info">
                    <span class="notification-bell">
                        <i class="fas fa-bell"></i>
                        <span class="notification-count">3</span>
                    </span>
                    <div class="admin-profile">
                        <img src="/api/placeholder/40/40" alt="Admin">
                        <span>Admin User</span>
                    </div>
                </div>
            </div>

            <div class="dashboard-stats">
                <div class="stat-card">
                    <div class="stat-icon orders">
                        <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="stat-details">
                        <h3>Orders</h3>
                        <p class="stat-number">248</p>
                        <p class="stat-growth positive">+18% <span>vs last week</span></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon revenue">
                        <i class="fas fa-dollar-sign"></i>
                    </div>
                    <div class="stat-details">
                        <h3>Revenue</h3>
                        <p class="stat-number">$5,652</p>
                        <p class="stat-growth positive">+12.3% <span>vs last week</span></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon users">
                        <i class="fas fa-users"></i>
                    </div>
                    <div class="stat-details">
                        <h3>New Users</h3>
                        <p class="stat-number">45</p>
                        <p class="stat-growth positive">+5% <span>vs last week</span></p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="stat-icon reviews">
                        <i class="fas fa-star"></i>
                    </div>
                    <div class="stat-details">
                        <h3>Reviews</h3>
                        <p class="stat-number">4.8</p>
                        <p class="stat-growth neutral">0% <span>vs last week</span></p>
                    </div>
                </div>
            </div>

            <div class="dashboard-row">
                <div class="dashboard-card orders-chart">
                    <div class="card-header">
                        <h3>Orders Overview</h3>
                        <div class="card-actions">
                            <select name="time-range">
                                <option value="weekly">Weekly</option>
                                <option value="monthly">Monthly</option>
                                <option value="yearly">Yearly</option>
                            </select>
                        </div>
                    </div>
                    <div class="chart-container">
                        <img src="/api/placeholder/800/300" alt="Orders Chart">
                    </div>
                </div>
            </div>

            <div class="dashboard-row">
                <div class="dashboard-card recent-orders">
                    <div class="card-header">
                        <h3>Recent Orders</h3>
                        <a href="#all-orders" class="view-all">View All</a>
                    </div>
                    <div class="table-responsive">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Order ID</th>
                                    <th>Customer</th>
                                    <th>Date</th>
                                    <th>Items</th>
                                    <th>Amount</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>#ORD-2587</td>
                                    <td>John Smith</td>
                                    <td>Apr 14, 2025</td>
                                    <td>3</td>
                                    <td>$42.50</td>
                                    <td><span class="status delivered">Delivered</span></td>
                                    <td><a href="#" class="action-btn">Details</a></td>
                                </tr>
                                <tr>
                                    <td>#ORD-2586</td>
                                    <td>Sarah Johnson</td>
                                    <td>Apr 14, 2025</td>
                                    <td>1</td>
                                    <td>$18.99</td>
                                    <td><span class="status in-progress">In Progress</span></td>
                                    <td><a href="#" class="action-btn">Details</a></td>
                                </tr>
                                <tr>
                                    <td>#ORD-2585</td>
                                    <td>Robert Davis</td>
                                    <td>Apr 13, 2025</td>
                                    <td>4</td>
                                    <td>$67.25</td>
                                    <td><span class="status processing">Processing</span></td>
                                    <td><a href="#" class="action-btn">Details</a></td>
                                </tr>
                                <tr>
                                    <td>#ORD-2584</td>
                                    <td>Emily Wilson</td>
                                    <td>Apr 13, 2025</td>
                                    <td>2</td>
                                    <td>$29.95</td>
                                    <td><span class="status delivered">Delivered</span></td>
                                    <td><a href="#" class="action-btn">Details</a></td>
                                </tr>
                                <tr>
                                    <td>#ORD-2583</td>
                                    <td>Michael Brown</td>
                                    <td>Apr 12, 2025</td>
                                    <td>5</td>
                                    <td>$84.30</td>
                                    <td><span class="status cancelled">Cancelled</span></td>
                                    <td><a href="#" class="action-btn">Details</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="dashboard-row two-columns">
                <div class="dashboard-card top-items">
                    <div class="card-header">
                        <h3>Top Menu Items</h3>
                        <a href="#all-items" class="view-all">View All</a>
                    </div>
                    <ul class="item-list">
                        <li>
                            <div class="item-details">
                                <img src="/api/placeholder/50/50" alt="Food Item">
                                <div>
                                    <h4>Spaghetti Carbonara</h4>
                                    <p>Italian Cuisine</p>
                                </div>
                            </div>
                            <div class="item-stats">
                                <span class="sales">152 orders</span>
                                <span class="rating"><i class="fas fa-star"></i> 4.9</span>
                            </div>
                        </li>
                        <li>
                            <div class="item-details">
                                <img src="/api/placeholder/50/50" alt="Food Item">
                                <div>
                                    <h4>Chicken Alfredo</h4>
                                    <p>Italian Cuisine</p>
                                </div>
                            </div>
                            <div class="item-stats">
                                <span class="sales">132 orders</span>
                                <span class="rating"><i class="fas fa-star"></i> 4.8</span>
                            </div>
                        </li>
                        <li>
                            <div class="item-details">
                                <img src="/api/placeholder/50/50" alt="Food Item">
                                <div>
                                    <h4>Margherita Pizza</h4>
                                    <p>Italian Cuisine</p>
                                </div>
                            </div>
                            <div class="item-stats">
                                <span class="sales">119 orders</span>
                                <span class="rating"><i class="fas fa-star"></i> 4.7</span>
                            </div>
                        </li>
                        <li>
                            <div class="item-details">
                                <img src="/api/placeholder/50/50" alt="Food Item">
                                <div>
                                    <h4>Caesar Salad</h4>
                                    <p>Salads</p>
                                </div>
                            </div>
                            <div class="item-stats">
                                <span class="sales">98 orders</span>
                                <span class="rating"><i class="fas fa-star"></i> 4.5</span>
                            </div>
                        </li>
                    </ul>
                </div>
                
                <div class="dashboard-card recent-reviews">
                    <div class="card-header">
                        <h3>Recent Reviews</h3>
                        <a href="#all-reviews" class="view-all">View All</a>
                    </div>
                    <ul class="review-list">
                        <li>
                            <div class="review-header">
                                <div class="reviewer">
                                    <img src="/api/placeholder/40/40" alt="Reviewer">
                                    <div>
                                        <h4>Jessica Miller</h4>
                                        <span class="review-date">Apr 14, 2025</span>
                                    </div>
                                </div>
                                <div class="review-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                            <p class="review-text">"The food was amazing! Delivery was fast and everything was still hot when it arrived."</p>
                        </li>
                        <li>
                            <div class="review-header">
                                <div class="reviewer">
                                    <img src="/api/placeholder/40/40" alt="Reviewer">
                                    <div>
                                        <h4>David Thompson</h4>
                                        <span class="review-date">Apr 13, 2025</span>
                                    </div>
                                </div>
                                <div class="review-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                            <p class="review-text">"Great food but the delivery took a bit longer than expected."</p>
                        </li>
                        <li>
                            <div class="review-header">
                                <div class="reviewer">
                                    <img src="/api/placeholder/40/40" alt="Reviewer">
                                    <div>
                                        <h4>Amanda Clark</h4>
                                        <span class="review-date">Apr 12, 2025</span>
                                    </div>
                                </div>
                                <div class="review-rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </div>
                            </div>
                            <p class="review-text">"Excellent flavors, my family enjoyed every dish. Will definitely order again!"</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div id="footer-container"></div>

    <script>
        $(document).ready(function() {
            $("#header-container").load("header.html");
            $("#footer-container").load("footer.html");
        });
    </script>
</body>
</html>