<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="managebarber.aspx.cs" Inherits="barberapplication.managebarber" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
  
  <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <nav class="navbar navbar-expand-lg navbar-dark bg-info">
    <a class="navbar-brand" href="admindashboard.aspx">Admin Dashboard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  mr-auto">
        <li class="nav-item ">
          <a class="nav-link " href="admindashboard.aspx">Home</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link " href="managebarber.aspx"> Barber </a>
        </li>

        <li class="nav-item">
          <a class="nav-link " href="">Customer</a>
        </li>

      </ul>
     <div class="form-inline my-2 my-lg-0">
       <a href="index.aspx" class="btn btn-danger my-2 my-sm-0"> LogOut ! </a>
      </div>
    </div>
  </nav>

          <br />

        <h1>Manage Barbers</h1>
          <br />
          <br />

        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField  ShowDeleteButton="True"  ShowEditButton="True" ControlStyle-CssClass="btn btn-primary" >
<ControlStyle CssClass="btn btn-primary"></ControlStyle>
                </asp:CommandField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:babberwebConnectionString %>" DeleteCommand="DELETE FROM [barber] WHERE [Id] = @Id" InsertCommand="INSERT INTO [barber] ([name], [email], [password], [phone], [country], [city], [location], [status], [date]) VALUES (@name, @email, @password, @phone, @country, @city, @location, @status, @date)" ProviderName="<%$ ConnectionStrings:babberwebConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [barber]" UpdateCommand="UPDATE [barber] SET [name] = @name, [email] = @email, [password] = @password, [phone] = @phone, [country] = @country, [city] = @city, [location] = @location, [status] = @status, [date] = @date WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="location" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>


    
<style media="screen">
h1{
  text-align: center;
  text-transform: uppercase;
  color: cornflowerblue;
  margin-top: 8px;
  font-family: ui-sans-serif;
}

</style>

</body>
</html>
