<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="barberapplication.index" %>

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
        
  <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4  bg-white border-bottom box-shadow">
    <h5 class="my-0 mr-md-auto font-weight-normal text-danger">Barber Services Finder</h5>
    <nav class="my-2 my-md-0 mr-md-3">

    </nav>
    <a class="btn btn-outline-primary" href="adminlogin.aspx">Login</a>&nbsp;
    <a class="btn btn-outline-primary" href="adminsignup.aspx">Signup</a>
  </div>


    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="first-slide" src="image/1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <p><a class="btn btn-lg btn-primary" href="signup.aspx" role="button">Sign up</a></p>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img class="second-slide" src="image/2.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <p><a class="btn btn-lg btn-primary" href="signup.aspx" role="button">Sign up</a></p>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img class="third-slide" src="image/3.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <p><a class="btn btn-lg btn-primary" href="signup.aspx" role="button">Sign up</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

        <div class="album py-2 bg-light">

  <h1 class="data1">Barber Services Finder</h1>

           


	<div class="container section">
		<div class="row">
			<div class="col-md-12">
				<h2 class="section-head">We are Providing Multiple Services</h2>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="service-box">
					<img src="image/ser1.jpg" class="rounded-circle mb-2" alt="" style=" width:70px; height:70px;">
					<h3>Hairstylist/Makeup artist</h3>
					<p> 
She is expert in her work
Offers multiple services and passionate about her work
Services: 
Makeups
Hairstyles of all Kinds</p>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="service-box">
					<img src="image/ser2.jpg" class="rounded-circle mb-2" alt="" style=" width:70px; height:70px;">
					<h3>Professional services provider of Facial</h3>
					<p>Has been working for 5 years professionally expert in her work. 
1. hydra Facial
2. Whitening facial
3. Herbal facial
4. MANICURE AND PEDICURE</p>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="service-box">
					<img src="image/ser3.jpg" class="rounded-circle mb-2" alt="" style=" width:70px; height:70px;">
					<h3>MakeUp artist</h3>
					<p> has been working for 6 years as a professional makeup artist and expert in her work 
                        Bridal makeover
Model Makeover
Party makeover
Casual makeover</p>
				</div>
			</div>
		</div>
	</div>

	<div id="testimonials" class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="section-head text-white">Testimonials</h2>
				</div>
				<div class="col-md-6">
					<div class="testimonial">
						<p>We wouldn't dream of going somewhere else and love that we have this level of barber close to home.</p>
						<img src="image/sana.jpg" alt="" style=" width:70px; height:70px;">
						<div class="author">Sana</div>
						
					</div>
				</div>
				<div class="col-md-6">
					<div class="testimonial">
						<p>I enjoy The services because the staff truly want to get to know you as a person and they treat you like family. I'll always come back because of this, plus the haircuts are on point!</p>
						<img src="image/ayesha.jpg" alt="" style=" width:70px; height:70px;">
						<div class="author">Ayesha</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>


 

        
	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6">copyright@2023 Barber Serices Finder.</div>
				<div class="col-md-6">
					<ul id="social-icons" class="float-md-right">
						<li><a href="" class="fa fa-facebook-square"></a></li>
						<li><a href="" class="fa fa-twitter-square"></a></li>
						<li><a href="" class="fa fa-linkedin-square"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
            </div>


    </form>
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    

    <style media="screen">
    img{
      vertical-align: middle;
      border-style: none;
      height: 60vh;
      width: 100%;
      object-fit: cover;
    }

    .data1{
      text-align: center;
      text-transform: uppercase;
      color: cornflowerblue;
      margin-top: 8px;
      font-family: ui-sans-serif;
    }
    td{
      vertical-align: center;
    }

    .jumbotron {
      padding-top: var(--jumbotron-padding-y);
      padding-bottom: var(--jumbotron-padding-y);
      margin-bottom: 0;
      background-color: #fff;
    }
    @media (min-width: 768px) {
      .jumbotron {
        padding-top: calc(var(--jumbotron-padding-y) * 2);
        padding-bottom: calc(var(--jumbotron-padding-y) * 2);
      }
    }

    .jumbotron p:last-child {
      margin-bottom: 0;
    }

    .jumbotron-heading {
      font-weight: 300;
    }

    .jumbotron .container {
      max-width: 40rem;
    }

    .container {
      max-width: 70%;
    }
    </style>

</body>
</html>
