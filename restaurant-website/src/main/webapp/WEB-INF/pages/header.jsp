<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
	<header>
		<div class="header-container">
			<div class="logo">
				<h1>The Professor's Plate</h1>
			</div>
			<nav>
				<ul>
					<li><a href="home">Home</a></li>
					<li><a href="team">Team</a></li>
					<li><a href="contact">Contact</a></li>
					<li><a href="menu">Menu</a></li>
					<li><a href="review">Review</a></li>
					
					
					<!-- TODO -- This code below is for session, so comment this section while using -->
					<%
					HttpSession userSession = request.getSession(false);
					String email = (String) (userSession != null ? userSession.getAttribute("email") : null);

					if (email == null) {
					%>
					<li><a href="login" class="highlight">Login</a></li>
					<%
					} else {
					%>

					<li><%=email%><a
						href="${pageContext.request.contextPath}/logout" style="margin-left: 8px;">Logout</a></li>
					<%
					}
					%>
					<!-- UP to this -->
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>