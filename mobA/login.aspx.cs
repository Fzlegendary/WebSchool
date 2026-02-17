using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mobA
{
    public partial class login : System.Web.UI.Page
    {
        public string msg;
        public string SqlLogin;
        public static int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string email = Request.Form["email"];
                string password = Request.Form["password"];
                string fileName = "sqlData.mdf";
                string tableName = "dbo.userTable";
                SqlLogin = $"SELECT * FROM {tableName} WHERE email = '{email}' AND password = '{password}'";
                if (Helper.IsExist(fileName, SqlLogin))
                {
                    flag = 1;
                    DataTable table = Helper.ExecuteDataTable(fileName, SqlLogin);
                    int length = table.Rows.Count;
                    if (length == 0)
                    {
                        msg = "404 - user not found";
                    }
                    else
                    {
                        Session["username"] = table.Rows[0]["username"];
                        Session["email"] = table.Rows[0]["email"];
                        if ((string)Session["email"] == "dhnwrl98@gmail.com")
                            Session["admin"] = "yes";
                        else
                        Session["admin"] = "no";
                    }
                }
            }
        }
    }
}