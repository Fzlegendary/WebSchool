using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mobA
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string loginMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg = "<script>alert(\"welcome " + Session["username"] + "!\")</script>";
        }
    }
}