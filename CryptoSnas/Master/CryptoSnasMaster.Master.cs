using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CryptoSnas
{
    public partial class CryptoSnasMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["login"] == false)
            {
                users.Style.Add("display", "none");
                logout.Style.Add("display", "none");
                login.Style.Add("display", "inline-block");
            }
            else
            {
                login.Style.Add("display", "none");
                users.Style.Add("display", "inline-block");
                logout.Style.Add("display", "inline-block");
            }
        }
    }
}