<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="mobA.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Help & Support</title>
    <style>
        .help-container {
            background: linear-gradient(135deg, #FFB6C1 0%, #FFC0CB 50%, #FFB6C1 100%);
            border: none;
            border-radius: 15px;
            width: 100%;
            max-width: 800px;
            margin: 20px auto;
            padding: 40px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            backdrop-filter: blur(10px);
        }

        .help-title {
            text-align: center;
            color: #2c3e50;
            font-size: 2.5rem;
            margin-bottom: 40px;
            text-decoration: underline;
            text-underline-position: under;
            font-weight: 700;
        }

        .help-section {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 12px;
            padding: 25px;
            margin-bottom: 25px;
            border: 2px solid rgba(255, 255, 255, 0.3);
            transition: all 0.3s ease;
        }

        .help-section:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            background: rgba(255, 255, 255, 0.25);
        }

        .section-title {
            color: #2c3e50;
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 2px solid rgba(52, 152, 219, 0.3);
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .help-content {
            color: #34495e;
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .help-list {
            color: #34495e;
            font-size: 16px;
            line-height: 1.8;
            padding-left: 0;
            list-style: none;
        }

        .help-list li {
            margin-bottom: 12px;
            padding: 12px 16px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 8px;
            border-left: 4px solid #3498db;
            transition: all 0.3s ease;
        }

        .help-list li:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateX(5px);
        }

        .help-list li strong {
            color: #2c3e50;
            font-weight: 600;
        }

        .faq-item {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 15px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease;
        }

        .faq-item:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        .faq-question {
            color: #2c3e50;
            font-weight: 600;
            font-size: 18px;
            margin-bottom: 10px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .faq-question::after {
            content: '+';
            font-size: 24px;
            color: #3498db;
            transition: transform 0.3s ease;
        }

        .faq-question.active::after {
            transform: rotate(45deg);
        }

        .faq-answer {
            color: #34495e;
            font-size: 16px;
            line-height: 1.6;
            display: none;
            padding-top: 10px;
            border-top: 1px solid rgba(255, 255, 255, 0.2);
        }

        .faq-answer.show {
            display: block;
            animation: fadeIn 0.3s ease-in;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .contact-info {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .contact-card {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            border: 2px solid rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease;
        }

        .contact-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            background: rgba(255, 255, 255, 0.2);
        }

        .contact-icon {
            font-size: 2.5rem;
            color: #3498db;
            margin-bottom: 15px;
        }

        .contact-title {
            color: #2c3e50;
            font-weight: 600;
            font-size: 18px;
            margin-bottom: 10px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .contact-details {
            color: #34495e;
            font-size: 16px;
            line-height: 1.5;
        }

        .search-help {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 30px;
            border: 2px solid rgba(255, 255, 255, 0.3);
        }

        .search-input {
            width: 100%;
            padding: 15px 20px;
            border: 2px solid rgba(255, 255, 255, 0.3);
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(5px);
            font-size: 16px;
            color: #2c3e50;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .search-input:focus {
            outline: none;
            border-color: #3498db;
            background: rgba(255, 255, 255, 0.4);
            box-shadow: 0 0 15px rgba(52, 152, 219, 0.3);
        }

        .search-input::placeholder {
            color: #7f8c8d;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .help-container {
                margin: 10px;
                padding: 20px;
            }
            
            .help-title {
                font-size: 2rem;
            }

            .section-title {
                font-size: 1.3rem;
            }

            .contact-info {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 480px) {
            .help-container {
                padding: 15px;
            }

            .help-title {
                font-size: 1.8rem;
            }

            .faq-question {
                font-size: 16px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="help-container">
        <h1 class="help-title">Help & Support</h1>

        <div class="search-help">
            <input type="text" class="search-input" id="helpSearch" placeholder="Search for help topics..." onkeyup="searchHelp()" />
        </div>

        <div class="help-section" data-searchable="getting started account registration login">
            <h2 class="section-title">Getting Started</h2>
            <p class="help-content">
                Welcome to our platform! Here's everything you need to know to get started with your account and begin exploring our features.
            </p>
            <ul class="help-list">
                <li><strong>Create Account:</strong> Click on "Register" to create your new account with a unique username and secure password.</li>
                <li><strong>Login:</strong> Use your email and password to access your account through the "Log In" page.</li>
                <li><strong>Profile Setup:</strong> Complete your profile with your personal information and preferences.</li>
                <li><strong>Navigation:</strong> Use the navigation menu to explore different sections of the website.</li>
            </ul>
        </div>

        <div class="help-section" data-searchable="account management profile settings password">
            <h2 class="section-title">Account Management</h2>
            <p class="help-content">
                Manage your account settings, update your information, and keep your account secure.
            </p>
            <ul class="help-list">
                <li><strong>Password Requirements:</strong> Your password must be at least 8 characters long for security.</li>
                <li><strong>Age Verification:</strong> You must be 18 years or older to create an account.</li>
                <li><strong>Email Verification:</strong> Make sure to use a valid email address for account notifications.</li>
                <li><strong>Profile Updates:</strong> You can update your profile information at any time.</li>
            </ul>
        </div>

        <div class="help-section" data-searchable="animals pets features content">
            <h2 class="section-title">Animals Section</h2>
            <p class="help-content">
                Discover and learn about various animals through our comprehensive animals section.
            </p>
            <ul class="help-list">
                <li><strong>Browse Animals:</strong> Explore different categories and types of animals.</li>
                <li><strong>Animal Information:</strong> Get detailed information about each animal species.</li>
                <li><strong>Interactive Features:</strong> Engage with interactive content and educational materials.</li>
                <li><strong>Favorites:</strong> Save your favorite animals for quick access later.</li>
            </ul>
        </div>

        <div class="help-section" data-searchable="faq questions answers common issues">
            <h2 class="section-title">Frequently Asked Questions</h2>
            
            <div class="faq-item">
                <div class="faq-question" onclick="toggleFaq(this)">
                    How do I reset my password?
                </div>
                <div class="faq-answer">
                    If you've forgotten your password, click on the "Forgot Password" link on the login page. Enter your email address, and we'll send you instructions to reset your password.
                </div>
            </div>

            <div class="faq-item">
                <div class="faq-question" onclick="toggleFaq(this)">
                    Why can't I register with my email?
                </div>
                <div class="faq-answer">
                    Make sure your email address is in the correct format (example@domain.com). If the email is already registered, try logging in instead or use a different email address.
                </div>
            </div>

            <div class="faq-item">
                <div class="faq-question" onclick="toggleFaq(this)">
                    How do I change my profile information?
                </div>
                <div class="faq-answer">
                    Once logged in, navigate to your profile settings where you can update your personal information, hobbies, and other preferences.
                </div>
            </div>

            <div class="faq-item">
                <div class="faq-question" onclick="toggleFaq(this)">
                    Is my personal information secure?
                </div>
                <div class="faq-answer">
                    Yes, we take security seriously. Your personal information is encrypted and stored securely. We never share your information with third parties without your consent.
                </div>
            </div>
        </div>

        <div class="help-section" data-searchable="contact support email phone help">
            <h2 class="section-title">Contact Support</h2>
            <p class="help-content">
                Need additional help? Our support team is here to assist you. Choose your preferred method of contact below.
            </p>
        </div>
    </div>

    <script>
        function toggleFaq(element) {
            const answer = element.nextElementSibling;
            const isActive = element.classList.contains('active');
            
            // Close all other FAQs
            document.querySelectorAll('.faq-question.active').forEach(q => {
                q.classList.remove('active');
                q.nextElementSibling.classList.remove('show');
            });
            
            // Toggle current FAQ
            if (!isActive) {
                element.classList.add('active');
                answer.classList.add('show');
            }
        }

        function searchHelp() {
            const searchTerm = document.getElementById('helpSearch').value.toLowerCase();
            const sections = document.querySelectorAll('.help-section');
            
            sections.forEach(section => {
                const searchableContent = section.getAttribute('data-searchable') || '';
                const sectionText = section.textContent.toLowerCase();
                
                if (searchTerm === '' || 
                    searchableContent.includes(searchTerm) || 
                    sectionText.includes(searchTerm)) {
                    section.style.display = 'block';
                    section.style.opacity = '1';
                } else {
                    section.style.display = 'none';
                    section.style.opacity = '0.5';
                }
            });
        }
    </script>
</asp:Content>