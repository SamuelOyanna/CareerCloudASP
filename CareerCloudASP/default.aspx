<%@ Page Title="" Language="C#" MasterPageFile="~/CCBase.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CareerCloudASP._default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <so:LoginHandler runat="server" id="LoginHandler" />
      
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" Text="New User?"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Sign Up</asp:HyperLink>
</asp:Content>
