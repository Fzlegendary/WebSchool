using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mobA
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string myTime;
        public string loginMsg;
 
        protected void Page_Load(object sender, EventArgs e)
        {
            myTime = DateTime.Now.ToString();
            loginMsg = "<script>alert(\"welcome " + Session["username"] +$"!\" {myTime})</script>";
           
            
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session["username"] = "guest";
            Session["email"] = "guest";
            Session["admin"] = "yes";
        }
        void Session_End(object sender, EventArgs e)
        {
            Session["username"] = "guest";
            Session["email"] = "guest";
            Session["admin"] = "no";
        }
    }
}