using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace CareerCloudASP.UserControls
{
    public partial class SignUp : System.Web.UI.UserControl
    {
        OleDbConnection connection = new OleDbConnection(ConfigurationManager.ConnectionStrings["JOB_PORTAL_DBConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string role = string.Empty;
            if (RadioButton1.Checked)
            {
                role = "Applicants";
            }
            else if (RadioButton2.Checked)
            {
                role = "Recruiters";
            }

            
            OleDbCommand command = new OleDbCommand(@"Select Id From dbo.Security_roles
                                                        Where Role = '" + role + "'");

            connection.Open();
            command.Connection = connection;
            OleDbDataReader reader = command.ExecuteReader();

            Guid RoleId = Guid.Empty;

            while (reader.Read())
            {
              RoleId = reader.GetGuid(0);
            }

            
            

            Guid Id = Guid.NewGuid();
            Guid ApplicantId = Guid.NewGuid();

            string username = TextBox1.Text + "_" + TextBox2.Text;


            OleDbCommand cmd = new OleDbCommand(@"Insert Into Security_Logins (Id, Login, Password, Created_Date, Is_Locked, Is_Inactive, Email_Address, Phone_Number, Full_Name)
                                                        Values (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            
                cmd.Connection = connection;
                cmd.Parameters.AddWithValue("@Id", Id.ToString());
                cmd.Parameters.AddWithValue("@Login", username);
                cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Created_Date", DateTime.Now.ToString());
                cmd.Parameters.AddWithValue("@Is_Locked", "0");
                cmd.Parameters.AddWithValue("@Is_Inactive", "0");
                cmd.Parameters.AddWithValue("@Email_Address", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Phone_Number", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Full_Name", TextBox1.Text + " " + TextBox2.Text);
                
                cmd.ExecuteNonQuery();
                

                cmd.Parameters.Clear();
                cmd.CommandText = @"Insert Into Security_Logins_Roles (Id, Login, Role) Values (?,?,?)";
                cmd.Parameters.AddWithValue("@Id", Guid.NewGuid().ToString());
                cmd.Parameters.AddWithValue("@Login", Id.ToString());
                cmd.Parameters.AddWithValue("@Role", RoleId.ToString());

               
                cmd.ExecuteNonQuery();
                

                cmd.Parameters.Clear();
                cmd.CommandText = @"Insert Into Applicant_Profiles (Id, Login) Values (?,?)";
                cmd.Parameters.AddWithValue("@Id", ApplicantId.ToString());
                cmd.Parameters.AddWithValue("@Login", Id.ToString());

             
                cmd.ExecuteNonQuery();
                
            

            Session.Add("Id", Id.ToString());
            Session.Add("Username", username);
            Session.Add("Role", "Applicant");
            Session.Add("ApplicantId", ApplicantId);

            connection.Close();
            command.Dispose();
            cmd.Dispose();
            Response.Redirect("~/ApplicantHome.aspx");

       
    }
    }
}