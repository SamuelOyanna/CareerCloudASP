<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AllJobs.ascx.cs" Inherits="CareerCloudASP.UserControls.AllJobs" %>
  <asp:GridView ID="GridView" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" 
            AutoGenerateColumns="False" style="margin-right: 22px" Width="1244px" OnRowCommand="GridView_RowCommand" OnSelectedIndexChanged="GridView_SelectedIndexChanged">
            <Columns>
                
                <asp:BoundField DataField="Company Name" HeaderText="Company Name" SortExpression="Company Name" ReadOnly="True" />
                <asp:BoundField DataField="Job Name" HeaderText="Job Name" SortExpression="Job Name" ReadOnly="True" />
                <asp:BoundField DataField="Job Description" HeaderText="Job Description" SortExpression="Job Description" ReadOnly="True" />
                <asp:BoundField DataField="Date Created" HeaderText="Date Created" ReadOnly="True" SortExpression="Date Created" />
                <asp:BoundField DataField="Job Id" HeaderText="Job Id" SortExpression="Job Id" ReadOnly="True" Visible="False" />
                <asp:ButtonField AccessibleHeaderText="Apply" ButtonType="Button" CommandName="ApplyJob" InsertVisible="False" Text="Apply For Job"  />
                
            </Columns>
        </asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>' ProviderName='<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString.ProviderName %>' 
        
     SelectCommand="select cd.Company_Name [Company Name], 
		                            cjd.Job_Name [Job Name], 
		                            cjd.Job_Descriptions [Job Description], 
		                            CAST(cj.Profile_Created AS DATE) [Date Created],
		                            cj.Id [Job Id]
                            from Company_Descriptions cd join Company_Jobs cj on cd.Company = cj.Company
                            join Company_Jobs_Descriptions cjd on cj.Id = cjd.Job
                            where cj.Is_Company_Hidden = 0
                            and cj.Is_Inactive = 0 
                            and cd.LanguageID = 'EN'
                            and cjd.Job not in (select job from dbo.Applicant_Job_Applications where applicant = ?);">
     <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" PropertyName="Value" Name="ApplicantId" Type="String" />
          </SelectParameters>
</asp:SqlDataSource>

<asp:HiddenField ID="HiddenField1" runat="server" />









