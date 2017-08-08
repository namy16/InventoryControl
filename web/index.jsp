<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/index.css">
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
                <form class="form" action="/CheckUsername.jsp" role="form" method="post"  accept-charset="UTF-8" id="login-nav">
                  <div class="form-group">
                    <label class="sr-only" for="username">Email Id</label>
                    <input type="text" class="form-control" id="username" name="email" placeholder="Email Id" required >
                  </div>
                  <div class="form-group">
                    <label class="sr-only" for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
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


  <div id="myCarousel" class="carousel slide" data-ride="carousel"  >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
      <li data-target="#myCarousel" data-slide-to="7"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" >
      <div class="item active" >
        <img  src="cars/IMG1.jpg"  alt="Cdk Banner1">
      </div>

      <div class="item">
        <img src="cars/IMG14.jpg" alt="Cdk Banner2">
      </div>

      <div class="item">
        <img src="cars/IMG5.jpg" alt="Cdk Banner3">
      </div>

      <div class="item">
        <img src="cars/IMG6.jpg" alt="Cdk Banner3">
      </div>

      <div class="item">
        <img src="cars/IMG7.jpg" alt="Cdk Banner3">
      </div>

      <div class="item">
        <img src="cars/IMG8.jpg" alt="Cdk Banner3">
      </div>

      <div class="item">
        <img src="cars/IMG9.jpg" alt="Cdk Banner3">
      </div>


      <div class="item">
        <img src="cars/IMG10.jpg" alt="Cdk Banner3">
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
  <div class="container">
    <h3 align="center">Buy Cars</h3>
    <marquee style=" scrollamount:14 "  scrolldelay="34" behavior="alternate" onmouseover="this.stop()" onmouseout="this.start()">
      <a name="rishav1">
        <%--Payment gate way url--%>
        <%--<li><h3>Buy Cars</h3></li>--%>
        <ul class="list-inline list-unstyled r">
          <li class="productbox"><a href="/index_mainFile.jsp">
            <img src="cars/convertible1/conv_blu.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW Convertible</div></a>
          </li>
          <li class="productbox"><a href="/index_mainFile2.jsp">
            <img src="cars/convertible1/conv_blk.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW Convertible</div></a>
          </li>
          <li class="productbox"><a href="/index_mainFile3.jsp">
            <img src="cars/convertible1/conv_w1.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW Convertible</div></a>
          </li>
          <li class="productbox"><a href="/index_mainFile4.jsp">
            <img src="cars/coupe1/coupe_blk.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW Coupe</div></a>
          </li>
          <li class="productbox"><a href="/index_mainFile5.jsp">
            <img src="cars/coupe1/coupe_blu.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW Coupe</div></a>
          </li>
          <li class="productbox"><a href="/index_mainFile6.jsp">
            <img src="cars/coupe1/coupe_w.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW Coupe</div></a>
          </li>
          <li class=" productbox"><a href="/index_mainFile7.jsp">
            <img src="cars/gran_turismo1/gt_w.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW Gran Turismo</div></a>
          </li>
          <li class="productbox"><a href="/index_mainFile.jsp">
            <img src="cars/gran_turismo1/gt_red.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW Gran Turismo</div></a>
          </li>
          <li class="productbox"><a href="/index_mainFile2.jsp">
            <img src="cars/gran_turismo1/gt_gld.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW Gran Turismo</div></a>
          </li>
          <li class=" productbox"><a href="/index_mainFile3.jsp">
            <img src="cars/i1/i_blk.jpg" class="img-responsive">
            <div class="producttitle"align="center">BMW i</div></a>
          </li>
          <li class=" productbox"><a href="/index_mainFile4.jsp">
            <img src="cars/i1/i_blu.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW i</div></a>
          </li>
          <li class=" productbox"><a href="/index_mainFile5.jsp">
            <img src="cars/i1/ia_w.jpg" class="img-responsive">
            <div class="producttitle" align="center"> BMW i </div></a>
          </li>
          <li class=" productbox"><a href="/index_mainFile6.jsp">
            <img src="cars/sedan1/sedan_blk.jpg" class="img-responsive">
            <div class="producttitle" align="center">BMW Sedan </div></a>
          </li>
          <li class=" productbox"><a href="/index_mainFile7.jsp">
            <img src="cars/sedan1/sedan_blu.jpg" class="img-responsive">
            <div class="producttitle" align="center">BMW Sedan </div></a>
          </li>
          <%--<li class=" productbox">--%>
          <%--<img src="cars/sedan1/sedan_w.jpg" class="img-responsive">--%>
          <%--<div class="producttitle" align="center">BMW Sedan </div>--%>
          <%--</li>--%>
          <%--<li class=" productbox">--%>
          <%--<img src="cars/suv1/suv_blu.jpg" class="img-responsive">--%>
          <%--<div class="producttitle" align="center">BMW SUV </div>--%>
          <%--</li>--%>
          <%--<li class=" productbox">--%>
          <%--<img src="cars/suv1/suv_blk.jpg" class="img-responsive">--%>
          <%--<div class="producttitle" align="center">BMW SUV </div>--%>
          <%--</li>--%>
          <%--<li class=" productbox">--%>
          <%--<img src="cars/suv1/suv_w.png" class="img-responsive">--%>
          <%--<div class="producttitle" align="center">BMW SUV </div>--%>
          <%--</li>--%>
        </ul></a><br>
    </marquee>
  </div>
  <div class="container">

    <h3 align="center">Buy Spares</h3>
    <%--<iframe height="400px"></iframe>--%>
    <marquee style="scrollamount:10" scrolldelay="50" direction="left" behavior="alternate" onmouseover="this.stop()" onmouseout="this.start()" />
    <a name="rishav2" href="Paymentgateway">
      <%--Payment gate way url--%>
      <ul class="list-inline list-unstyled r">
        <li class="productbox">
          <img src="Spares/ac.jpg" class="img-responsive">
          <div class="producttitle"> Air-Conditioner</div>
        </li>
        <li class="productbox">
          <img src="Spares/alloy-car-wheel-250x250.jpg" class="img-responsive">
          <div class="producttitle"> Wheel</div>
        </li>
        <li class="productbox">
          <img src="Spares/automotive-chassis-250x250.jpg" class="img-responsive">
          <div class="producttitle"> Chassis</div>
        </li>
        <li class="productbox">
          <img src="Spares/brakes.jpg" class="img-responsive">
          <div class="producttitle"> Brakes</div>
        </li>
        <li class="productbox">
          <img src="Spares/car-engine-250x250.jpg" class="img-responsive">
          <div class="producttitle"> Engine</div>
        </li>
        <li class="productbox">
          <img src="Spares/car-engine-250x250.jpg" class="img-responsive">
          <div class="producttitle"> Ignition Switches</div>
        </li>
        <li class=" productbox">
          <img src="Spares/car-stereo-250x250.jpg" class="img-responsive">
          <div class="producttitle"> Stereo</div>
        </li>
        <li class="productbox">
          <img src="Spares/steering.jpg" class="img-responsive">
          <div class="producttitle"> Steering</div>
        </li>
        <li class="productbox">
          <img src="Spares/wheel.png" class="img-responsive">
          <div class="producttitle"> Wheel</div>
        </li>
      </ul></a><br>

</marquee>
  </div>





  <br><br><br>
  <nav class="navbar navbar-inverse navbar-fixed-bottom" style="background: #011635;">
  </nav>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>