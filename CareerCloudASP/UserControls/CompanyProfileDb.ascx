<asp:CheckBox ID="CheckBox1" runat="server" /><%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CompanyProfileDb.ascx.cs" Inherits="CareerCloudASP.ReusableComponents.CompanyProfileDb" %>

<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceCompanyProfile">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Registration_Date" HeaderText="Registration_Date" SortExpression="Registration_Date" />
        <asp:BoundField DataField="Company_Website" HeaderText="Company_Website" SortExpression="Company_Website" />
        <asp:BoundField DataField="Contact_Phone" HeaderText="Contact_Phone" SortExpression="Contact_Phone" />
        <asp:BoundField DataField="Contact_Name" HeaderText="Contact_Name" SortExpression="Contact_Name" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceCompanyProfile" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" ProviderName='<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString.ProviderName %>'
    DeleteCommand="DELETE FROM [Company_Profiles] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Company_Profiles] ([Registration_Date], [Company_Website], [Contact_Phone], [Contact_Name], [Id]) VALUES (@Registration_Date, @Company_Website, @Contact_Phone, @Contact_Name, @Id)" SelectCommand="SELECT [Registration_Date], [Company_Website], [Contact_Phone], [Contact_Name], [Id] FROM [Company_Profiles]" UpdateCommand="UPDATE [Company_Profiles] SET [Registration_Date] = @Registration_Date, [Company_Website] = @Company_Website, [Contact_Phone] = @Contact_Phone, [Contact_Name] = @Contact_Name WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Object" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter DbType="DateTime2" Name="Registration_Date" />
        <asp:Parameter Name="Company_Website" Type="String" />
        <asp:Parameter Name="Contact_Phone" Type="String" />
        <asp:Parameter Name="Contact_Name" Type="String" />
        <asp:Parameter Name="Id" Type="Object" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter DbType="DateTime2" Name="Registration_Date" />
        <asp:Parameter Name="Company_Website" Type="String" />
        <asp:Parameter Name="Contact_Phone" Type="String" />
        <asp:Parameter Name="Contact_Name" Type="String" />
        <asp:Parameter Name="Id" Type="Object" />
    </UpdateParameters>
</asp:SqlDataSource>

<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource11" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Registration_Date" HeaderText="Registration_Date" SortExpression="Registration_Date" />
        <asp:BoundField DataField="Company_Website" HeaderText="Company_Website" SortExpression="Company_Website" />
        <asp:BoundField DataField="Contact_Phone" HeaderText="Contact_Phone" SortExpression="Contact_Phone" />
        <asp:BoundField DataField="Contact_Name" HeaderText="Contact_Name" SortExpression="Contact_Name" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString %>" ProviderName="<%$ ConnectionStrings:JOB_PORTAL_DBConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [Registration_Date], [Company_Website], [Contact_Phone], [Contact_Name] FROM [Company_Profiles] WHERE ([Id] = ?)">
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Object" />
    </SelectParameters>
</asp:SqlDataSource>


