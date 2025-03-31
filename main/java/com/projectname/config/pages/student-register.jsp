<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/student-register.css" />
</head>

<body>
    <div class="container">
        <h1>Registration Form</h1>
        <form id="registrationForm" onsubmit="return validateForm()">
            <div class="form-row">
                <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" name="firstName">
                    <div class="error" id="firstNameError">Please enter your first name</div>
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" name="lastName">
                    <div class="error" id="lastNameError">Please enter your last name</div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username">
                    <div class="error" id="usernameError">Please enter a valid username</div>
                </div>
                <div class="form-group">
                    <label for="birthday">Birthday:</label>
                    <input type="date" id="birthday" name="birthday">
                    <div class="error" id="birthdayError">Please select your date of birth</div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender">
                        <option value="">Select Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                    <div class="error" id="genderError">Please select your gender</div>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email">
                    <div class="error" id="emailError">Please enter a valid email</div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone">
                    <div class="error" id="phoneError">Please enter a valid phone number</div>
                </div>
                <div class="form-group">
                    <label for="subject">Subject:</label>
                    <select id="subject" name="subject">
                        <option value="">Select Subject</option>
                        <option value="Computing">Computing</option>
                        <option value="Mathematics">Mathematics</option>
                        <option value="Science">Science</option>
                        <option value="Arts">Arts</option>
                    </select>
                    <div class="error" id="subjectError">Please select a subject</div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password">
                    <div class="error" id="passwordError">Password must be at least 8 characters</div>
                </div>
                <div class="form-group">
                    <label for="retypePassword">Retype Password:</label>
                    <input type="password" id="retypePassword" name="retypePassword">
                    <div class="error" id="retypePasswordError">Passwords do not match</div>
                </div>
            </div>
            
            <button type="submit">Submit</button>
        </form>
    </div>

    <script>
        function validateForm() {
            // Reset all error messages
            const errors = document.querySelectorAll('.error');
            errors.forEach(error => {
                error.style.display = 'none';
            });
            
            let isValid = true;
            
            // First Name validation
            const firstName = document.getElementById('firstName').value.trim();
            if (firstName === '') {
                document.getElementById('firstNameError').style.display = 'block';
                isValid = false;
            }
            
            // Last Name validation
            const lastName = document.getElementById('lastName').value.trim();
            if (lastName === '') {
                document.getElementById('lastNameError').style.display = 'block';
                isValid = false;
            }
            
            // Username validation
            const username = document.getElementById('username').value.trim();
            if (username === '' || username.length < 5) {
                document.getElementById('usernameError').style.display = 'block';
                isValid = false;
            }
            
            // Birthday validation
            const birthday = document.getElementById('birthday').value;
            if (birthday === '') {
                document.getElementById('birthdayError').style.display = 'block';
                isValid = false;
            }
            
            // Gender validation
            const gender = document.getElementById('gender').value;
            if (gender === '') {
                document.getElementById('genderError').style.display = 'block';
                isValid = false;
            }
            
            // Email validation
            const email = document.getElementById('email').value.trim();
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (email === '' || !emailRegex.test(email)) {
                document.getElementById('emailError').style.display = 'block';
                isValid = false;
            }
            
            // Phone validation
            const phone = document.getElementById('phone').value.trim();
            const phoneRegex = /^\d{10,}$/;
            if (phone === '' || !phoneRegex.test(phone)) {
                document.getElementById('phoneError').style.display = 'block';
                isValid = false;
            }
            
            // Subject validation
            const subject = document.getElementById('subject').value;
            if (subject === '') {
                document.getElementById('subjectError').style.display = 'block';
                isValid = false;
            }
            
            // Password validation
            const password = document.getElementById('password').value;
            if (password === '' || password.length < 8) {
                document.getElementById('passwordError').style.display = 'block';
                isValid = false;
            }
            
            // Retype Password validation
            const retypePassword = document.getElementById('retypePassword').value;
            if (retypePassword !== password) {
                document.getElementById('retypePasswordError').style.display = 'block';
                isValid = false;
            }
            
            if (isValid) {
                alert("Registration successful!");
            }
            
            return isValid;
        }
    </script>
</body>
</html>