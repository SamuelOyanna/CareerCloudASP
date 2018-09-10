<%@ Page Title="" Language="C#" MasterPageFile="~/CCBase.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CareerCloudASP.Register" %>

<%@ Register Src="~/UserControls/SignUp.ascx" TagPrefix="so" TagName="SignUp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeadingContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="SideNavPlaceHolder" runat="server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <so:SignUp runat="server" id="SignUp" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
