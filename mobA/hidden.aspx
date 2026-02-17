<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="hidden.aspx.cs" Inherits="mobA.hidden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Secret Animal Sanctuary</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            direction: ltr;
            background: linear-gradient(135deg, #2c3e50 0%, #34495e 50%, #2c3e50 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            line-height: 1.6;
            overflow-x: hidden;
            position: relative;
        }

        /* Animated background particles */
        .particles {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 0;
        }

        .particle {
            position: absolute;
            width: 4px;
            height: 4px;
            background: rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            animation: float 6s ease-in-out infinite;
        }

        .particle:nth-child(odd) {
            animation-delay: -2s;
            background: rgba(135, 206, 235, 0.4);
        }

        .particle:nth-child(3n) {
            animation-delay: -4s;
            background: rgba(255, 182, 193, 0.4);
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px) rotate(0deg); opacity: 0.3; }
            50% { transform: translateY(-20px) rotate(180deg); opacity: 0.8; }
        }

        /* Enhanced Navigation - matching master page style */
        .nav-container {
            background: linear-gradient(135deg, #8B4513 0%, #A0522D 50%, #8B4513 100%);
            border: none;
            border-radius: 15px;
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            padding: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            position: relative;
            z-index: 10;
        }

        .nav-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 10px;
        }

        .nav-table td {
            text-align: center;
            padding: 12px 8px;
            border-radius: 8px;
            transition: all 0.3s ease;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(5px);
        }

        .nav-table td:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }

        .nav-table a {
            color: #f8f9fa;
            text-decoration: none;
            font-weight: 600;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: color 0.3s ease;
        }

        .nav-table a:hover {
            color: #FFD700;
        }

        /* Secret Header */
        .secret-header {
            text-align: center;
            padding: 40px 20px;
            position: relative;
            z-index: 5;
        }

        .secret-title {
            font-size: 3.5rem;
            background: linear-gradient(45deg, #FFD700, #FFA500, #FF6347);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 10px;
            text-shadow: 0 0 30px rgba(255, 215, 0, 0.5);
            animation: glow 2s ease-in-out infinite alternate;
        }

        .secret-subtitle {
            color: #ecf0f1;
            font-size: 1.2rem;
            opacity: 0.8;
            margin-bottom: 20px;
        }

        .access-badge {
            display: inline-block;
            background: linear-gradient(45deg, #e74c3c, #c0392b);
            color: white;
            padding: 8px 20px;
            border-radius: 25px;
            font-size: 0.9rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 2px;
            box-shadow: 0 4px 15px rgba(231, 76, 60, 0.4);
            animation: pulse 2s infinite;
        }

        @keyframes glow {
            from { text-shadow: 0 0 30px rgba(255, 215, 0, 0.5); }
            to { text-shadow: 0 0 40px rgba(255, 215, 0, 0.8), 0 0 50px rgba(255, 215, 0, 0.6); }
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        /* Content Area */
        .content-wrapper {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            position: relative;
            z-index: 5;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }

        .feature-card {
            background: linear-gradient(135deg, rgba(52, 73, 94, 0.9) 0%, rgba(44, 62, 80, 0.9) 100%);
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 2px;
            background: linear-gradient(90deg, transparent, #FFD700, transparent);
            animation: scan 3s linear infinite;
        }

        @keyframes scan {
            0% { left: -100%; }
            100% { left: 100%; }
        }

        .feature-card:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
        }

        .feature-icon {
            font-size: 3rem;
            margin-bottom: 20px;
            display: block;
            text-align: center;
        }

        .feature-card h3 {
            color: #ecf0f1;
            font-size: 1.5rem;
            margin-bottom: 15px;
            text-align: center;
        }

        .feature-card p {
            color: #bdc3c7;
            line-height: 1.6;
            text-align: center;
        }

        .unlock-button {
            background: linear-gradient(45deg, #27ae60, #2ecc71);
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 25px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            display: block;
            margin: 20px auto 0;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(46, 204, 113, 0.4);
        }

        .unlock-button:hover {
            background: linear-gradient(45deg, #2ecc71, #27ae60);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(46, 204, 113, 0.6);
        }

        .secret-warning {
            background: linear-gradient(135deg, rgba(142, 68, 173, 0.2), rgba(155, 89, 182, 0.2));
            border: 2px solid rgba(142, 68, 173, 0.5);
            border-radius: 15px;
            padding: 20px;
            margin: 40px 0;
            text-align: center;
            backdrop-filter: blur(5px);
        }

        .secret-warning h4 {
            color: #e74c3c;
            margin-bottom: 10px;
            font-size: 1.3rem;
        }

        .secret-warning p {
            color: #ecf0f1;
            opacity: 0.9;
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            .secret-title {
                font-size: 2.5rem;
            }
            
            .feature-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            
            .nav-container {
                margin: 10px;
                padding: 10px;
            }
        }

        @media (max-width: 480px) {
            .secret-title {
                font-size: 2rem;
            }
            
            .feature-card {
                padding: 20px;
            }
        }
    </style>

    <title>Mystery page :D</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%if (Session["username"].ToString() != "guest")
     { %>
            <!-- Animated background particles -->
    <div class="particles">
        <div class="particle" style="top: 20%; left: 10%; animation-delay: 0s;"></div>
        <div class="particle" style="top: 80%; left: 20%; animation-delay: -1s;"></div>
        <div class="particle" style="top: 40%; left: 80%; animation-delay: -2s;"></div>
        <div class="particle" style="top: 70%; left: 60%; animation-delay: -3s;"></div>
        <div class="particle" style="top: 30%; left: 40%; animation-delay: -4s;"></div>
        <div class="particle" style="top: 90%; left: 90%; animation-delay: -5s;"></div>
        <div class="particle" style="top: 10%; left: 70%; animation-delay: -1.5s;"></div>
        <div class="particle" style="top: 60%; left: 30%; animation-delay: -2.5s;"></div>
    </div>

    <!-- Navigation (matching master page style but darker theme) -->

    <div class="content-wrapper">
        <!-- Warning Notice -->
        <div class="secret-warning">
            <h4>⚠️ Classified Content ⚠️</h4>
            <p>You've discovered a hidden area of the Animal Sanctuary. The features below are experimental and available only to trusted users.</p>
        </div>

        <!-- Feature Grid -->
        <div class="feature-grid">
            <div class="feature-card">
                <span class="feature-icon">🌙</span>
                <h3>Night Vision Mode</h3>
                <p>Experience the sanctuary after dark with exclusive nocturnal animal behaviors and sounds. Watch creatures you've never seen before emerge from their hidden habitats.</p>
                <button class="unlock-button" onclick="alert('Night Vision Mode Activated! 🌙✨')">Activate</button>
            </div>

            <div class="feature-card">
                <span class="feature-icon">🗣️</span>
                <h3>Animal Translator</h3>
                <p>Decode the secret language of animals with our experimental AI translator. Understand what they're really thinking and communicate back!</p>
                <button class="unlock-button" onclick="alert('Animal Translator Online! 🐾💬')">Connect</button>
            </div>

            <div class="feature-card">
                <span class="feature-icon">🎭</span>
                <h3>Shapeshifter View</h3>
                <p>See through the eyes of any animal in the sanctuary. Experience their unique perspective and discover hidden secrets of the animal kingdom.</p>
                <button class="unlock-button" onclick="alert('Shapeshifter Mode Ready! 👁️🦅')">Transform</button>
            </div>

            <div class="feature-card">
                <span class="feature-icon">⏰</span>
                <h3>Time Portal</h3>
                <p>Journey back in time to witness extinct species in their natural glory. Meet dinosaurs, mammoths, and other prehistoric creatures.</p>
                <button class="unlock-button" onclick="alert('Time Portal Opening! ⏰🦕')">Travel</button>
            </div>

            <div class="feature-card">
                <span class="feature-icon">🔬</span>
                <h3>DNA Lab Access</h3>
                <p>Create hybrid animals by combining DNA from different species. Design your own mythical creatures and bring them to life virtually.</p>
                <button class="unlock-button" onclick="alert('DNA Lab Unlocked! 🧬🔬')">Enter Lab</button>
            </div>

            <div class="feature-card">
                <span class="feature-icon">🌍</span>
                <h3>Global Network</h3>
                <p>Connect with secret sanctuaries worldwide. Trade rare animals, share discoveries, and participate in global conservation missions.</p>
                <button class="unlock-button" onclick="alert('Global Network Connected! 🌍📡')">Join Network</button>
            </div>
        </div>
    </div>

    <script>
        // Add some interactive elements
        document.addEventListener('DOMContentLoaded', function () {
            // Create more particles dynamically
            const particles = document.querySelector('.particles');
            for (let i = 0; i < 20; i++) {
                const particle = document.createElement('div');
                particle.className = 'particle';
                particle.style.top = Math.random() * 100 + '%';
                particle.style.left = Math.random() * 100 + '%';
                particle.style.animationDelay = Math.random() * 6 + 's';
                particles.appendChild(particle);
            }

            // Add click effects to cards
            const cards = document.querySelectorAll('.feature-card');
            cards.forEach(card => {
                card.addEventListener('mouseenter', function () {
                    this.style.borderColor = 'rgba(255, 215, 0, 0.5)';
                });
                card.addEventListener('mouseleave', function () {
                    this.style.borderColor = 'rgba(255, 255, 255, 0.1)';
                });
            });
        });
    </script>
     <%}
         else
         {  %>
        <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            direction: ltr;
            background: linear-gradient(135deg, #87CEEB 0%, #E0F6FF 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            line-height: 1.6;
        }

        .header {
            width: 100%;
            height: 60px;
        }

        .nav {
            width: 100%;
            height: 35px;
            border: 1px solid silver;
            background-color: #F3E2A9;
        }

        .main {
            width: 100%;
            height: 380px;
            border: 1px solid silver;
            background-color: #E3F6CE;
        }

        .footer {
            width: 100%;
            height: 50px;
            text-align: center;
            background-image: url("../pics/footerBg1.JPG");
        }

        h1, h2, h3 { 
            text-align: center; 
            color: #333;
            margin-bottom: 1rem;
        }

        h1 { 
            text-underline-position: under;
        }

        /* Enhanced Navigation Styles */
        .nav-container {
            background: linear-gradient(135deg, #FFB6C1 0%, #FFC0CB 50%, #FFB6C1 100%);
            border: none;
            border-radius: 15px;
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            padding: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            backdrop-filter: blur(10px);
            position: relative;
        }

        .nav-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 10px;
        }

        .nav-table td {
            text-align: center;
            padding: 12px 8px;
            border-radius: 8px;
            transition: all 0.3s ease;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(5px);
            position: relative;
        }

        .nav-table td:hover {
            background: rgba(255, 255, 255, 0.4);
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .nav-table a {
            color: #2c3e50;
            text-decoration: none;
            font-weight: 600;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: color 0.3s ease;
        }

        .nav-table a:hover {
            color: #e74c3c;
        }

        .nav-bracket {
            color: #7f8c8d;
            font-weight: bold;
            margin: 0 5px;
        }

        /* Hidden Mystery Button Styles */
        .mystery-button {
            position: absolute;
            top: -12px;
            right: -8px;
            width: 16px;
            height: 16px;
            background: linear-gradient(45deg, #8A2BE2, #9370DB);
            border-radius: 50%;
            opacity: 0;
            cursor: pointer;
            transition: all 0.4s ease;
            border: 2px solid rgba(255, 255, 255, 0.3);
            box-shadow: 0 0 0 rgba(138, 43, 226, 0.4);
            z-index: 10;
        }

        /* Show mystery button only when hovering over the nav container */
        .nav-container:hover .mystery-button {
            opacity: 0.6;
            animation: mysteryPulse 2s infinite;
        }

        .mystery-button:hover {
            opacity: 1 !important;
            transform: scale(1.3);
            box-shadow: 0 0 15px rgba(138, 43, 226, 0.8);
            border-color: #FFD700;
        }

        @keyframes mysteryPulse {
            0%, 100% { 
                transform: scale(1); 
                box-shadow: 0 0 0 rgba(138, 43, 226, 0.4);
            }
            50% { 
                transform: scale(1.1); 
                box-shadow: 0 0 10px rgba(138, 43, 226, 0.6);
            }
        }

        /* Alternative: Hidden dot in nav-bracket */
        .secret-dot {
            color: rgba(255, 255, 255, 0.1);
            font-size: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            user-select: none;
            margin: 0 2px;
        }

        .nav-table:hover .secret-dot {
            color: rgba(138, 43, 226, 0.4);
        }

        .secret-dot:hover {
            color: #8A2BE2 !important;
            text-shadow: 0 0 8px rgba(138, 43, 226, 0.8);
            transform: scale(1.5);
        }

        /* Content Area Styling */
        .content-wrapper {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .nav-table {
                border-spacing: 5px;
            }
            
            .nav-table td {
                padding: 8px 4px;
            }
            
            .nav-table a {
                font-size: 12px;
            }
            
            .nav-container {
                margin: 10px;
                padding: 10px;
            }

            .mystery-button {
                width: 14px;
                height: 14px;
                top: -10px;
                right: -6px;
            }
        }

        @media (max-width: 480px) {
            .nav-table {
                border-spacing: 3px;
            }
            
            .nav-table td {
                padding: 6px 2px;
            }
            
            .nav-table a {
                font-size: 11px;
                letter-spacing: 0.5px;
            }

            .mystery-button {
                width: 12px;
                height: 12px;
            }
        }

        table {
            border-spacing: 7px;
        }
    </style> 

 <h1>404 - user not logged in, please log in to use this feature!</h1>
 <% } %>
    </asp:Content>