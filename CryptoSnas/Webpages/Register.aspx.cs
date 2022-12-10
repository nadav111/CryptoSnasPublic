using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CryptoSnas.Webpages
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Form["submit"] != null)
            {
                User user = new User();
                string userName = Request.Form["UserName"];
                user.userName = userName;
                string Password = Request.Form["Password"];
                user.password = Password;
                string fName = Request.Form["Fname"];
                user.firstName = fName;
                string lName = Request.Form["LastName"];
                user.lastName = lName;
                DateTime birth = DateTime.Parse(Request.Form["Birth"]);
                user.birth = birth;
                string phone = Request.Form["Phone"];
                user.phone = phone;
                string Gmail = Request.Form["Gmail"];
                user.Gmail = Gmail;
                Helper.Insert(user);
            }
        }
    }
}