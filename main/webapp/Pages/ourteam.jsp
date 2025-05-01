<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Team - The Professor's Plate</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ourteam.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Include Header -->
    <jsp:include page="header.jsp" />

    <!-- Team Banner -->
    <section class="team-banner">
        <h1>Our Team</h1>
    </section>

    <!-- Team Grid Section -->
    <section class="team-container">
        <div class="team-grid">
            <!-- Team Member 1 -->
            <div class="team-member">
                <div class="member-photo">
                    <img src="${pageContext.request.contextPath}/resources/images/image.jpg" alt="Bivek Dahal">
                </div>
                <h3 class="member-name">Bivek Dahal</h3>
                <h4 class="member-task-title">Contribution:</h4>
                <p class="member-task">Frontend Development</p>
                <div class="member-contact">
                    <p>Email: <a href="mailto:bivek123dahal@gmail.com">bivek123dahal@gmail.com</a></p>
                </div>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>

            <!-- Team Member 2 -->
            <div class="team-member">
                <div class="member-photo">
                    <img src="${pageContext.request.contextPath}/resources/images/image.jpg" alt="Amin Tamang">
                </div>
                <h3 class="member-name">Amin Tamang</h3>
                <h4 class="member-task-title">Contribution:</h4>
                <p class="member-task">Backend Development</p>
                <div class="member-contact">
                    <p>Email: <a href="mailto:amin1000369@gmail.com">amin1000369@gmail.com</a></p>
                </div>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>

            <!-- Team Member 3 -->
            <div class="team-member">
                <div class="member-photo">
                    <img src="${pageContext.request.contextPath}/resources/images/image.jpg" alt="Nigel Awale">
                </div>
                <h3 class="member-name">Nigel Awale</h3>
                <h4 class="member-task-title">Contribution:</h4>
                <p class="member-task">UI/UX Design</p>
                <div class="member-contact">
                    <p>Email: <a href="mailto:nigelawale123@gmail.com">nigelawale123@gmail.com</a></p>
                </div>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>

            <!-- Team Member 4 -->
            <div class="team-member">
                <div class="member-photo">
                    <img src="${pageContext.request.contextPath}/resources/images/image.jpg" alt="Ryan Khan">
                </div>
                <h3 class="member-name">Ryan Khan</h3>
                <h4 class="member-task-title">Contribution:</h4>
                <p class="member-task">Database Architecture</p>
                <div class="member-contact">
                    <p>Email: <a href="mailto:ryankhan77000@gmail.com">ryankhan77000@gmail.com</a></p>
                </div>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>

            <!-- Team Member 5 -->
            <div class="team-member">
                <div class="member-photo">
                    <img src="${pageContext.request.contextPath}/resources/images/image.jpg" alt="Sanjog Shrestha">
                </div>
                <h3 class="member-name">Sanjog Shrestha</h3>
                <h4 class="member-task-title">Contribution:</h4>
                <p class="member-task">Quality Assurance</p>
                <div class="member-contact">
                    <p>Email: <a href="mailto:sanjoksth9900@gmail.com">sanjoksth9900@gmail.com</a></p>
                </div>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Include Footer -->
    <jsp:include page="footer.jsp" />
</body>
</html>