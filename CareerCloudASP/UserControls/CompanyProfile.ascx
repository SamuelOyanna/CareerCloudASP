<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CompanyProfile.ascx.cs" Inherits="CareerCloudASP.UserControls.CompanyProfile" %>

<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceCompanyProfile">
    <Columns>
        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Registration_Date" HeaderText="Registration_Date" SortExpression="Registration_Date" />
        <asp:BoundField DataField="Company_Website" HeaderText="Company_Website" SortExpression="Company_Website" />
        <asp:BoundField DataField="Contact_Name" HeaderText="Contact_Name" SortExpression="Contact_Name" />
        <asp:BoundField DataField="Contact_Phone" HeaderText="Contact_Phone" SortExpression="Contact_Phone" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceCompanyProfile" runat="server" ConnectionString="Data Source=LAPTOP-ESAI87SA\SQLEXPRESS;Initial Catalog=JOB_PORTAL_DB;Integrated Security=True" DeleteCommand="DELETE FROM [Company_Profiles] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Company_Profiles] ([Id], [Registration_Date], [Company_Website], [Contact_Name], [Contact_Phone]) VALUES (@Id, @Registration_Date, @Company_Website, @Contact_Name, @Contact_Phone)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [Registration_Date], [Company_Website], [Contact_Name], [Contact_Phone] FROM [Company_Profiles]" UpdateCommand="UPDATE [Company_Profiles] SET [Registration_Date] = @Registration_Date, [Company_Website] = @Company_Website, [Contact_Name] = @Contact_Name, [Contact_Phone] = @Contact_Phone WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Object" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Object" />
        <asp:Parameter DbType="DateTime2" Name="Registration_Date" />
        <asp:Parameter Name="Company_Website" Type="String" />
        <asp:Parameter Name="Contact_Name" Type="String" />
        <asp:Parameter Name="Contact_Phone" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter DbType="DateTime2" Name="Registration_Date" />
        <asp:Parameter Name="Company_Website" Type="String" />
        <asp:Parameter Name="Contact_Name" Type="String" />
        <asp:Parameter Name="Contact_Phone" Type="String" />
        <asp:Parameter Name="Id" Type="Object" />
    </UpdateParameters>
</asp:SqlDataSource>

<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Registration_Date" HeaderText="Registration_Date" SortExpression="Registration_Date" />
        <asp:BoundField DataField="Contact_Phone" HeaderText="Contact_Phone" SortExpression="Contact_Phone" />
        <asp:BoundField DataField="Company_Website" HeaderText="Company_Website" SortExpression="Company_Website" />
        <asp:BoundField DataField="Contact_Name" HeaderText="Contact_Name" SortExpression="Contact_Name" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-ESAI87SA\SQLEXPRESS;Initial Catalog=JOB_PORTAL_DB;Integrated Security=True"  
    DeleteCommand="DELETE FROM [Company_Profiles] WHERE [Id] = @Id" 
    InsertCommand="INSERT INTO [Company_Profiles] ([Registration_Date], [Contact_Phone], [Company_Website], [Contact_Name]) VALUES (@Registration_Date, @Contact_Phone, @Company_Website, @Contact_Name)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [Registration_Date], [Contact_Phone], [Company_Website], [Contact_Name] FROM [Company_Profiles] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Company_Profiles] SET [Registration_Date] = @Registration_Date, [Contact_Phone] = @Contact_Phone, [Company_Website] = @Company_Website, [Contact_Name] = @Contact_Name WHERE [Id] = @Id" OnInserted="SqlDataSource1_Inserted" OnSelecting="SqlDataSource1_Selecting">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Object" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter DbType="DateTime2" Name="Registration_Date" />
        <asp:Parameter Name="Contact_Phone" Type="String" />
        <asp:Parameter Name="Company_Website" Type="String" />
        <asp:Parameter Name="Contact_Name" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Object" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter DbType="DateTime2" Name="Registration_Date" />
        <asp:Parameter Name="Contact_Phone" Type="String" />
        <asp:Parameter Name="Company_Website" Type="String" />
        <asp:Parameter Name="Contact_Name" Type="String" />
        <asp:Parameter Name="Id" Type="Object" />
    </UpdateParameters>
</asp:SqlDataSource>


<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">New Company</asp:LinkButton>





<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceCompanyJob">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
        <asp:BoundField DataField="Profile_Created" HeaderText="Profile_Created" SortExpression="Profile_Created" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceCompanyJob" runat="server" ConnectionString="Data Source=LAPTOP-ESAI87SA\SQLEXPRESS;Initial Catalog=JOB_PORTAL_DB;Integrated Security=True" 
    ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [Company], [Profile_Created] FROM [Company_Jobs] WHERE (([Company] = @Company) AND ([Company] = @Company2))">
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="Company" PropertyName="SelectedValue" Type="Object" />
        <asp:ControlParameter ControlID="DetailsView1" Name="Company2" PropertyName="SelectedValue" Type="Object" />
    </SelectParameters>
</asp:SqlDataSource>


<asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" DataSourceID="SqlDataSourceNewJob" AutoGenerateRows="False" DataKeyNames="Id">
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
        <asp:BoundField DataField="Profile_Created" HeaderText="Profile_Created" SortExpression="Profile_Created" />
    </Fields>
</asp:DetailsView>


<asp:SqlDataSource ID="SqlDataSourceNewJob" runat="server" ConnectionString="Data Source=LAPTOP-ESAI87SA\SQLEXPRESS;Initial Catalog=JOB_PORTAL_DB;Integrated Security=True" DeleteCommand="DELETE FROM [Company_Jobs] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Company_Jobs] ([Id], [Company], [Profile_Created]) VALUES (@Id, @Company, @Profile_Created)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [Company], [Profile_Created] FROM [Company_Jobs] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Company_Jobs] SET [Company] = @Company, [Profile_Created] = @Profile_Created WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Object" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Object" />
        <asp:Parameter Name="Company" Type="Object" />
        <asp:Parameter DbType="DateTime2" Name="Profile_Created" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView2" Name="Id" PropertyName="SelectedValue" Type="Object" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Company" Type="Object" />
        <asp:Parameter DbType="DateTime2" Name="Profile_Created" />
        <asp:Parameter Name="Id" Type="Object" />
    </UpdateParameters>
</asp:SqlDataSource>


<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">New Job</asp:LinkButton>



