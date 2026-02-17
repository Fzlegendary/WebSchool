<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cont.aspx.cs" Inherits="mobA.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>contact us</title>
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
                <div class="contact-info">
                <div class="contact-card">
                    <div class="contact-icon">📧</div>
                    <div class="contact-title">Email Support</div>
                    <div class="contact-details">
                        d***98@gmail.com<br>
                        Response within 24 hours
                    </div>
                </div>
                
                <div class="contact-card">
                    <div class="contact-icon">💬</div>
                    <div class="contact-title">Live Chat</div>
                    <div class="contact-details">
                        Available Mon-Fri<br>
                        9 AM - 6 PM
                    </div>
                </div>
                
                <div class="contact-card">
                    <div class="contact-icon">📱</div>
                    <div class="contact-title">Phone Support</div>
                    <div class="contact-details">
                        classifiesd.<br>
                        Mon-Fri, 8 AM - 8 PM
                    </div>
                </div>
            </div>
</asp:Content>
