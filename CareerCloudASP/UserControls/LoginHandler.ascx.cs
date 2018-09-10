using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerCloudASP.UserControls
{
    public partial class LoginHandler : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1Clicked(object sender, EventArgs e)
        {
            ClientScriptManager cs = Page.ClientScript;
            string username = TextBox5.Text;
            Guid Id = Guid.Empty;
            string password = null;
            string role = null;
            string applicantId = null;

            OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["JOB_PORTAL_DBConnectionString"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand(@"Select sl.Id, sl.Password, sr.Role, ap.Id
                                                        From dbo.Security_Logins sl join dbo.Security_Logins_Roles slr
                                                        on sl.id = slr.login
                                                        join dbo.Security_roles sr on slr.Role = sr.Id
                                                        join dbo.Applicant_Profiles ap on sl.Id = ap.Login
                                                        Where sl.login = '" + username + "'");
            
                conn.Open();
                cmd.Connection = conn;
                OleDbDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Id = reader.GetGuid(0);
                password = reader.GetString(1);
                    role = reader.GetString(2);
                    applicantId = reader.GetGuid(3).ToString();
                }



            if (password == null)
            {
                cs.RegisterClientScriptBlock(this.GetType(), "ButtonClickScript", "<script type=\"text/javascript\"> alert('User does not exist')</script>", false);

            }

            if (TextBox3.Text != password)
            {
                cs.RegisterClientScriptBlock(this.GetType(), "ButtonClickScript", "<script type=\"text/javascript\"> alert('Cannot Login. Password is incorrect')</script>", false);
                
            }

            Session.Add("Id", Id.ToString());
            Session.Add("Username", username);
            Session.Add("Role", role);
            Session.Add("ApplicantId", applicantId);

            Response.Redirect("~/ApplicantHome.aspx");
        }
    }
}

