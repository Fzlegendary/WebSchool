<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="r.aspx.cs" Inherits="mobA.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Register</title>
 <style>
     .register-container {
         background: linear-gradient(135deg, #FFB6C1 0%, #FFC0CB 50%, #FFB6C1 100%);
         border: none;
         border-radius: 15px;
         width: 100%;
         max-width: 600px;
         margin: 20px auto;
         padding: 30px;
         box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
         backdrop-filter: blur(10px);
         position: relative;
     }

     .register-title {
         text-align: center;
         color: #2c3e50;
         font-size: 2rem;
         margin-bottom: 30px;
         text-decoration: underline;
         text-underline-position: under;
     }

     .register-table {
         width: 100%;
         border-collapse: separate;
         border-spacing: 0 15px;
     }

     .register-table td {
         padding: 0;
         vertical-align: top;
     }

     .register-table label {
         color: #2c3e50;
         font-weight: 600;
         font-size: 14px;
         display: block;
         margin-bottom: 8px;
         text-transform: uppercase;
         letter-spacing: 0.5px;
     }

     .register-table input[type="text"],
     .register-table input[type="email"],
     .register-table input[type="password"],
     .register-table select {
         width: 100%;
         padding: 12px 15px;
         border: 2px solid rgba(255, 255, 255, 0.3);
         border-radius: 8px;
         background: rgba(255, 255, 255, 0.2);
         backdrop-filter: blur(5px);
         font-size: 14px;
         transition: all 0.3s ease;
         color: #2c3e50;
         font-weight: 500;
     }

     .register-table input[type="text"]:focus,
     .register-table input[type="email"]:focus,
     .register-table input[type="password"]:focus,
     .register-table select:focus {
         outline: none;
         border-color: #3498db;
         background: rgba(255, 255, 255, 0.4);
         box-shadow: 0 0 15px rgba(52, 152, 219, 0.3);
         transform: translateY(-1px);
     }

     /* Gender Radio Button Styling */
     .gender-group {
         margin: 15px 0;
         padding: 15px;
         background: rgba(255, 255, 255, 0.15);
         border-radius: 8px;
         border: 2px solid rgba(255, 255, 255, 0.3);
     }

     .gender-group label.gender-title {
         margin-bottom: 12px;
         color: #2c3e50;
         font-weight: 600;
         font-size: 14px;
         text-transform: uppercase;
         letter-spacing: 0.5px;
     }

     .radio-container {
         display: flex;
         gap: 20px;
         align-items: center;
     }

     .radio-option {
         display: flex;
         align-items: center;
         gap: 8px;
         cursor: pointer;
         padding: 8px 12px;
         background: rgba(255, 255, 255, 0.1);
         border-radius: 6px;
         transition: all 0.3s ease;
     }

     .radio-option:hover {
         background: rgba(255, 255, 255, 0.25);
         transform: translateY(-1px);
     }

     .radio-option input[type="radio"] {
         width: 18px;
         height: 18px;
         cursor: pointer;
         accent-color: #3498db;
     }

     .radio-option span {
         color: #2c3e50;
         font-weight: 500;
         font-size: 14px;
         cursor: pointer;
     }

     /* Hobbies Styling */
     .hobbies-group {
         padding: 15px;
         background: rgba(255, 255, 255, 0.15);
         border-radius: 8px;
         border: 2px solid rgba(255, 255, 255, 0.3);
     }

     .hobbies-container {
         display: grid;
         grid-template-columns: repeat(2, 1fr);
         gap: 12px;
         margin-top: 10px;
     }

     .checkbox-option {
         display: flex;
         align-items: center;
         gap: 8px;
         cursor: pointer;
         padding: 8px 12px;
         background: rgba(255, 255, 255, 0.1);
         border-radius: 6px;
         transition: all 0.3s ease;
     }

     .checkbox-option:hover {
         background: rgba(255, 255, 255, 0.25);
         transform: translateY(-1px);
     }

     .checkbox-option input[type="checkbox"] {
         width: 18px;
         height: 18px;
         cursor: pointer;
         accent-color: #3498db;
     }

     .checkbox-option span {
         color: #2c3e50;
         font-weight: 500;
         font-size: 14px;
         cursor: pointer;
     }

     /* Age Select Styling */
     .register-table select {
         cursor: pointer;
         appearance: none;
         background-image: url("data:image/svg+xml;charset=utf-8,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='m6 8 4 4 4-4'/%3e%3c/svg%3e");
         background-position: right 12px center;
         background-repeat: no-repeat;
         background-size: 16px;
         padding-right: 40px;
     }

     .error-message {
         color: #e74c3c;
         font-size: 12px;
         font-weight: bold;
         background: rgba(231, 76, 60, 0.15);
         padding: 8px 12px;
         border-radius: 6px;
         margin-top: 8px;
         display: none;
         border-left: 4px solid #e74c3c;
     }

     .submit-btn {
         background: linear-gradient(135deg, #3498db, #2980b9);
         color: white;
         padding: 15px 40px;
         border: none;
         border-radius: 8px;
         font-size: 16px;
         font-weight: 600;
         cursor: pointer;
         transition: all 0.3s ease;
         margin: 25px auto 15px;
         display: block;
         text-transform: uppercase;
         letter-spacing: 1px;
         box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);
     }

     .submit-btn:hover {
         transform: translateY(-3px);
         box-shadow: 0 8px 25px rgba(52, 152, 219, 0.4);
         background: linear-gradient(135deg, #2980b9, #3498db);
     }

     .submit-btn:active {
         transform: translateY(-1px);
     }

     .login-link {
         text-align: center;
         margin-top: 20px;
         padding: 15px;
         background: rgba(255, 255, 255, 0.1);
         border-radius: 8px;
     }

     .login-link a {
         color: #2c3e50;
         text-decoration: none;
         font-weight: 600;
         font-size: 14px;
         text-transform: uppercase;
         letter-spacing: 1px;
         transition: all 0.3s ease;
         padding: 8px 16px;
         border-radius: 6px;
         background: rgba(255, 255, 255, 0.2);
         display: inline-block;
     }

     .login-link a:hover {
         color: #3498db;
         background: rgba(255, 255, 255, 0.3);
         transform: translateY(-1px);
     }

     /* Responsive Design */
     @media (max-width: 768px) {
         .register-container {
             margin: 10px;
             padding: 20px;
         }
         
         .register-title {
             font-size: 1.5rem;
         }

         .radio-container {
             flex-direction: column;
             gap: 10px;
             align-items: stretch;
         }

         .hobbies-container {
             grid-template-columns: 1fr;
         }
     }

     @media (max-width: 480px) {
         .register-container {
             padding: 15px;
         }

         .register-table input[type="text"],
         .register-table input[type="email"],
         .register-table input[type="password"],
         .register-table select {
             font-size: 16px; /* Prevents zoom on iOS */
         }
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register-container">
        <h1 class="register-title">Sign Up</h1>

        <form name="frm1" method="post" runat="server" onsubmit="return checkForm();" style="direction:ltr">
            <table class="register-table">
                <tr>
                    <td>
                        <label for="username">Username:</label>
                        <input type="text" name="username" id="username" placeholder="Enter your username" />
                        <span class="error-message" id="musername"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="email">Email:</label>
                        <input type="email" name="email" id="email" placeholder="Enter your email" />
                        <span class="error-message" id="memail"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="password">Password:</label>
                        <input type="password" name="password" id="password" placeholder="Enter your password" />
                        <span class="error-message" id="mpass"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="passwordConf">Password Confirmation:</label>
                        <input type="password" name="passwordConf" id="passwordConf" placeholder="Confirm your password" />
                        <span class="error-message" id="mpassconf"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="age">Age:</label>
                        <select name="age" id="age">
                            <option value="">Select your age</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                        </select>
                        <span class="error-message" id="mage"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="name">Name:</label>
                        <input type="text" name="name" id="name" placeholder="Enter your full name" />
                        <span class="error-message" id="mname"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="gender-group">
                            <label class="gender-title">Gender:</label>
                            <div class="radio-container">
                                <label class="radio-option">
                                    <input type="radio" name="gender" value="male" checked />
                                    <span>Male</span>
                                </label>
                                <label class="radio-option">
                                    <input type="radio" name="gender" value="female" />
                                    <span>Female</span>
                                </label>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="hobbies-group">
                            <label class="gender-title">Hobbies:</label>
                            <div class="hobbies-container">
                                <label class="checkbox-option">
                                    <input type="checkbox" name="hobbies" value="soccer" />
                                    <span>Soccer</span>
                                </label>
                                <label class="checkbox-option">
                                    <input type="checkbox" name="hobbies" value="dancing" />
                                    <span>Dancing</span>
                                </label>
                                <label class="checkbox-option">
                                    <input type="checkbox" name="hobbies" value="video games" />
                                    <span>Video Games</span>
                                </label>
                                <label class="checkbox-option">
                                    <input type="checkbox" name="hobbies" value="studying" />
                                    <span>Studying</span>
                                </label>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="submit" value="Register" class="submit-btn" /> 
                    </td>
                </tr>
            </table>
            
            <div class="login-link">
                Already have an account? <a href="/login.aspx">Log In</a>
            </div>
        </form>
    </div>
    
    <script>
        function checkForm() {
            // Clear all previous error messages
            document.getElementById("musername").style.display = "none";
            document.getElementById("memail").style.display = "none";
            document.getElementById("mpass").style.display = "none";
            document.getElementById("mpassconf").style.display = "none";
            document.getElementById("mage").style.display = "none";
            document.getElementById("mname").style.display = "none";

            let hasErrors = false;

            // Check username
            if (document.getElementById("username").value.length < 8) {
                document.getElementById("musername").textContent = "Username must be at least 8 characters";
                document.getElementById("musername").style.display = "block";
                hasErrors = true;
            }

            // Check email
            const email = document.getElementById("email").value;
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                document.getElementById("memail").textContent = "Please enter a valid email address";
                document.getElementById("memail").style.display = "block";
                hasErrors = true;
            }

            // Check password
            if (document.getElementById("password").value.length < 8) {
                document.getElementById("mpass").textContent = "Password must be at least 8 characters";
                document.getElementById("mpass").style.display = "block";
                hasErrors = true;
            }

            // Check password confirmation
            if (document.getElementById("password").value !== document.getElementById("passwordConf").value) {
                document.getElementById("mpassconf").textContent = "Passwords must be identical";
                document.getElementById("mpassconf").style.display = "block";
                hasErrors = true;
            }

            // Check name
            if (document.getElementById("name").value.trim().length < 2) {
                document.getElementById("mname").textContent = "Name must be at least 2 characters";
                document.getElementById("mname").style.display = "block";
                hasErrors = true;
            }

            // Check age
            const age = parseInt(document.getElementById("age").value);
            if (isNaN(age) || age < 18) {
                document.getElementById("mage").textContent = "Must be 18 or older";
                document.getElementById("mage").style.display = "block";
                hasErrors = true;
            }

            // Return false if there are errors (prevents form submission)
            return !hasErrors;
        }
    </script>
</asp:Content>