<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- Include JSTL tag libraries --%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History - The Professor's Plate</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/orderhistory.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Include Header -->
    <jsp:include page="header.jsp" />

    <main class="order-container">
        <div class="order-header">
            <h2>Order History</h2>
        </div>
        
        <div class="order-nav">
            <div class="nav-item active" data-view="all">All Orders</div>
            <div class="nav-item" data-view="pending">Pending</div>
            <div class="nav-item" data-view="in-progress">In Progress</div>
            <div class="nav-item" data-view="completed">Completed</div>
            <div class="nav-item" data-view="cancelled">Cancelled</div>
        </div>
        
        <div class="filters-container">
            <div class="search-container">
                <input type="text" id="order-search" placeholder="Search by order number...">
                <button id="search-btn"><i class="fas fa-search"></i></button>
            </div>
        </div>
        
        <div class="order-table">
            <table>
                <thead>
                    <tr>
                        <th>Order Number</th>
                        <th>Order Type</th>
                        <th>Date and Time</th>
                        <th>Price</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody id="orders-table-body">
                    <!-- Sample static data for display -->
                    <tr class="order-row">
                        <td>#1</td>
                        <td>Delivery</td>
                        <td>April 2, 2025, 12:24 PM</td>
                        <td>Rs-200</td>
                        <td><span class="status completed">completed</span></td>
                    </tr>
                    <tr class="order-row">
                        <td>#2</td>
                        <td>Delivery</td>
                        <td>April 2, 2025, 2:30 PM</td>
                        <td>Rs-400</td>
                        <td><span class="status completed">completed</span></td>
                    </tr>
                    <tr class="order-row">
                        <td>#3</td>
                        <td>Delivery</td>
                        <td>April 2, 2025, 3:30 PM</td>
                        <td>Rs-1000</td>
                        <td><span class="status pending">pending</span></td>
                    </tr>
                    <tr class="order-row">
                        <td>#4</td>
                        <td>Delivery</td>
                        <td>April 2, 2025, 3:40 PM</td>
                        <td>Rs-350</td>
                        <td><span class="status cancelled">cancelled</span></td>
                    </tr>
                    <tr class="order-row">
                        <td>#5</td>
                        <td>Delivery</td>
                        <td>April 2, 2025, 4:00 PM</td>
                        <td>Rs-800</td>
                        <td><span class="status in-progress">in-progress</span></td>
                    </tr>
                </tbody>
            </table>
            <div id="no-orders-message" class="hidden">No orders matching your filters.</div>
        </div>
    </main>

    <!-- Order Detail Modal -->
    <div id="order-modal" class="modal">
        <div class="modal-content">
            <span class="close-modal">&times;</span>
            <h3>Order Details</h3>
            <div class="order-details-container">
                <div class="order-info">
                    <p><strong>Order Number:</strong> <span id="modal-order-number">#3</span></p>
                    <p><strong>Date:</strong> <span id="modal-date">April 2, 2025, 3:30 PM</span></p>
                    <p><strong>Status:</strong> <span id="modal-status">pending</span></p>
                    <p><strong>Order Type:</strong> <span id="modal-type">Delivery</span></p>
                    <p><strong>Delivery Address:</strong> <span id="modal-address">Islington College, Kamal Margha</span></p>
                    <p><strong>Payment Method:</strong> <span id="modal-payment">Online Payment</span></p>
                </div>
                <div class="order-items">
                    <h4>Items Ordered</h4>
                    <table class="items-table">
                        <thead>
                            <tr>
                                <th>Item</th>
                                <th>Quantity</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody id="modal-items">
                            <!-- Static sample data -->
                            <tr>
                                <td>Chicken Wings Combo</td>
                                <td>1</td>
                                <td>Rs-800</td>
                            </tr>
                            <tr>
                                <td>Cheese Bread</td>
                                <td>2</td>
                                <td>Rs-100</td>
                            </tr>
                            <tr>
                                <td>Brownie</td>
                                <td>2</td>
                                <td>Rs-120</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="order-summary">
                    <p><strong>Subtotal:</strong> <span id="modal-subtotal">Rs-1020</span></p>
                    <p><strong>Delivery Fee:</strong> <span id="modal-delivery-fee">Rs-50</span></p>
                    <p><strong>Total:</strong> <span id="modal-total">Rs-1070</span></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Footer -->
    <jsp:include page="footer.jsp" />
    
    <script>
        // JavaScript for order list functionality
        document.addEventListener('DOMContentLoaded', function() {
            // Handle nav item clicks
            const navItems = document.querySelectorAll('.nav-item');
            navItems.forEach(item => {
                item.addEventListener('click', function() {
                    // Remove active class from all items
                    navItems.forEach(nav => nav.classList.remove('active'));
                    // Add active class to clicked item
                    this.classList.add('active');
                    
                    // Filter orders based on selected status
                    const view = this.getAttribute('data-view');
                    filterOrders(view);
                });
            });
            
            // Handle search functionality
            const searchBtn = document.getElementById('search-btn');
            const searchInput = document.getElementById('order-search');
            
            searchBtn.addEventListener('click', function() {
                const searchTerm = searchInput.value.trim().toLowerCase();
                searchOrders(searchTerm);
            });
            
            searchInput.addEventListener('keyup', function(e) {
                if (e.key === 'Enter') {
                    const searchTerm = searchInput.value.trim().toLowerCase();
                    searchOrders(searchTerm);
                }
            });
            
            // Handle order row clicks to show modal
            const orderRows = document.querySelectorAll('.order-row');
            const modal = document.getElementById('order-modal');
            const closeModal = document.querySelector('.close-modal');
            
            orderRows.forEach(row => {
                row.addEventListener('click', function() {
                    // Set modal data based on clicked row
                    const orderNumber = this.querySelector('td:first-child').textContent;
                    document.getElementById('modal-order-number').textContent = orderNumber;
                    
                    // Get other data from row
                    const date = this.querySelector('td:nth-child(3)').textContent;
                    const status = this.querySelector('.status').textContent;
                    const type = this.querySelector('td:nth-child(2)').textContent;
                    
                    document.getElementById('modal-date').textContent = date;
                    document.getElementById('modal-status').textContent = status;
                    document.getElementById('modal-type').textContent = type;
                    
                    // Show modal
                    modal.classList.add('show');
                });
            });
            
            // Close modal when clicking X
            closeModal.addEventListener('click', function() {
                modal.classList.remove('show');
            });
            
            // Close modal when clicking outside
            window.addEventListener('click', function(e) {
                if (e.target === modal) {
                    modal.classList.remove('show');
                }
            });
            
            // Function to filter orders by status
            function filterOrders(status) {
                const rows = document.querySelectorAll('.order-row');
                const noOrdersMessage = document.getElementById('no-orders-message');
                let visibleCount = 0;
                
                rows.forEach(row => {
                    const rowStatus = row.querySelector('.status').textContent.toLowerCase();
                    
                    if (status === 'all' || rowStatus === status) {
                        row.classList.remove('hidden');
                        visibleCount++;
                    } else {
                        row.classList.add('hidden');
                    }
                });
                
                // Show message if no orders match filter
                if (visibleCount === 0) {
                    noOrdersMessage.classList.remove('hidden');
                } else {
                    noOrdersMessage.classList.add('hidden');
                }
            }
            
            // Function to search orders by order number
            function searchOrders(term) {
                const rows = document.querySelectorAll('.order-row');
                const noOrdersMessage = document.getElementById('no-orders-message');
                let visibleCount = 0;
                
                // Reset active nav
                navItems.forEach(nav => nav.classList.remove('active'));
                document.querySelector('[data-view="all"]').classList.add('active');
                
                rows.forEach(row => {
                    const orderNumber = row.querySelector('td:first-child').textContent.toLowerCase();
                    
                    if (term === '' || orderNumber.includes(term)) {
                        row.classList.remove('hidden');
                        visibleCount++;
                    } else {
                        row.classList.add('hidden');
                    }
                });
                
                // Show message if no orders match search
                if (visibleCount === 0) {
                    noOrdersMessage.classList.remove('hidden');
                } else {
                    noOrdersMessage.classList.add('hidden');
                }
            }
        });
    </script>
</body>
</html>