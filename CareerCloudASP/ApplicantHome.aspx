<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeBehind="ApplicantHome.aspx.cs" Inherits="CareerCloudASP.ApplicantHome" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h2>Applicant Home</h2><br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MContentPlaceHolder" runat="server">
    <so:AllJobs runat="server" id="AllJobs" />
</asp:Content>




