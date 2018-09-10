<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeBehind="ApplicantSignIn.aspx.cs" Inherits="CareerCloudASP.ApplicantSignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MContentPlaceHolder" runat="server">
    Applicant SIgn In
    <br /> <br />
     <asp:Label ID="Label1" runat="server" Text="Label">Enter Username :</asp:Label>   
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ControlToValidate="TextBox1"
        ErrorMessage="Username is Required"></asp:RequiredFieldValidator>

    <br />

    <asp:Label ID="Label2" runat="server" Text="Label">Enter Password :</asp:Label> 
    <asp:TextBox ID="TextBox2" runat="server" TextMode ="Password"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
        ControlToValidate="TextBox2"
        ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
<br /> <br />
<asp:Button ID="Button1" runat="server" Text="Sign In" />
   

</asp:Content>
