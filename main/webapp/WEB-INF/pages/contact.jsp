<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/contact.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<section class="hero">
        <div class="hero-logo">
            <img src="/api/placeholder/200/200" alt="The Professor's Plate Logo">
        </div>
        <div class="contact-heading">
            <h1>Contact us</h1>
        </div>
    </section>

    <section class="welcome">
        <p>Welcome to The Professor's Plate, where culinary education meets exquisite dining. Our team combines academic precision with culinary passion to create a unique dining experience in the heart of Nepal.</p>
        
        <div class="quote">
            " Fine dining delivered to your doorstep. Experience the authentic flavors of Nepal with our academically researched and expertly prepared cuisine."
        </div>
        
        <p>We value your feedback and inquiries! This contact page is your direct line to our team. Whether you're looking to make a special reservation, inquire about our catering services, share your dining experience, or have questions about our menu, we're here to assist you.
			Simply fill out the form with your name and message, and our team will get back to you within 24 hours. For more urgent matters, you can also reach us directly at the phone number listed below.
			As a restaurant that blends culinary education with fine dining, we welcome your questions about our ingredients, cooking techniques, or the cultural heritage behind our Nepali dishes. Our team of expert chefs and culinary historians are always eager to share their knowledge and passion.</p>
    </section>

    <section class="contact-section">
        <div class="contact-form">
            <h2>Send us a message</h2>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Your Name"> 
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="message" placeholder="Your Message"></textarea>
            </div>
            <button class="submit-btn">Send message</button>
        </div>
        
        <div class="gallery">
            <img src="../resources/images/system/img.webp">
            <img src="../resources/images/system/img1.jpeg">
            <img src="../resources/images/system/img2.jpeg">
            <h3>The Professor's Plate</h3>
            <h6 style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; width: 100%; text-align: center;">"Fine dining delivered to your doorstep"</h6>
            
        </div>
    </section>

    <section class="info-section">
        <h2>The Professor's Plate</h2>
        
        <div class="divider"></div>
        
        <p>Address, Nepal</p>
        <p>info@theprofessorsplate.com.np</p>
        <p>+977 - 98........, 01-50.....</p>
        

        <div class="divider"></div>
    </section>

	<jsp:include page="footer.jsp" />
</body>
</html>