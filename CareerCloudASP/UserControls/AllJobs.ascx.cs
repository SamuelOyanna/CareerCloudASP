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
    public partial class AllJobs : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session.Count == 0)
                {
                    Response.Redirect("~/SignIn.aspx");
                }
                
            }

            loadApplicant();

            HiddenField1.Value = Session["ApplicantId"].ToString();
        }

        private void loadApplicant()
        {
            Guid applicantId = Guid.Empty;
            OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["JOB_PORTAL_DBConnectionString"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand(@"Select ap.Id From dbo.Security_Logins sl join dbo.Applicant_Profiles ap on sl.id = ap.Login
                                                             Where sl.Id = '" + Session["Id"].ToString() + "'");
            {
                conn.Open();
                cmd.Connection = conn;
                OleDbDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                   
                    applicantId = reader.GetGuid(0);
                }
                conn.Close();
            }

            Session.Add("ApplicantId", applicantId.ToString());
        }
    

        protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
                 if (e.CommandName == "ApplyJob")
            {
                Guid Id = Guid.NewGuid();

                string jobId = GridView.Rows[Convert.ToInt32(e.CommandArgument)].Cells[4].Text.Trim();


                using (OleDbConnection conn = new OleDbConnection(ConfigurationManager.ConnectionStrings["JOB_PORTAL_DBConnectionString"].ConnectionString))
                using (OleDbCommand cmd = new OleDbCommand(@"Insert Into Applicant_Job_Applications (Id, Applicant, Job, Application_Date) Values (?, ?, ?, ?)"))
                {
                    cmd.Connection = conn;
                    cmd.Parameters.AddWithValue("@Id", Id.ToString());
                    cmd.Parameters.AddWithValue("@Applicant", Session["ApplicantId"].ToString());
                    cmd.Parameters.AddWithValue("@Job", jobId);
                    cmd.Parameters.AddWithValue("@Application_Date", DateTime.Now.ToString());

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            


            ClientScriptManager cs = Page.ClientScript;
                cs.RegisterClientScriptBlock(this.GetType(), "ButtonClickScript", "<script type=\"text/javascript\"> alert('Job Applied Succesfully!')</script>", false);
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void GridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

     
    }
}






  