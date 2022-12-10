using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CryptoSnas.Webpages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack)
            //{
                msg.InnerHtml = "<br /> <br /> <br />";
                if (Helper.IsUsernameAndPasswordExist(Request.Form["UserName"], Request.Form["Password"]))
                {
                    Session["login"] = true;
                    Session["userName"] = Request.Form["UserName"];
                }
                else
                {
                    Session["login"] = false;
                    Session["userName"] = "guest";
                }
            //}
        }
    }
}