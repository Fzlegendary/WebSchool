<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="animals.aspx.cs" Inherits="mobA.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>animals</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="animals-container">
        <table class="animals-table">
            <tr>
                <td>
                    <span class="animal-icon"></span>
                    <span class="nav-bracket"></span><a href="lion.aspx">lion</a><span class="nav-bracket"></span>
                </td>
                <td>
                    <span class="animal-icon"></span>
                    <span class="nav-bracket"></span><a href="elephant.aspx">elephant</a><span class="nav-bracket"></span>
                </td>
                <td>
                    <span class="animal-icon"></span>
                    <span class="nav-bracket"></span><a href="tiger.aspx">tiger</a><span class="nav-bracket"></span>
                </td>
                <td>
                    <span class="animal-icon"></span>
                    <span class="nav-bracket"></span><a href="bear.aspx">bear</a><span class="nav-bracket"></span>
                </td>
                <td>
                    <span class="animal-icon"></span>
                    <span class="nav-bracket"></span><a href="giraffe.aspx">giraffe</a><span class="nav-bracket"></span>
                </td>
            </tr>
        </table>
    </div>

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
        padding: 20px;
    }

    h1, h2, h3 { 
        text-align: center; 
        color: #333;
        margin-bottom: 2rem;
    }

    h1 { 
        text-underline-position: under;
        font-size: 2.5rem;
        text-decoration: underline;
        color: #2c3e50;
    }

    .animals-container {
        background: linear-gradient(135deg, #FFB6C1 0%, #FFC0CB 50%, #FFB6C1 100%);
        border: none;
        border-radius: 15px;
        width: 100%;
        max-width: 1000px;
        margin: 0 auto;
        padding: 20px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        backdrop-filter: blur(10px);
    }

    .animals-table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 15px;
    }

    .animals-table td {
        text-align: center;
        padding: 20px 15px;
        border-radius: 12px;
        transition: all 0.3s ease;
        background: rgba(255, 255, 255, 0.3);
        backdrop-filter: blur(5px);
        border: 2px solid rgba(255, 255, 255, 0.2);
        position: relative;
    }

    .animals-table td:hover {
        background: rgba(255, 255, 255, 0.5);
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.25);
        border-color: rgba(255, 255, 255, 0.5);
    }

    .animals-table a {
        color: #2c3e50;
        text-decoration: none;
        font-weight: 700;
        font-size: 16px;
        text-transform: uppercase;
        letter-spacing: 1.5px;
        transition: all 0.3s ease;
        display: block;
    }

    .animals-table a:hover {
        color: #e74c3c;
        font-size: 18px;
    }

    .nav-bracket {
        color: #7f8c8d;
        font-weight: bold;
        margin: 0 8px;
        font-size: 18px;
    }

    .animal-icon {
        font-size: 24px;
        display: block;
        margin-bottom: 8px;
    }

    @media (max-width: 768px) {
        .animals-table {
            border-spacing: 10px;
        }
        
        .animals-table td {
            padding: 15px 10px;
        }
        
        .animals-table a {
            font-size: 14px;
            letter-spacing: 1px;
        }
        
        .animals-container {
            margin: 10px;
            padding: 15px;
        }

        h1 {
            font-size: 2rem;
        }
    }

    @media (max-width: 480px) {
        .animals-table {
            border-spacing: 8px;
        }
        
        .animals-table td {
            padding: 12px 8px;
        }
        
        .animals-table a {
            font-size: 13px;
            letter-spacing: 0.5px;
        }

        .animal-icon {
            font-size: 20px;
        }

        h1 {
            font-size: 1.8rem;
        }
    }</style>
</asp:Content>
