<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customersignup.aspx.cs" Inherits="barberapplication.customersignup" %>

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
    <a class="navbar-brand" href="adminsignup.aspx">Signup Panel</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  mr-auto">
        <li class="nav-item">
          <a class="nav-link " href="adminsignup.aspx">Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="barbersignup.aspx">Barber </a>
        </li>

        <li class="nav-item  active">
          <a class="nav-link " href="customersignup.aspx">Customer</a>
        </li>

      </ul>
      
    </div>
  </nav>
                          <h1> Customer Signup Panel</h1>
<div class="col-md-12">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="jumbotron jumbotron-fluid">
        <div class="container">
        
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Label"> Enter User Name</asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required ></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="* Enter Only Alphabet text" ControlToValidate="TextBox1" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="#990000"></asp:RegularExpressionValidator>
             
                </div>
              </div>

              <div class="col-md-6">
                <div class="form-group">
               
                    <asp:Label ID="Label2" runat="server" Text="Label"> Enter Email Address</asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"  CssClass="form-control" required ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Enter Valid Email Address" ControlToValidate="TextBox2" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
                
              <div class="col-md-12">
                <div class="form-group">
                     <asp:Button ID="Button1" runat="server" CssClass="btn btn-block btn-primary" Text="Submit" OnClick="Button1_Click" />
                    </div>
                      <div class="col-md-12 text-center">
        
         <hr  /> 
                      
            </div>
    
       <div class="form-group d-flex justify-content-center">
     
          if you have an acount?<a href="adminlogin.aspx"  class="">Login </a>
          

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
