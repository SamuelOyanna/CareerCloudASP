<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginHandler.ascx.cs" Inherits="CareerCloudASP.UserControls.LoginHandler" %>
 <asp:Label ID="Label3" AssociatedControlID="TextBox5" runat="server" Text="Enter Username: "></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="*" ControlToValidate="TextBox5" runat="server" ErrorMessage="Username is Required">    
    </asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="Label6" AssociatedControlID="TextBox3" runat="server" Text="Enter Password: "></asp:Label>
    <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Text="*" ControlToValidate="TextBox3" runat="server" ErrorMessage="Password is Required">    
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox3" ID="RegularExpressionValidator9" ValidationExpression = "^[\s\S]{5,20}$" runat="server" 
       Text="*" ErrorMessage="Password Must Not Be Less Than 5 Characters and more than 20."></asp:RegularExpressionValidator>
    <br />
    <br /> <br />
<asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="btn1Clicked" />

<asp:ValidationSummary ID="ValidationSummary1" runat="server"  />