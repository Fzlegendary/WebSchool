<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="mobA.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Sign In</title>
    <style>
        .login-container {
            background: linear-gradient(135deg, #FFB6C1 0%, #FFC0CB 50%, #FFB6C1 100%);
            border: none;
            border-radius: 15px;
            width: 100%;
            max-width: 450px;
            margin: 40px auto;
            padding: 40px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            backdrop-filter: blur(10px);
            position: relative;
        }

        .login-title {
            text-align: center;
            color: #2c3e50;
            font-size: 2.2rem;
            margin-bottom: 35px;
            text-decoration: underline;
            text-underline-position: under;
            font-weight: 700;
        }

        .login-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 20px;
        }

        .login-table td {
            padding: 0;
            vertical-align: top;
        }

        .login-table label {
            color: #2c3e50;
            font-weight: 600;
            font-size: 15px;
            display: block;
            margin-bottom: 10px;
            text-transform: uppercase;
            letter-spacing: 0.8px;
        }

        .login-table input[type="email"],
        .login-table input[type="password"] {
            width: 100%;
            padding: 15px 18px;
            border: 2px solid rgba(255, 255, 255, 0.3);
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(5px);
            font-size: 16px;
            transition: all 0.3s ease;
            color: #2c3e50;
            font-weight: 500;
            box-sizing: border-box;
        }

        .login-table input[type="email"]:focus,
        .login-table input[type="password"]:focus {
            outline: none;
            border-color: #3498db;
            background: rgba(255, 255, 255, 0.4);
            box-shadow: 0 0 20px rgba(52, 152, 219, 0.4);
            transform: translateY(-2px);
        }

        .login-table input[type="email"]::placeholder,
        .login-table input[type="password"]::placeholder {
            color: rgba(44, 62, 80, 0.6);
            font-style: italic;
        }

        .error-message {
            color: #e74c3c;
            font-size: 13px;
            font-weight: bold;
            background: rgba(231, 76, 60, 0.15);
            padding: 10px 15px;
            border-radius: 8px;
            margin-top: 10px;
            display: none;
            border-left: 4px solid #e74c3c;
            animation: shake 0.3s ease-in-out;
        }

        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
        }

        .submit-btn {
            background: linear-gradient(135deg, #3498db, #2980b9);
            color: white;
            padding: 16px 50px;
            border: none;
            border-radius: 10px;
            font-size: 17px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s ease;
            margin: 30px auto 20px;
            display: block;
            text-transform: uppercase;
            letter-spacing: 1.2px;
            box-shadow: 0 6px 20px rgba(52, 152, 219, 0.3);
            position: relative;
            overflow: hidden;
        }

        .submit-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: left 0.5s;
        }

        .submit-btn:hover::before {
            left: 100%;
        }

        .submit-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(52, 152, 219, 0.5);
            background: linear-gradient(135deg, #2980b9, #3498db);
        }

        .submit-btn:active {
            transform: translateY(-1px);
        }

        .register-link {
            text-align: center;
            margin-top: 25px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .register-link-text {
            color: #2c3e50;
            font-size: 14px;
            margin-bottom: 10px;
            font-weight: 500;
        }

        .register-link a {
            color: #2c3e50;
            text-decoration: none;
            font-weight: 700;
            font-size: 15px;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: all 0.3s ease;
            padding: 10px 20px;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.2);
            display: inline-block;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }

        .register-link a:hover {
            color: #3498db;
            background: rgba(255, 255, 255, 0.3);
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);
        }

        /* Welcome Message Styling */
        .welcome-section {
            text-align: center;
            margin-bottom: 25px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .welcome-text {
            color: #2c3e50;
            font-size: 16px;
            font-weight: 500;
            line-height: 1.5;
        }

        /* Input Icons */
        .input-group {
            position: relative;
        }

        .input-group::before {
            content: '';
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            width: 20px;
            height: 20px;
            background-size: contain;
            background-repeat: no-repeat;
            opacity: 0.6;
            z-index: 1;
            pointer-events: none;
        }

        .email-group::before {
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%232c3e50' viewBox='0 0 24 24'%3E%3Cpath d='M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z'/%3E%3C/svg%3E");
        }

        .password-group::before {
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%232c3e50' viewBox='0 0 24 24'%3E%3Cpath d='M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z'/%3E%3C/svg%3E");
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .login-container {
                margin: 20px 10px;
                padding: 30px 25px;
                max-width: none;
            }
            
            .login-title {
                font-size: 1.8rem;
            }

            .login-table input[type="email"],
            .login-table input[type="password"] {
                font-size: 16px; /* Prevents zoom on iOS */
                padding: 12px 15px;
            }

            .submit-btn {
                padding: 14px 40px;
                font-size: 16px;
            }
        }

        @media (max-width: 480px) {
            .login-container {
                padding: 25px 20px;
            }

            .login-title {
                font-size: 1.6rem;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <h1 class="login-title">Welcome Back</h1>
        <div class="welcome-section">
            <p class="welcome-text">Sign in to your account to continue your journey</p>
        </div>

        <form name="loginFrm" id="loginFrm" method="post" runat="server" onsubmit="return checkForm();" style="direction:ltr">
            <table class="login-table">
                <tr>
                    <td>
                        <label for="email">Email Address:</label>
                        <div class="input-group email-group">
                            <input type="email" name="email" id="email" placeholder="Enter your email address" />
                        </div>
                        <span class="error-message" id="memail"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="password">Password:</label>
                        <div class="input-group password-group">
                            <input type="password" name="password" id="password" placeholder="Enter your password" />
                        </div>
                        <span class="error-message" id="mpass"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="submit" value="Sign In" class="submit-btn" /> 
                    </td>
                </tr>
            </table>
            
            <div class="register-link">
                <div class="register-link-text">Don't have an account yet?</div>
                <a href="/r.aspx">Create Account</a>
            </div>
        </form>
    </div>

    <script>
        function checkForm() {
            // Clear all previous error messages
            document.getElementById("memail").style.display = "none";
            document.getElementById("mpass").style.display = "none";

            let hasErrors = false;

            // Check email
            const email = document.getElementById("email").value.trim();
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (!email) {
                document.getElementById("memail").textContent = "Email address is required";
                document.getElementById("memail").style.display = "block";
                hasErrors = true;
            } else if (!emailPattern.test(email)) {
                document.getElementById("memail").textContent = "Please enter a valid email address";
                document.getElementById("memail").style.display = "block";
                hasErrors = true;
            }

            // Check password
            const password = document.getElementById("password").value;
            if (!password) {
                document.getElementById("mpass").textContent = "Password is required";
                document.getElementById("mpass").style.display = "block";
                hasErrors = true;
            } else if (password.length < 6) {
                document.getElementById("mpass").textContent = "Password must be at least 6 characters";
                document.getElementById("mpass").style.display = "block";
                hasErrors = true;
            }

            // Add shake animation to error messages
            if (hasErrors) {
                const errorMessages = document.querySelectorAll('.error-message[style*="block"]');
                errorMessages.forEach(msg => {
                    msg.style.animation = 'none';
                    msg.offsetHeight; // Trigger reflow
                    msg.style.animation = 'shake 0.3s ease-in-out';
                });
            }

            // Return false if there are errors (prevents form submission)
            return !hasErrors;
        }

        // Add some interactive feedback
        document.addEventListener('DOMContentLoaded', function () {
            const inputs = document.querySelectorAll('input[type="email"], input[type="password"]');

            inputs.forEach(input => {
                input.addEventListener('focus', function () {
                    this.parentElement.style.transform = 'scale(1.02)';
                });

                input.addEventListener('blur', function () {
                    this.parentElement.style.transform = 'scale(1)';
                });
            });
        });
    </script>
</asp:Content>