<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professor's Login</title>
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <div class="container">
        <div class="login-panel">
            <div class="logo-section">
                <img src="/api/placeholder/150/40" alt="The Professor's Plate Logo" class="logo">
            </div>
            
            <div class="form-container">
                <h1>Welcome back</h1>
                <p class="subtitle">Login to your account</p>
                
                <form action="#" method="post">
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
                    
                    <div class="options-row">
                        <div class="remember-me">
                            <input type="checkbox" id="remember" name="remember">
                            <label for="remember">Remember me</label>
                        </div>
                        <a href="#" class="forgot-password">Forgot password?</a>
                    </div>
                    
                    <button type="submit" class="login-btn">Login</button>
                    
                    <div class="divider">
                        <span>Or continue with</span>
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
                    
                    <div class="signup-prompt">
                        <p>Don't have an account? <a href="register.html">Sign up</a></p>
                    </div>
                </form>
            </div>
        </div>
        
        <div class="image-panel">
            <div class="overlay">
                <div class="text-content">
                    <h2>Discover unlimited foods</h2>
                    <p>Random Text</p>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Script to toggle password visibility
        document.addEventListener('DOMContentLoaded', function() {
            const toggleButton = document.querySelector('.password-toggle');
            const passwordInput = document.getElementById('password');

            toggleButton.addEventListener('click', function() {
                const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
                passwordInput.setAttribute('type', type);
                
                // Toggle eye icon
                const eyeIcon = toggleButton.querySelector('i');
                eyeIcon.classList.toggle('fa-eye');
                eyeIcon.classList.toggle('fa-eye-slash');
            });
        });
    </script>
</body>
</html>