using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mobA
{
    public partial class deleteUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "sqlData.mdf";
            if (Session["admin"].ToString() == "yes")
            {
                string email = Request.QueryString["email"].ToString();
                string sqlDelete = "DELETE FROM userTable WHERE email = '" + email + "'";
                Helper.ExecuteDataTable(fileName, sqlDelete);
            }
            Response.Redirect("/admin.aspx");
        }
    }
}