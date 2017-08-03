<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    #login-dp{
      min-width: 250px;
      padding: 14px 14px 0;
      overflow:hidden;
      background-color:white;
    }
    #login-dp .help-block{
      font-size:12px
    }
    #login-dp .bottom{
      background-color:white;
      border-top:1px solid #ddd;
      clear:both;
      padding:14px;
    }

    #login-dp .social-buttons a{
      width: 49%;
    }
    #login-dp .form-group {
      margin-bottom: 10px;
    }

    @media(max-width:768px){
      #login-dp{
        background-color: inherit;
        color: #fff;
      }
      #login-dp .bottom{
        background-color: inherit;
        border-top:0 none;
      }
    }
  </style>
</head>
<body style="background: #f5f5f5;padding-top: 50px;">
<div class="container-fluid" >
<nav class="navbar navbar-inverse navbar-fixed-top" style="background: #011635;">


    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" style="color: white" href="#"></a>
    </div>

    <div class="collapse navbar-collapse" id="myNavbar" >
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" style="color: white;padding-right: 35px" href="#"><span class="glyphicon glyphicon-user"></span><span class="caret"></span> <b>Login</b></a>
        <ul id="login-dp" class="dropdown-menu" style="padding-right: 20px">
          <li>
            <div class="row">
              <div class="col-md-12">
                <h3 style="font-family: Cambria">Login</h3>
                <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                  <div class="form-group">
                    <label class="sr-only" for="username">Username</label>
                    <input type="text" class="form-control" id="username" placeholder="Username" required onblur="checkUsername()">
                  </div>
                  <div class="form-group">
                    <label class="sr-only" for="password">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Password" required>
                    <div class="help-block text-right"><a href="">Forget the password ?</a></div>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block" style="background:#011635 ">Sign in</button>
                  </div>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox"> keep me logged-in
                    </label>
                  </div>
                </form>
              </div>
              <div class="bottom text-center">
                New here ? <a href="#"><b>Join Us</b></a>
              </div>
            </div>
          </li>
        </ul>
      </li>



      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a style="color: white" href="#"><span class="glyphicon glyphicon-home"></span>&nbsp;<b>Home</b></a></li>
      </ul>

      <ul class="nav navbar-nav navbar-left" >
        <li class="dropdown"><a style="color: white" class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-car"  aria-hidden="true"></i>&nbsp;<b>Vehicles</b> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#section41">Buy Vehicle</a></li>
            <li><a href="#section42">Vehicle Service</a></li>
          </ul>
        </li>

      </ul>



    <form class="navbar-form navbar-right">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    </div>
</nav>
  <br>

  <div class="row">
  <div class="col-md-6">
  <img src="images/cdkhome.png" style="padding-left: 20px">
</div>
  <div class="col-md-6" style="padding-top: 60px">
    <h2> Dealer Management <span style="font-family:Cambria;color: #82c604">System</span></h2>
  </div>
</div>
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel"  >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" >
      <div class="item active">
        <img  src="images/pic1.jpg"  alt="Cdk Banner1">
      </div>

      <div class="item">
        <img src="images/pic2.jpg" alt="Cdk Banner2">
      </div>

      <div class="item">
        <img src="images/pic3.jpg" alt="Cdk Banner3">
      </div>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<br>
  <br><br><br>
  <nav class="navbar navbar-inverse navbar-fixed-bottom" style="background: #011635;">

  </nav>

</div>
<script>
function checkUsername() {
    alert(document.getElementById("username").value)
}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>