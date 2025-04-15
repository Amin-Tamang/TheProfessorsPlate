<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professor's Registration</title>
    <link rel="stylesheet" href="../css/register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <div class="container">
        <div class="register-panel">
            <div class="logo-section">
                <img src="login.html" alt="The Professor's  Plate Logo" class="logo">
            </div>
            
            <div class="form-container">
                <h1>Create an account</h1>
                <p class="subtitle">Join The Professor's Plate to access unlimited foods</p>
                
                <form action="#" method="post">
                    <div class="input-group">
                        <div class="input-icon">
                            <i class="fas fa-user"></i>
                        </div>
                        <input type="text" id="fullname" name="fullname" placeholder="Full Name" required>
                    </div>
                    
                    <div class="input-group">
                        <div class="input-icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <input type="email" id="email" name="email" placeholder="Email" required>
                    </div>
                    
                    <div class="input-group">
                        <div class="input-icon">
                            <i class="fas fa-lock"></i>
                        </div>
                        <input type="password" id="password" name="password" placeholder="Password" required>
                        <div class="password-toggle">
                            <i class="fas fa-eye"></i>
                        </div>
                    </div>
                    
                    <div class="input-group">
                        <div class="input-icon">
                            <i class="fas fa-lock"></i>
                        </div>
                        <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm Password" required>
                        <div class="password-toggle confirm-toggle">
                            <i class="fas fa-eye"></i>
                        </div>
                    </div>
                    
                    <div class="terms-checkbox">
                        <input type="checkbox" id="terms" name="terms" required>
                        <label for="terms">I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a></label>
                    </div>
                    
                    <button type="submit" class="register-btn">Create Account</button>
                    
                    <div class="divider">
                        <span>Or register with</span>
                    </div>
                    
                    <div class="social-login">
                        <button type="button" class="social-btn google">
                            <i class="fab fa-google"></i>
                            <span>Google</span>
                        </button>
                        <button type="button" class="social-btn apple">
                            <i class="fab fa-apple"></i>
                            <span>Apple</span>
                        </button>
                    </div>
                    
                    <div class="login-prompt">
                        <p>Already have an account? <a href="login.html">Log in</a></p>
                    </div>
                </form>
            </div>
        </div>
        
        <div class="image-panel">
            <div class="overlay">
                <div class="text-content">
                    <h2>Join our creative community</h2>
                    <p>Get access to thousands of food menus and spices</p>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Script to toggle password visibility for both password fields
        document.addEventListener('DOMContentLoaded', function() {
            // For main password field 
            const toggleButton = document.querySelector('.password-toggle:not(.confirm-toggle)');
            const passwordInput = document.getElementById('password');

            toggleButton.addEventListener('click', function() {
                const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
                passwordInput.setAttribute('type', type);
                
                // Toggle eye icon
                const eyeIcon = toggleButton.querySelector('i');
                eyeIcon.classList.toggle('fa-eye');
                eyeIcon.classList.toggle('fa-eye-slash');
            });

            // For confirm password field
            const confirmToggleButton = document.querySelector('.confirm-toggle');
            const confirmPasswordInput = document.getElementById('confirm-password');

            confirmToggleButton.addEventListener('click', function() {
                const type = confirmPasswordInput.getAttribute('type') === 'password' ? 'text' : 'password';
                confirmPasswordInput.setAttribute('type', type);
                
                // Toggle eye icon
                const eyeIcon = confirmToggleButton.querySelector('i');
                eyeIcon.classList.toggle('fa-eye');
                eyeIcon.classList.toggle('fa-eye-slash');
            });
        });
    </script>
</body>
</html>