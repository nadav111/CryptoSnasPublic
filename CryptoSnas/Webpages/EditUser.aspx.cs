
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CryptoSnas.Webpages
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // for debugging
                if (Session["userToUpdate"] == null)
                {
                    Session["userToUpdate"] = 2;
                }

                // משיכת פרטי המשתמש מבסיס הנתונים
                // בניית פקודת SQL
                string SQLStr = "SELECT * FROM " + Helper.tblName + $" Where Id={(int)Session["userToUpdate"]}";

                // טעינת הנתונים
                DataSet ds = Helper.RetrieveTable(SQLStr);
                DataRow dr = ds.Tables[Helper.tblName].Rows[0];

                //  מילוי השדות בטופס
                UserName.Value = dr["UserName"].ToString();
                Password.Value = dr["Password"].ToString();
                Fname.Value = dr["FirstName"].ToString();
                LastName.Value = dr["LastName"].ToString();
                Phone.Value = dr["Phone"].ToString();
                Gmail.Value = dr["Gmail"].ToString();
                //Birth.Value = ((DateTime)(dr["birth"])).ToString("dd-mm-yyyy");
            }
        }

        public void edit_click(object sender, EventArgs e)
        {
            // התחברות למסד הנתונים
            //string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DB.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(Helper.conString);

            // בניית פקודת SQL
            string SQLStr = $"SELECT * FROM Users Where Id={(int)Session["userToUpdate"]}";
            SqlCommand cmd = new SqlCommand(SQLStr, con);

            //  טעינת הנתונים לתוך DataSet
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds, "Users");

            // בניית השורה להוספה
            DataRow dr = ds.Tables["Users"].Rows[0];
            dr["UserName"] = UserName.Value;
            dr["Password"] = Password.Value;
            dr["FirstName"] = Fname.Value;
            dr["LastName"] = LastName.Value;
            dr["Birth"] = Birth.Value;
            dr["Phone"] = Phone.Value;
            dr["Gmail"] = Gmail.Value;


            // עדכון הדאטה סט בבסיס הנתונים
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.UpdateCommand = builder.GetUpdateCommand();
            adapter.Update(ds, "Users");

            Response.Redirect("Users.aspx");
        }
    }
}