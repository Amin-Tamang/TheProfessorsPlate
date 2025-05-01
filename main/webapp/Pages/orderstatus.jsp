<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Status - The Professor's Plate</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/orderstatus.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <!-- Include Header -->
    <%@ include file="header.jsp" %>
    
    <main class="order-status-container">
        <!-- Order Search Section -->
        <div class="order-search">
            <h2>Track Your Order</h2>
            <div class="search-box">
                <input type="text" id="orderSearchInput" placeholder="Enter your order ID">
                <button id="trackOrderBtn">Track Order</button>
            </div>
        </div>

        <!-- Order History Section -->
        <div class="order-history">
            <h2>Your Recent Orders</h2>
            <div class="history-list" id="orderHistoryList">
            </div>
        </div>

        <div class="order-status-header">
            <div class="status-info">
                <h2>Order Status <span id="statusBadge" class="status">Loading...</span></h2>
                <p>Order ID: <span class="order-id" id="orderId">--</span></p>
            </div>
            <div class="progress-bar">
                <div class="progress" id="progressBar"></div>
            </div>
        </div>
        
        <div class="order-details-grid">
            <div class="order-times">
                <div class="time-box">
                    <h3>Order Time</h3>
                    <p id="orderDay">--</p>
                    <p id="orderDateTime">--</p>
                </div>
                <div class="time-box">
                    <h3>Estimated Time</h3>
                    <p id="estimatedDay">--</p>
                    <p id="estimatedDateTime">--</p>
                </div>
            </div>
            
            <div class="delivery-address">
                <h3>Delivery Address</h3>
                <p id="addressLine1">--</p>
                <p id="addressLine2">--</p>
            </div>
            
            <div class="delivery-progress">
                <h3>Delivery Progress</h3>
                <div class="progress-timeline">
                    <div class="timeline-line"></div>
                    <div class="timeline-steps" id="timelineSteps">
                    </div>
                </div>
            </div>
            
            <div class="payment-method">
                <h3>Payment Method</h3>
                <div class="payment-badge" id="paymentMethod">--</div>
            </div>
            
            <div class="delivery-notes">
                <h3>Delivery Notes</h3>
                <p id="deliveryNotes">--</p>
            </div>
            
            <div class="order-items">
                <h3>Order Items</h3>
                <div class="item-list" id="orderItems">
                </div>
            </div>
        </div>

        <!-- Modals -->
        <div id="cancelModal" class="modal">
            <div class="modal-content">
                <span class="close-modal">&times;</span>
                <h2>Cancel Order</h2>
                <p>Are you sure you want to cancel this order?</p>
                <div class="cancel-reason">
                    <label for="cancelReason">Please select a reason:</label>
                    <select id="cancelReason">
                        <option value="">-- Select a reason --</option>
                        <option value="changed_mind">Changed my mind</option>
                        <option value="long_wait">Too long delivery time</option>
                        <option value="order_mistake">Ordered by mistake</option>
                        <option value="other">Other reason</option>
                    </select>
                    <textarea id="cancelNote" placeholder="Additional comments (optional)"></textarea>
                </div>
                <div class="modal-actions">
                    <button id="confirmCancelBtn" class="btn-cancel">Confirm Cancellation</button>
                    <button id="closeModalBtn" class="btn-regular">Go Back</button>
                </div>
            </div>
        </div>

        <div id="supportModal" class="modal">
            <div class="modal-content">
                <span class="close-modal">&times;</span>
                <h2>Contact Support</h2>
                <p>How can we help you with your order?</p>
                <div class="support-form">
                    <label for="supportIssue">Issue type:</label>
                    <select id="supportIssue">
                        <option value="">-- Select issue type --</option>
                        <option value="delivery">Delivery problem</option>
                        <option value="food">Food quality issue</option>
                        <option value="missing">Missing items</option>
                        <option value="payment">Payment problem</option>
                        <option value="other">Other</option>
                    </select>
                    <textarea id="supportMessage" placeholder="Please describe your issue..."></textarea>
                </div>
                <div class="contact-options">
                    <p><i class="fas fa-phone"></i> Call us: <a href="tel:1234567890">123-456-7890</a></p>
                    <p><i class="fas fa-envelope"></i> Email: <a href="mailto:support@professorsplate.com">support@professorsplate.com</a></p>
                </div>
                <div class="modal-actions">
                    <button id="submitSupportBtn" class="btn-contact">Submit</button>
                    <button id="closeSupportModalBtn" class="btn-regular">Close</button>
                </div>
            </div>
        </div>
    </main>
    
    <!-- Toast Notification -->
    <div id="toastNotification" class="toast-notification">
        <div class="toast-icon"><i class="fas fa-check-circle"></i></div>
        <div class="toast-message">Order status updated!</div>
    </div>
    
    <!-- Include Footer -->
    <%@ include file="footer.jsp" %>

    <!-- Separated JavaScript to ensure it loads properly -->
    <script type="text/javascript">
        // Simplified mock order data structure
        var mockOrders = {
            "3": {
                id: "3",
                status: "rejected",
                statusText: "Order Rejected/Canceled",
                orderDate: "2021-03-01T00:51:00",
                estimatedDeliveryDate: "2021-03-01T01:51:00",
                address: {
                    line1: "Street-31, Tinkune,Kathmandu"
                },
                paymentMethod: "COD",
                deliveryNotes: "Deliver on time.",
                items: [
                    { name: "Non-Vegetarian Combo", quantity: 3 },
                    { name: "Chill Chicken", quantity: 1 }
                ],
                timeline: [
                    { status: "Order Placed", time: "2021-03-01T00:51:00", isCompleted: true },
                    { status: "Order Accepted", time: "2021-03-01T00:54:00", isCompleted: true },
                    { status: "Order Rejected", time: "2021-03-01T00:56:00", isCompleted: true, isRejected: true }
                ]
            },
            "4": {
                id: "4",
                status: "delivered",
                statusText: "Order Delivered",
                orderDate: "2025-04-24T10:30:00",
                estimatedDeliveryDate: "2025-04-24T11:15:00",
                address: {
                    line1: "Baneshwor Multiple Campus,Baneshwor"
                },
                paymentMethod: "Credit Card",
                deliveryNotes: "Leave at door, please knock.",
                items: [
                    { name: "Veg Pizza", quantity: 1 },
                    { name: "Green Salad", quantity: 2 }
                ],
                timeline: [
                    { status: "Order Placed", time: "2025-04-24T10:30:00", isCompleted: true },
                    { status: "Order Accepted", time: "2025-04-24T10:32:00", isCompleted: true },
                    { status: "Order Preparing", time: "2025-04-24T10:40:00", isCompleted: true },
                    { status: "Order Ready", time: "2025-04-24T10:55:00", isCompleted: true },
                    { status: "Out for Delivery", time: "2025-04-24T11:00:00", isCompleted: true },
                    { status: "Order Delivered", time: "2025-04-24T11:15:00", isCompleted: true }
                ]
            },
            "5": {
                id: "5",
                status: "preparing",
                statusText: "Order Preparing",
                orderDate: "2025-04-24T11:45:00",
                estimatedDeliveryDate: "2025-04-24T12:30:00",
                address: {
                    line1: "Star Mall, Putali Sadak"
                },
                paymentMethod: "Online Payment",
                deliveryNotes: "Call when arrived.",
                items: [
                    { name: "Chicken Biryani", quantity: 2 },
                    { name: "Garlic Naan", quantity: 4 }
                ],
                timeline: [
                    { status: "Order Placed", time: "2025-04-24T11:45:00", isCompleted: true },
                    { status: "Order Accepted", time: "2025-04-24T11:50:00", isCompleted: true },
                    { status: "Order Preparing", time: "2025-04-24T12:00:00", isCompleted: true, isCurrent: true },
                    { status: "Order Ready", time: null, isCompleted: false },
                    { status: "Out for Delivery", time: null, isCompleted: false },
                    { status: "Order Delivered", time: null, isCompleted: false }
                ]
            }
        };

        // UI helper functions
        function getElementByID(id) {
            return document.getElementById(id);
        }

        function formatDate(dateString) {
            var date = new Date(dateString);
            var day = date.toLocaleDateString('en-US', { weekday: 'long' });
            var monthNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
            var month = monthNames[date.getMonth()];
            var dayOfMonth = date.getDate();
            var hours = date.getHours() % 12 || 12;
            var ampm = date.getHours() >= 12 ? 'PM' : 'AM';
            var minutes = date.getMinutes().toString().padStart(2, '0');
            
            return {
                day: day,
                datetime: month + " " + dayOfMonth + " at " + hours + ":" + minutes + " " + ampm
            };
        }

        function showToast(message, icon) {
            if(!icon) icon = 'fa-check-circle';
            
            var toast = getElementByID('toastNotification');
            toast.querySelector('.toast-icon i').className = "fas " + icon;
            toast.querySelector('.toast-message').textContent = message;
            toast.classList.add('show');
            setTimeout(function() {
                toast.classList.remove('show');
            }, 3000);
        }

        // Modal handling
        function toggleModal(modal, show) {
            modal.style.display = show ? 'block' : 'none';
            document.body.style.overflow = show ? 'hidden' : 'auto';
        }

        // Order rendering functions
        function renderTimeline(timeline) {
            var container = getElementByID('timelineSteps');
            container.innerHTML = '';
            
            for(var i = 0; i < timeline.length; i++) {
                var step = timeline[i];
                var stepEl = document.createElement('div');
                
                // Determine step state
                var stepClass = 'pending';
                var icon = 'fa-clock';
                
                if (step.isCompleted) {
                    if (step.isRejected || step.isCanceled) {
                        stepClass = 'rejected';
                        icon = 'fa-times';
                    } else if (step.isCurrent) {
                        stepClass = 'current';
                        icon = 'fa-spinner fa-spin';
                    } else {
                        stepClass = 'completed';
                        icon = 'fa-check';
                    }
                }
                
                var timeFormatted = step.time ? formatDate(step.time).datetime : 'Pending';
                
                stepEl.className = "step " + stepClass;
                stepEl.innerHTML = 
                    '<div class="step-icon"><i class="fas ' + icon + '"></i></div>' +
                    '<div class="step-content">' +
                        '<h4>' + step.status + '</h4>' +
                        '<p>' + (step.time ? timeFormatted : 'Pending') + '</p>' +
                    '</div>';
                
                container.appendChild(stepEl);
            }
        }

        function renderOrderItems(items) {
            var container = getElementByID('orderItems');
            container.innerHTML = '';
            
            for(var i = 0; i < items.length; i++) {
                var item = items[i];
                var itemEl = document.createElement('div');
                itemEl.className = 'item';
                
                var itemTypeIcon = getItemIcon(item.name);
                
                itemEl.innerHTML = 
                    '<div class="item-icon">' +
                        '<i class="' + itemTypeIcon + '"></i>' +
                    '</div>' +
                    '<div class="item-details">' +
                        '<h4>' + item.name + '</h4>' +
                        '<p>' + item.quantity + ' Qty</p>' +
                    '</div>';
                
                container.appendChild(itemEl);
            }
        }

        function getItemIcon(itemName) {
            var nameLower = itemName.toLowerCase();
            
            if (nameLower.indexOf('pizza') !== -1) return 'fas fa-pizza-slice';
            if (nameLower.indexOf('burger') !== -1) return 'fas fa-hamburger';
            if (nameLower.indexOf('salad') !== -1) return 'fas fa-leaf';
            if (nameLower.indexOf('cake') !== -1) return 'fas fa-birthday-cake';
            if (nameLower.indexOf('combo') !== -1 || nameLower.indexOf('meal') !== -1) return 'fas fa-utensils';
            if (nameLower.indexOf('biryani') !== -1 || nameLower.indexOf('rice') !== -1) return 'fas fa-utensils';
            if (nameLower.indexOf('naan') !== -1 || nameLower.indexOf('bread') !== -1) return 'fas fa-bread-slice';
            
            return 'fas fa-utensils';
        }

        function displayOrderDetails(order) {
            // Update order ID and status
            getElementByID('orderId').textContent = order.id;
            getElementByID('statusBadge').textContent = order.statusText;
            getElementByID('statusBadge').className = "status " + order.status;
            getElementByID('progressBar').className = "progress " + order.status;
            
            // Update order times
            var orderDateFmt = formatDate(order.orderDate);
            getElementByID('orderDay').textContent = orderDateFmt.day;
            getElementByID('orderDateTime').textContent = orderDateFmt.datetime;
            
            var estimatedDateFmt = formatDate(order.estimatedDeliveryDate);
            getElementByID('estimatedDay').textContent = estimatedDateFmt.day;
            getElementByID('estimatedDateTime').textContent = estimatedDateFmt.datetime;
            
            // Update address and payment
            getElementByID('addressLine1').textContent = order.address.line1;
            getElementByID('addressLine2').textContent = order.address.line2 || '';
            getElementByID('paymentMethod').textContent = order.paymentMethod;
            getElementByID('deliveryNotes').textContent = order.deliveryNotes;
            
            // Render timeline and items
            renderTimeline(order.timeline);
            renderOrderItems(order.items);
        }

        function loadOrderHistory() {
            var container = getElementByID('orderHistoryList');
            container.innerHTML = '';
            
            for(var orderId in mockOrders) {
                if(mockOrders.hasOwnProperty(orderId)) {
                    var order = mockOrders[orderId];
                    var item = document.createElement('div');
                    item.className = 'history-item';
                    item.dataset.orderId = order.id;
                    
                    var date = new Date(order.orderDate);
                    var formattedDate = date.toLocaleDateString() + ' at ' + 
                        date.toLocaleTimeString([], {hour: '2-digit', minute:'2-digit'});
                    
                    item.innerHTML = 
                        '<h3>Order #' + order.id + '</h3>' +
                        '<p>' + formattedDate + '</p>' +
                        '<span class="history-status ' + order.status + '">' + order.statusText + '</span>';
                    
                    item.addEventListener('click', function(orderId) {
                        return function() {
                            displayOrderDetails(mockOrders[orderId]);
                            document.querySelector('.order-status-header').scrollIntoView({ behavior: 'smooth' });
                            showToast('Order details loaded', 'fa-info-circle');
                        };
                    }(order.id));
                    
                    container.appendChild(item);
                }
            }
        }

        function searchOrder() {
            var orderId = getElementByID('orderSearchInput').value.trim();
            
            if (!orderId) {
                showToast('Please enter an order ID', 'fa-exclamation-circle');
                return;
            }
            
            var order = mockOrders[orderId];
            
            if (order) {
                displayOrderDetails(order);
                showToast('Order found!', 'fa-check-circle');
                document.querySelector('.order-status-header').scrollIntoView({ behavior: 'smooth' });
            } else {
                showToast('Order not found. Please check the ID and try again.', 'fa-exclamation-circle');
            }
        }

        function submitSupportRequest() {
            var issue = getElementByID('supportIssue').value;
            var message = getElementByID('supportMessage').value;
            
            if (!issue) {
                showToast('Please select an issue type', 'fa-exclamation-circle');
                return;
            }
            
            if (!message) {
                showToast('Please describe your issue', 'fa-exclamation-circle');
                return;
            }
            
            toggleModal(getElementByID('supportModal'), false);
            showToast('Support request submitted! We\'ll get back to you soon.', 'fa-check-circle');
            
            // Reset form
            getElementByID('supportIssue').value = '';
            getElementByID('supportMessage').value = '';
        }

        // Setup event listeners after the DOM is fully loaded
        function setupEventListeners() {
            // Track order button
            var trackOrderBtn = getElementByID('trackOrderBtn');
            if(trackOrderBtn) {
                trackOrderBtn.addEventListener('click', searchOrder);
            }
            
            // Order search input
            var orderSearchInput = getElementByID('orderSearchInput');
            if(orderSearchInput) {
                orderSearchInput.addEventListener('keypress', function(e) {
                    if (e.key === 'Enter') searchOrder();
                });
            }
            
            // Support modal controls
            var submitSupportBtn = getElementByID('submitSupportBtn');
            if(submitSupportBtn) {
                submitSupportBtn.addEventListener('click', submitSupportRequest);
            }
            
            // Cancel modal controls
            var confirmCancelBtn = getElementByID('confirmCancelBtn');
            if(confirmCancelBtn) {
                confirmCancelBtn.addEventListener('click', function() {
                    var reason = getElementByID('cancelReason').value;
                    if (!reason) {
                        showToast('Please select a cancellation reason', 'fa-exclamation-circle');
                        return;
                    }
                    toggleModal(getElementByID('cancelModal'), false);
                    showToast('Order cancellation requested', 'fa-check-circle');
                });
            }
            
            // Close modal buttons
            var closeButtons = document.querySelectorAll('.close-modal, #closeModalBtn, #closeSupportModalBtn');
            for(var i = 0; i < closeButtons.length; i++) {
                closeButtons[i].addEventListener('click', function(e) {
                    var modal = e.currentTarget.closest('.modal');
                    toggleModal(modal, false);
                });
            }
            
            // Close modal on outside click
            window.addEventListener('click', function(e) {
                var supportModal = getElementByID('supportModal');
                var cancelModal = getElementByID('cancelModal');
                
                if (e.target === supportModal) toggleModal(supportModal, false);
                if (e.target === cancelModal) toggleModal(cancelModal, false);
            });
        }

        // Initialize application
        function initApp() {
            console.log("Order Status App initializing...");
            try {
                // Initialize order display with default order
                if(mockOrders["3"]) {
                    displayOrderDetails(mockOrders["3"]);
                    console.log("Displayed initial order details");
                } else {
                    console.error("Initial order data not found");
                }
                
                // Load order history
                loadOrderHistory();
                console.log("Loaded order history");
                
                // Setup event listeners
                setupEventListeners();
                console.log("Set up event listeners");
                
                // Simulate real-time updates for demo purposes
                if (mockOrders["5"] && mockOrders["5"].status === "preparing") {
                    setTimeout(function() {
                        var order = mockOrders["5"];
                        
                        // Update to "Ready" status
                        order.status = "ready";
                        order.statusText = "Order Ready";
                        
                        // Update timeline
                        order.timeline[3].isCompleted = true;
                        order.timeline[3].time = new Date().toISOString();
                        order.timeline[3].isCurrent = true;
                        order.timeline[2].isCurrent = false;
                        
                        // Update UI if viewing this order
                        if (getElementByID('orderId').textContent === "5") {
                            displayOrderDetails(order);
                            showToast('Your order is ready!', 'fa-bell');
                        }
                        
                        // Update history item
                        var historyItem = document.querySelector('.history-item[data-order-id="5"] .history-status');
                        if (historyItem) {
                            historyItem.textContent = order.statusText;
                            historyItem.className = "history-status " + order.status;
                        }
                    }, 15000); // 15 seconds
                    console.log("Set up order status simulation");
                }
                
                console.log("Order Status App initialization complete!");
            } catch(e) {
                console.error("Error initializing app:", e);
                alert("There was an error initializing the Order Status page. Please try refreshing the page.");
            }
        }

        // Ensure the DOM is fully loaded before running the script
        if (document.readyState === "loading") {
            document.addEventListener("DOMContentLoaded", initApp);
            console.log("Set to initialize on DOMContentLoaded");
        } else {
            // DOM already loaded, run script immediately
            console.log("DOM already loaded, initializing now");
            initApp();
        }
    </script>
</body>
</html>