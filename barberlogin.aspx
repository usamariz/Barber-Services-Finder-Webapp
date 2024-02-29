<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="barberlogin.aspx.cs" Inherits="barberapplication.barberlogin" %>

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
               
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="adminlogin.aspx">Login Panel</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  mr-auto">
        <li class="nav-item ">
          <a class="nav-link text-warning" href="adminlogin.aspx">Admin</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="barberlogin.aspx">Barber </a>
        </li>

        <li class="nav-item">
          <a class="nav-link text-warning" href="customerlogin.aspx">Customer</a>
        </li>

      </ul>
      
    </div>
  </nav>
   
        <h1>Barber Login</h1>
<div class="col-md-12">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="jumbotron jumbotron-fluid">
        <div class="container">
            
              <div class="col-md-12">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Label">Enter Email Address</asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" required></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Enter Valid Email" ControlToValidate="TextBox1" ForeColor="Maroon" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
              </div>

            


              <div class="col-md-12">
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Label">Enter Password</asp:Label> 
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" required MaxLength="16"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Enter Password Combination of Capital &amp; Small Allphabet, Numeric and Special Characters" ControlToValidate="TextBox2" ForeColor="Maroon" ValidationExpression="(?=.*\d)(?=.*[!@#$%^&*()])(?=.*[a-z])(?=.*[A-Z]).{8,16}"></asp:RegularExpressionValidator>
                </div>
              </div>




             
              <div class="col-md-12">
                <div class="form-group d-flex justify-content-center ">
                    <asp:Button ID="Button1" runat="server" Text="Login"  class="btn btn-primary btn-block" OnClick="Button1_Click" /> 
                    
                    </div>
                  <div class="col-md-12">
                  <a href="" >Forgot Password ?</a>
                       </div>

                 
                  <div class="col-md-12 text-center">
                      
                       <hr  /> 
                                    
                          </div>
                  
                     <div class="form-group d-flex justify-content-center">
                   
                         <a href="adminsignup.aspx"  class="btn btn-success col-md-4 mt-3">Signup </a>
                        

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