using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Assignment
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            int result = InsertUsers(txtBoxName.Text, txtBoxSurname.Text, txtBoxEmail.Text, txtBoxPassword.Text, txtBoxPhoneNumber.Text);
            if (result > 0)
            {
                labelConfirmation.Text = "The record is added successfully";
            }
            else
            {
                labelConfirmation.Text = "The record is Failed ";
            }

        }
        private int InsertUsers(string userName, string userSurname, string userEmail, string userPassword, string userPhoneNumber)
        {
            int result = 0;
            string connectionString = "Data Source=DESKTOP-JF6VH4H;Initial Catalog=AssignmentDB;Integrated Security=True;Connect Timeout=30;Encrypt = False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            if (connection.State == ConnectionState.Open)
            {
                SqlCommand command = new SqlCommand("INSERT INTO Users (u_name,u_username,u_password,u_email,u_phonenumber) VALUES ('"+userName+"','"+userSurname+"','"+userEmail+"','"+userPassword+"','"+userPhoneNumber+"')", connection);
                result = command.ExecuteNonQuery();

            }
            return result;
        }
    }
}
