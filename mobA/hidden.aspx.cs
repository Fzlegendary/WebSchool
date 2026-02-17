using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mobA
{
    public partial class hidden : System.Web.UI.Page
    {
        public string code;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["username"] == "guest")
            {
                code = "<h1><p>404 - user not logged in, please log in to ue this feature!</p></h1>";
            }
            else
            {
                code = "<script>alert(\"Congragulations, you're logged in so you can use this feature and access this site!\")</script>";
            }
        }
    }
}