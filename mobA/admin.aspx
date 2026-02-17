<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="mobA.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Administrator Panel</title>
    <style>
        /* Override master page yellow navigation for admin page */
        .nav {
            background: linear-gradient(135deg, #87CEEB 0%, #B0E0E6 100%) !important;
            border: 1px solid rgba(255, 255, 255, 0.3) !important;
        }
        
        /* Admin-specific styles that complement the master page */
        .admin-container {
            max-width: 1000px;
            margin: 20px auto;
            padding: 30px;
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.15) 0%, rgba(255, 255, 255, 0.05) 100%);
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .admin-header {
            text-align: center;
            margin-bottom: 20px;
            padding: 20px;
            background: linear-gradient(135deg, #FFB6C1 0%, #FFC0CB 50%, #FFB6C1 100%);
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        .admin-title {
            color: #2c3e50;
            font-size: 2.5em;
            font-weight: 700;
            margin: 0;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .admin-subtitle {
            color: #7f8c8d;
            font-size: 1.1em;
            margin-top: 10px;
            font-weight: 400;
        }

        .control-panel {
            background: linear-gradient(135deg, #FFB6C1 0%, #FFC0CB 50%, #FFB6C1 100%);
            border-radius: 15px;
            padding: 25px;
            margin: 20px 0;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .control-buttons {
            display: flex;
            gap: 15px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .admin-btn {
            background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 25px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: 0 5px 15px rgba(52, 152, 219, 0.3);
            position: relative;
            overflow: hidden;
        }

        .admin-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(52, 152, 219, 0.4);
            background: linear-gradient(135deg, #2980b9 0%, #3498db 100%);
        }

        .admin-btn:active {
            transform: translateY(0);
        }

        .admin-btn.hide-btn {
            background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%);
            box-shadow: 0 5px 15px rgba(231, 76, 60, 0.3);
        }

        .admin-btn.hide-btn:hover {
            background: linear-gradient(135deg, #c0392b 0%, #e74c3c 100%);
            box-shadow: 0 8px 25px rgba(231, 76, 60, 0.4);
        }

        .data-container {
            background: linear-gradient(135deg, #B0E0E6 0%, #87CEEB 50%, #B0E0E6 100%);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 15px;
            padding: 25px;
            margin: 20px 0;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .data-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(135deg, rgba(255, 255, 255, 0.2) 0%, rgba(255, 255, 255, 0.1) 100%);
            border-radius: 15px;
            pointer-events: none;
        }

        .data-container.hidden {
            opacity: 0;
            transform: translateY(-10px);
            max-height: 0;
            padding: 0;
            margin: 0;
            overflow: hidden;
        }

        .data-content {
            color: #2c3e50;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            font-size: 14px;
            position: relative;
            z-index: 1;
        }

        /* Enhanced visibility for buttons and important elements */
        .data-content button,
        .data-content input[type="button"],
        .data-content input[type="submit"] {
            background: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%) !important;
            color: white !important;
            border: none !important;
            padding: 8px 16px !important;
            border-radius: 20px !important;
            font-weight: 600 !important;
            cursor: pointer !important;
            transition: all 0.3s ease !important;
            box-shadow: 0 4px 12px rgba(231, 76, 60, 0.3) !important;
            text-shadow: none !important;
            font-size: 12px !important;
            text-transform: uppercase !important;
            letter-spacing: 0.5px !important;
        }

        .data-content button:hover,
        .data-content input[type="button"]:hover,
        .data-content input[type="submit"]:hover {
            background: linear-gradient(135deg, #c0392b 0%, #e74c3c 100%) !important;
            transform: translateY(-2px) !important;
            box-shadow: 0 6px 16px rgba(231, 76, 60, 0.4) !important;
        }

        /* Better text contrast */
        .data-content * {
            color: #2c3e50 !important;
        }

        .data-content a {
            color: #3498db !important;
            font-weight: 600 !important;
            text-decoration: none !important;
        }

        .data-content a:hover {
            color: #2980b9 !important;
            text-decoration: underline !important;
        }

        /* Enhanced table styling within data content */
        .data-content table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 7px;
            margin: 15px 0;
        }

        .data-content table th,
        .data-content table td {
            padding: 12px;
            text-align: left;
            background: rgba(255, 255, 255, 0.6);
            border-radius: 8px;
            border: 1px solid rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .data-content table th {
            background: linear-gradient(135deg, #FFB6C1 0%, #FFC0CB 100%);
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: #2c3e50;
            text-align: center;
        }

        .data-content table tr:hover td {
            background: rgba(255, 255, 255, 0.8);
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .data-content pre {
            background: rgba(255, 255, 255, 0.7);
            border-radius: 8px;
            padding: 15px;
            border: 1px solid rgba(0, 0, 0, 0.1);
            overflow-x: auto;
            font-family: 'Courier New', monospace;
            color: #2c3e50;
        }

        .access-denied {
            text-align: center;
            padding: 60px 20px;
            background: linear-gradient(135deg, #ff6b6b 0%, #ee5a52 100%);
            border-radius: 20px;
            color: white;
            box-shadow: 0 15px 35px rgba(255, 107, 107, 0.3);
        }

        .access-denied h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: white;
        }

        .access-denied p {
            font-size: 1.2em;
            opacity: 0.9;
        }

        .rick-roll {
            display: none; /* Hide the broken image */
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .admin-container {
                margin: 10px;
                padding: 20px;
            }
            
            .admin-title {
                font-size: 2em;
            }
            
            .control-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .admin-btn {
                width: 100%;
                max-width: 250px;
            }
        }

        /* Animation for showing/hiding data */
        @keyframes slideDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
                max-height: 0;
            }
            to {
                opacity: 1;
                transform: translateY(0);
                max-height: 1000px;
            }
        }

        @keyframes slideUp {
            from {
                opacity: 1;
                transform: translateY(0);
                max-height: 1000px;
            }
            to {
                opacity: 0;
                transform: translateY(-20px);
                max-height: 0;
            }
        }

        .data-container.showing {
            animation: slideDown 0.5s ease forwards;
        }

        .data-container.hiding {
            animation: slideUp 0.5s ease forwards;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%if (Session["admin"].ToString() != "yes")
        { %>
        <div class="admin-container">
            <div class="access-denied">
                <h2>🚫 Access Denied</h2>
                <p>You don't have administrator privileges to view this page.</p>
                <p>Please contact the system administrator if you believe this is an error.</p>
            </div>
        </div>
    <%}
        else
        { %>
        <div class="admin-container">
            <div class="admin-header">
                <h2 class="admin-title">Administrator Panel</h2>
                <p class="admin-subtitle">System Management Dashboard</p>
            </div>

            <div class="control-panel">
                <div class="control-buttons">
                    <button id="showBtn" class="admin-btn" onclick="showData()">
                        📊 Show Data Table
                    </button>
                    <button id="hideBtn" class="admin-btn hide-btn" onclick="hideData()">
                        🙈 Hide Data Table
                    </button>
                </div>
            </div>

            <div id="dataContainer" class="data-container hidden">
                <div class="data-content">
                    <h3 style="margin-bottom: 15px; color: #2c3e50; text-align: center;">System Data</h3>
                    <div id="dataContent"><%= str %></div>
                </div>
            </div>
        </div>
    <%} %>

    <script>
        function showData() {
            const container = document.getElementById("dataContainer");
            const showBtn = document.getElementById("showBtn");
            const hideBtn = document.getElementById("hideBtn");

            container.classList.remove("hidden", "hiding");
            container.classList.add("showing");

            // Update button states
            showBtn.style.opacity = "0.6";
            showBtn.style.cursor = "default";
            hideBtn.style.opacity = "1";
            hideBtn.style.cursor = "pointer";

            // Remove the showing class after animation
            setTimeout(() => {
                container.classList.remove("showing");
            }, 500);
        }

        function hideData() {
            const container = document.getElementById("dataContainer");
            const showBtn = document.getElementById("showBtn");
            const hideBtn = document.getElementById("hideBtn");

            container.classList.remove("showing");
            container.classList.add("hiding");

            // Update button states
            hideBtn.style.opacity = "0.6";
            hideBtn.style.cursor = "default";
            showBtn.style.opacity = "1";
            showBtn.style.cursor = "pointer";

            // Add hidden class after animation
            setTimeout(() => {
                container.classList.remove("hiding");
                container.classList.add("hidden");
            }, 500);
        }

        // Initialize button states
        document.addEventListener("DOMContentLoaded", function () {
            const showBtn = document.getElementById("showBtn");
            const hideBtn = document.getElementById("hideBtn");

            // Initially, show button is active, hide button is dimmed
            showBtn.style.opacity = "1";
            showBtn.style.cursor = "pointer";
            hideBtn.style.opacity = "0.6";
            hideBtn.style.cursor = "default";
        });
    </script>
</asp:Content>