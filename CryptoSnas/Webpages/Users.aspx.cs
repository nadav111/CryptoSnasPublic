using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace CryptoSnas.Webpages
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //div1.InnerHtml = "blabla";
            if (!IsPostBack)
            {
                string SQLStr = "SELECT * FROM Users";
                DataSet ds = Helper.RetrieveTable(SQLStr);
                DataTable dt = ds.Tables["Users"];
                string table = Helper.BuildUsersTable(dt);
                tableDiv.InnerHtml = table;
            }
            //btnAdd= name
            if (Request.Form["btnAdd"] != null)
            {
                Response.Redirect("../Webpages/Register.aspx");
            }
        }
        public void FilterByTextName(object sender, EventArgs e)
        {
            string SQLStr = BuildSQLStr(Request.Form["filter"]);
            DataSet ds = Helper.RetrieveTable(SQLStr);
            string table = Helper.BuildUsersTable(ds.Tables[0]);
            tableDiv.InnerHtml = table;
        }
        public static string BuildSQLStr(string str)
        {
            if (str.Length == 0)
            {
                return "SELECT * FROM Users";
            }
            string SQLStr = $"SELECT * FROM Users " +
            $"WHERE FirstName LIKE '%{str}%' OR LastName LIKE '%{str}%' ";
            return SQLStr;
        }
        public void delete_click(object sender, EventArgs e)
        {
            string connectionString = Helper.conString;
            SqlConnection con = new SqlConnection(connectionString);
            string SQLStr = "SELECT * FROM Users";
            SqlCommand cmd = new SqlCommand(SQLStr, con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Users");
            for (int i = 1; i < Request.Form.Count; i++)
            {
                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    int userId = int.Parse(Request.Form.AllKeys[i].Remove(0,3));
                    DataRow[] dr = ds.Tables["Users"].Select($"Id = {userId}");
                    dr[0].Delete();
                }
            }
            SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
            adapter.UpdateCommand = builder.GetDeleteCommand();
            adapter.Update(ds, "Users");
            string table = Helper.BuildUsersTable(ds.Tables["Users"]);
            tableDiv.InnerHtml = table;
        }
        public void edit_click(object sender, EventArgs e)
        {
            for (int i = 1; i < Request.Form.Count; i++)
            {
                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    Session["userToUpdate"] =
                    int.Parse(Request.Form.AllKeys[i].Remove(0, 3));
                    Response.Redirect("EditUser.aspx");
                }
            }
            //message.InnerHtml = "No user was Selected";
        }
    }
}