using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerCloudASP.UserControls
{
    public partial class CompanyProfile : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DetailsView1.ChangeMode(DetailsViewMode.Insert);
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            DetailsView2.ChangeMode(DetailsViewMode.Insert);
        }
    }
}