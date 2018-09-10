<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SignUp.ascx.cs" Inherits="CareerCloudASP.UserControls.SignUp" %>

<asp:Label ID="Label1" runat="server" Text="Choose an Option : "></asp:Label>    
<asp:RadioButton ID="RadioButton1" GroupName="Register" runat="server" Text="I'm an Applicant" />
<asp:RadioButton ID="RadioButton2" Enabled="false" GroupName="Register" runat="server" Text="I'm a Company" /><br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Kindly Select One of the Options"></asp:RequiredFieldValidator>
<br />


    <asp:Label ID="Label2" runat="server" AssociatedControlID="TextBox1" Text="Enter First Name: ">
    </asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="*" ControlToValidate="TextBox1" runat="server" ErrorMessage="First Name is Required">    
    </asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="Label3" runat="server" AssociatedControlID="TextBox2" Text="Enter Last Name: ">
    </asp:Label> <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="*" ControlToValidate="TextBox2" runat="server" ErrorMessage="Last Name is Required">    
    </asp:RequiredFieldValidator>
    <br />
    
    
    <asp:Label ID="Label4" AssociatedControlID="TextBox5" runat="server" Text="Enter Email: "></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="*" ControlToValidate="TextBox5" runat="server" ErrorMessage="Email is Required">    
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ControlToValidate="TextBox5" Text="*" ValidationExpression="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$" 
        ID="RegularExpressionValidator8" runat="server" ErrorMessage="Please Enter a Valid Email"></asp:RegularExpressionValidator>
    <br />

  <asp:Label ID="Label5" AssociatedControlID="TextBox3" runat="server" Text="Enter Phone Number: "></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="*" ControlToValidate="TextBox3" runat="server" ErrorMessage="Phone Number is Required">    
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ControlToValidate="TextBox3" Text="*" 
        ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Phone Number (###-###-####)" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
    <br />

   <asp:Label ID="Label6" AssociatedControlID="TextBox4" runat="server" Text="Enter Password: "></asp:Label>
    <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Text="*" ControlToValidate="TextBox4" runat="server" ErrorMessage="Password is Required">    
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox4" ID="RegularExpressionValidator9" ValidationExpression = "^[\s\S]{5,20}$" runat="server" 
       Text="*" ErrorMessage="Password Must Not Be Less Than 5 Characters and more than 20."></asp:RegularExpressionValidator>
    <br />

   <asp:Label ID="Label7" AssociatedControlID="TextBox6" runat="server" Text="Confirm Password: "></asp:Label>
    <asp:TextBox ID="TextBox6" TextMode="Password" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Text="*" ControlToValidate="TextBox6" runat="server" ErrorMessage="Confirm Password is Required">    
    </asp:RequiredFieldValidator>

<asp:CompareValidator ControlToValidate="TextBox6" ControlToCompare="Textbox4" ID="CompareValidator1" runat="server" ErrorMessage="Both Passwords Must be Equal"></asp:CompareValidator>

  <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    <br />
&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" />