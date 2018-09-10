<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CompanyJobs.ascx.cs" Inherits="CareerCloudASP.UserControls.CompanyJobs" %>
<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
<asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2">
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>


