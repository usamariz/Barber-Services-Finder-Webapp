<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerupdateprofile.aspx.cs" Inherits="barberapplication.customerupdateprofile" %>

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
    <a class="navbar-brand" href="customerdashboardd.aspx">Customer Dashboard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  mr-auto">
        <li class="nav-item ">
          <a class="nav-link " href="customerdashboardd.aspx"><i class="fa fa-home m-1"></i> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href=""><i class="fa fa-user m-1"></i> Barber </a>
        </li>

        <li class="nav-item">
          <a class="nav-link active " href="customerupdateprofile.aspx"><i class="fa fa-user m-1"></i> Profile</a>
        </li>

      </ul>
     <div class="form-inline my-2 my-lg-0">
       <a href="index.aspx" class="btn btn-danger my-2 my-sm-0"> LogOut ! </a>
      </div>
    </div>
  </nav>

        
                                               <h1> Customer Profile Update</h1>
<div class="col-md-12">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="jumbotron jumbotron-fluid">
        <div class="container">
        
            <div class="row">
              <div class="col-md-12"> 
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Label"> Email is</asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  ReadOnly="True" ></asp:TextBox>
                     
             
                </div>
              </div>

              <div class="col-md-12">
                <div class="form-group">
               
                    <asp:Label ID="Label2" runat="server" Text="Label"> Enter Customer Name</asp:Label> 
                    <asp:TextBox ID="TextBox2" runat="server"  CssClass="form-control" required ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="* Enter Only Alphabet text" ControlToValidate="TextBox2" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="#990000"></asp:RegularExpressionValidator>
               </div>
              </div>


              <div class="col-md-6">
                <div class="form-group">
                
                    <asp:Label ID="Label3" runat="server" Text="Label"> Enter Password</asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" required ></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* Enter Password Combination of Capital &amp; Small Allphabet, Numeric and Special Characters" ControlToValidate="TextBox3" ValidationExpression="(?=.*\d)(?=.*[!@#$%^&amp;*()])(?=.*[a-z])(?=.*[A-Z]).{8,16}" ForeColor="#990000"></asp:RegularExpressionValidator>
             
                </div>
              </div>


              <div class="col-md-6">
                <div class="form-group">
               
                    <asp:Label ID="Label4" runat="server" Text="Label"> Enter Phone Number</asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" required ></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="* Enter Only Numeric Values" ControlToValidate="TextBox4" ValidationExpression="\d+" ForeColor="#990000"></asp:RegularExpressionValidator>
             
                </div>
              </div>

              <div class="col-md-6">
                <div class="form-group">
                
                
                    <asp:Label ID="Label5" runat="server" Text="Label"> Enter City</asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" required ></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="* Enter Only Alphabet text" ControlToValidate="TextBox5" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="#990000"></asp:RegularExpressionValidator>
             
                   </div>
              </div>

                <div class="col-md-6">
                  <div class="form-group">
  
  
                       <asp:Label ID="Label6" runat="server" Text="Label"> Select Country</asp:Label>
                       <asp:TextBox ID="TextBox6" runat="server" class="form-control" required ></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="* Enter Only Alphabet text" ControlToValidate="TextBox6" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="#990000"></asp:RegularExpressionValidator>
             
  
                      </div>
                   </div>


              <div class="col-md-12">
                <div class="form-group">
                   <asp:Label ID="Label7" runat="server" Text="Label"> Address/Location</asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" class="form-control" required Height="120px" Width="100%" TextMode="MultiLine" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="* Required" ControlToValidate="TextBox7" ValidationExpression="[A-Za-z\s0-9]*$" ForeColor="#990000"></asp:RegularExpressionValidator>
             

                </div>
              </div>
                
              <div class="col-md-12 ">
                <div class="form-group d-flex justify-content-center">
                     <asp:Button ID="Button1" runat="server" CssClass="btn col-4 btn-primary" Text="Update" OnClick="Button1_Click"  />
                    </div>
                  
              </div>

            </div>
         
        </div>
      </div>
    </div>
  </div>
</div>




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
