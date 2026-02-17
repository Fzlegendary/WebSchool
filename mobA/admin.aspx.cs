using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace mobA
{
    public partial class admin : System.Web.UI.Page
    {
        public string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            String fileName = "sqlData.mdf";
            String tableName = "[dbo].[userTable]";
            DataTable table = Helper.ExecuteDataTable(fileName, "SELECT * FROM " + tableName);
                str = "<table><tr>";
            str += "<th>username</th>";
            str += "<th>password</th>";
            str += "<th>email</th>";
            str += "<th>name</th>";
            str += "<th>age</th>";
            str += "<th>gender</th>";
            str += "<th>dateRegistered</th>";
            str += "</tr>";
      for (int i = 0; i < table.Rows.Count; i++)
            { 
                    str += "<tr>";
                    str += $"<td> {table.Rows[i]["username"]} </td>";
                    str += $"<td> {table.Rows[i]["password"]} </td>";
                    str += $"<td> {table.Rows[i]["email"]} </td>";
                    str += $"<td> {table.Rows[i]["name"]} </td>";
                    str += $"<td> {table.Rows[i]["age"]} </td>";
                    str += $"<td> {table.Rows[i]["gender"]} </td>";
                    str += $"<td> {table.Rows[i]["dateRegistered"]} </td>";
               string userToDelete = table.Rows[i]["email"].ToString();
                str += "<td style = 'text-align: center; border: 1px solid black;'>";
                str += "<a href='deleteUser.aspx?email=" + userToDelete + "' style='color: white; text-decoration: none;' onmouseover='this.style.opacity=0.8' onmouseout='this.style.opacity=1'>delete user</a>";
                str += "</tr>";
            }
            str += "</table>";
        }
    }
}