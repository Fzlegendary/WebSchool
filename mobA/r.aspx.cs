using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using WebGrease;
namespace mobA
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        public string sql = "";
        public String msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Timers.Timer timer = new System.Timers.Timer(7);
            timer.Start();
            string time = DateTime.Now.ToString();
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            string email = Request.Form["email"];
            string name = Request.Form["name"];
            string gender = Request.Form["gender"];
            int age = Convert.ToInt32(Request.Form["age"]);
            String fileName = "sqlData.mdf";
            String tableName = "[dbo].[userTable]";
            sql = $"INSERT INTO {tableName} (username, password, email, name ,age ,gender, dateRegistered) VALUES ('{username}', '{password}','{email}','{name}', {age},'{gender}','{time}')";
            if (username != null)
            {
                DataTable table = Helper.ExecuteDataTable(fileName, sql);
                Response.Redirect("/home.aspx");

            }
        }
    }
}
