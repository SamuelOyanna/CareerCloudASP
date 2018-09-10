<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeBehind="ApplicantRegister.aspx.cs" Inherits="CareerCloudASP.ApplicantRegister" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Applicant Register</h2><br />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MContentPlaceHolder" runat="server">
    

    <asp:Label ID="Label1" runat="server" AssociatedControlID="TextBox1" Text="Enter First Name: ">
    </asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="*" ControlToValidate="TextBox1" runat="server" ErrorMessage="First Name is Required">    
    </asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="Label2" runat="server" AssociatedControlID="TextBox2" Text="Enter Last Name: ">
    </asp:Label> <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="*" ControlToValidate="TextBox2" runat="server" ErrorMessage="Last Name is Required">    
    </asp:RequiredFieldValidator>
    <br />
    
    
    <asp:Label ID="Label3" AssociatedControlID="TextBox5" runat="server" Text="Enter Email: "></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="*" ControlToValidate="TextBox5" runat="server" ErrorMessage="Email is Required">    
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ControlToValidate="TextBox5" Text="*" ValidationExpression="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$" 
        ID="RegularExpressionValidator8" runat="server" ErrorMessage="Please Enter a Valid Email"></asp:RegularExpressionValidator>
    <br />

    <asp:Label ID="Label6" AssociatedControlID="TextBox3" runat="server" Text="Enter Password: "></asp:Label>
    <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Text="*" ControlToValidate="TextBox3" runat="server" ErrorMessage="Password is Required">    
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox3" ID="RegularExpressionValidator9" ValidationExpression = "^[\s\S]{5,20}$" runat="server" 
       Text="*" ErrorMessage="Password Must Not Be Less Than 5 Characters and more than 20."></asp:RegularExpressionValidator>
    <br />

    <asp:Label AssociatedControlID="TextBox8" ID="Label5" runat="server" Text="Enter Current Salary (per annum): "></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Text="*" ControlToValidate="TextBox8" runat="server" ErrorMessage="Current Salary is Required">    
        </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ControlToValidate="TextBox8" Text="*" ValidationExpression="^[1-9]\d*$" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Salary"></asp:RegularExpressionValidator>
    <br />

    <asp:Label ID="Label4" AssociatedControlID="TextBox9" runat="server" Text="Enter Current Rate: "></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Text="*" ControlToValidate="TextBox9" runat="server" ErrorMessage="Current Rate is Required">    
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ControlToValidate="TextBox8" Text="*" ValidationExpression="^[1-9]\d*(\.\d+)?$" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter a Valid Rate"></asp:RegularExpressionValidator>
   <br />

    <asp:Label ID="Label8" AssociatedControlID="TextBox6" runat="server" Text="Address: "></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Text="*" ControlToValidate="TextBox6" runat="server" ErrorMessage="Address is Required">    
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "TextBox6" ID="RegularExpressionValidator3" ValidationExpression = "^[\s\S]{5,}$" runat="server" 
       Text="*" ErrorMessage="Minimum 5 characters required."></asp:RegularExpressionValidator>
    <br />

    <asp:Label ID="Label9" AssociatedControlID="TextBox7" runat="server" Text="City/Town: "></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Text="*" ControlToValidate="TextBox7" runat="server" ErrorMessage="City is Required">    
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator Display = "Dynamic" Text="*" ControlToValidate = "TextBox7" ID="RegularExpressionValidator4" ValidationExpression = "^[\s\S]{5,}$" runat="server" 
        ErrorMessage="Minimum 2 characters required."></asp:RegularExpressionValidator>
    <br />

    <asp:Label ID="Label10" AssociatedControlID="TextBox10" runat="server" Text="Province: "></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="TextBox10" Text="*" runat="server" ErrorMessage="Province is Required">    
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator Display = "Dynamic" Text="*" ControlToValidate = "TextBox10" ID="RegularExpressionValidator5" ValidationExpression = "^[\s\S]{2}$" runat="server" 
        ErrorMessage="2 characters required for your province code"></asp:RegularExpressionValidator>
    <br />

    <asp:Label ID="Label11" AssociatedControlID="TextBox11" runat="server" Text="Postcode: "></asp:Label>
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" Text="*" ControlToValidate="TextBox11" runat="server" ErrorMessage="Postcode is Required">    
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator Display = "Dynamic" Text="*" ControlToValidate = "TextBox11" ID="RegularExpressionValidator6" ValidationExpression = "^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$" runat="server" 
        ErrorMessage="Please Enter Valid Canadian PostCode"></asp:RegularExpressionValidator>
    <br />

      <asp:Label ID="Label7" AssociatedControlID="TextBox4" runat="server" Text="Resume: "></asp:Label>
    <asp:TextBox TextMode="multiline" Columns="60" Rows="6" ID="TextBox4" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="*" ControlToValidate="TextBox4" runat="server" ErrorMessage="Your Resume is Required">    
    </asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator Display = "Dynamic" Text="*" ControlToValidate = "TextBox4" ID="RegularExpressionValidator7" ValidationExpression = "^[\s\S]{2,2000}$" runat="server" 
        ErrorMessage="Please Enter Your Resume"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    <br />
&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" />

</asp:Content>

