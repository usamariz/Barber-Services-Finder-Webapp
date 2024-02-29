<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindashboard.aspx.cs" Inherits="barberapplication.admindashboard" %>

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
        <li class="nav-item  active">
          <a class="nav-link " href="admindashboard.aspx">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="managebarber.aspx">Barber </a>
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

    </form>
</body>
</html>
