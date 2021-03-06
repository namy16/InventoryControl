<%--
  Created by IntelliJ IDEA.
  User: prajapas
  Date: 8/3/2017
  Time: 10:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Admin</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
    <script src="https://use.fontawesome.com/9d0c2e3dbb.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/numeric/1.2.6/numeric.min.js"></script>
    <link rel = "stylesheet" type = "text/css" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
    <link rel = "stylesheet" type = "text/css" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" />
    <link rel = "stylesheet" type = "text/css" href = "https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/adonespitogo/angular-base64-upload/master/src/angular-base64-upload.js"></script>
    <script data-require="ui-bootstrap@*" data-semver="1.1.1" src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-1.1.2.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <link rel = "stylesheet" type = "text/css" href = "css/myCss.css" />
    <link rel = "stylesheet" type = "text/css" href = "css/table.css" />
    <link rel = "stylesheet" type = "text/css" href = "css/modal.css" />
    <link rel = "stylesheet" type = "text/css" href = "css/notification.css" />
    <script src="js/myJs.js"></script>
    <script src="js/controllers.js"></script>
    <script src="js/notification.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>

    <script type="text/javascript">

        function fun() {
            var doc = new jsPDF();
            var source = $('#target').html();
            var specialElementHandlers = {
                '#bypassme': function (element, renderer) {
                    return true;
                }
            };
            doc.fromHTML(source, 0.5, 0.5, {
                'width': 75,'elementHandlers': specialElementHandlers
            });
            doc.output("dataurlnewwindow");
        };

    </script>
  </head>
  <body ng-app="myApp" ng-controller="myController" onload="changeImageNow()">

  <%
  request.getSession(false);
  if(session.getAttribute("email")!=null ){
     String email=session.getAttribute("email").toString();

  %>

  <div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background: #011635;">
      <div class="container-fluid">
        <div class="navbar-header">
          <div  class="navbar-brand">
            <a id="menu-toggle" href="#" >
              <i class="fa fa-bars"></i>
            </a>
            <a href="#">Inventory</a>
          </div>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li id="notification_li">
              <span id="notification_count">!</span>
              <a href="#" id="notificationLink"><i class="fa fa-bell fa-lg" aria-hidden="true"></i></a>
              <div id="notificationContainer" ng-controller="viewVehicleControllerNotif" style="color: #0E1119">
                <div id="notificationTitle" >Notifications : Insufficient Stock</div>
                <div id="notificaLogoutServlettionsBody" class="notifications" ng-repeat="x in data | limitTo:4 | orderBy :'units'" style="background : gainsboro">
                  <b style="color: #cc0000">Insufficient Stock : </b> Order More Stock<br>
                  <b style="color: #011635">Only {{x.units}} Items Left of BMW{{x.modelName}} </b>
                </div>
                <div id="notificationFooter"><a href="#/anch8" ng-click="requestVehicleModel()">Order Now</a></div>
              </div>

            </li>
            <li ><a href="#" style="color:white "><span class="glyphicon glyphicon-home" ></span> <b>Home</b></a></li>
            <li ><a href="/logout" style="color:white "><i class="fa fa-sign-out" aria-hidden="true" ></i><b> Logout</b></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <!-- Sidebar -->
    <div id="sidebar-wrapper">
      <nav id="spy">
        <ul class="sidebar-nav nav">
          <li class="sidebar-brand" style="padding-bottom: 35%">
            <a href="#home" ng-click="addStatistics()">
              <span><img  id="profilepic"  class="img-circle"  width="60" height="60"> &nbsp;<%=session.getAttribute("name").toString()%></span></a><br><br>
          </li>
          <li >
            <a href="#anch1" ng-click="addVehicleModel()" >
              <span class="fa fa-plus-square-o"><span style="font-family: Arial; font-size: 110%" >Add Vehicle Model</span></span>
            </a>
          </li>
          <li>
            <a href="#anch2" ng-click="viewVehicleModels()">
              <span class="fa fa-server" ><span style="font-family: Arial; font-size: 110%" >View Vehicle Model</span></span>
            </a>
          </li>
          <li>
            <a href="#anch3" ng-click="addSparePart()">
              <span class="fa fa-plus-square-o" ><span style="font-family: Arial; font-size: 110%" >Add Spare Part</span></span>
            </a>
          </li>
          <li>
            <a href="#anch5" ng-click="viewSpareParts()">
              <span class="fa fa-server" ><span style="font-family: Arial; font-size: 110%" >View Spare Parts</span></span>
            </a>
          </li>
          <li>
            <a href="#anch6" ng-click="soldVehicleModels()">
              <span class="fa fa-check" ><span style="font-family: Arial; font-size: 110%" >Sold Vehicle Models</span></span>
            </a>
          </li>
          <li>
            <a href="#anch7" ng-click="soldSpareParts()">
              <span class="fa fa-check" ><span style="font-family: Arial; font-size: 110%" >Sold Spare Parts</span></span>
            </a>
          </li>
          <li>
            <a href="#anch8" ng-click="requestVehicleModel()">
              <span class="fa fa-plus-square-o" ><span style="font-family: Arial; font-size: 110%" >Request Vehicle Model</span></span>
            </a>
          </li>
          <li>
            <a href="#anch9" ng-click="requestSparePart()">
              <span class="fa fa-plus-square-o" ><span style="font-family: Arial; font-size: 110%" >Request Spare Part</span></span>
            </a>
          </li>
          <li>
            <a href="#anch10" ng-click="viewVehicleModelRequest()">
              <span class="fa fa-server" ><span style="font-family: Arial; font-size: 110%" >View Requested Models</span></span>
            </a>
          </li>
          <li>
            <a href="#anch11" ng-click="viewSparePartRequest()">
              <span class="fa fa-server" ><span style="font-family: Arial; font-size: 110%" >View Requested SpareParts</span></span>
            </a>
          </li>
          <li>
            <a href="#anch12" ng-click="settings()">
              <span class="fa fa-cog" ><span style="font-family: Arial; font-size: 110%" >Settings</span></span>
            </a>
          </li>
        </ul>
      </nav>
    </div>
    <!-- Page content -->

    <div id="page-content-wrapper" ng-show="addvehiclemodel">
      <div class="page-content" >
        <div class="container-fluid" >
                <div  ng-include ="addUrl()" >


              </div>
            </div>

          </div>
        </div>
    <div id ="statistics" ng-include="'/Statistics.html'">
    </div>


    <div id ="profilePicture" style="display: none;padding-top: 5%">
      <div class="row" ng-controller="settingsController">
        <div class="panel" style="border-style: none;">
          <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Settings</h3>
          </div>
        </div>
        <form class="well form-horizontal" name="myForm7" action=" " method="post"  id="contact_form"  enctype="multipart/form-data" ng-controller="postSparePart">
          <fieldset >

            <div class="form-group" >
              <label class="col-md-4 control-label" style="color: #011635;"></label>
              <div class="col-md-4 inputGroupContainer"  >
                <div class="input-group" style="align-content: center;padding-left: 70px">
                  <b style="font-family: Arial;font-size: medium;color: white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change Name</b>
                </div>
              </div>
            </div>

            <div class="form-group">
              <label class="col-md-4 control-label mycolor" style="color: white;"></label>
              <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-info"  aria-hidden="true"></i></span>
                  <input name="spName" placeholder="Enter New Name" class="form-control"  type="text" ng-model="sparePartName" required>
                </div>
              </div>
              <span ><button type="button" class="btn" style="background: #011635;color: white;" onclick="ChangeName()"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Change </button></span>
            </div>
            <br>
            <div class="form-group" >
              <label class="col-md-4 control-label" style="color: #011635;"></label>
              <div class="col-md-4 inputGroupContainer"  >
                <div class="input-group" style="align-content: center;padding-left: 70px">
                  <b style="font-family: Arial;font-size: medium;color: white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change Password</b>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-4 control-label mycolor" style="color: white"></label>
              <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                  <input name="password" placeholder="Enter Current Password" class="form-control"  type="text" ng-model="password" required>
                </div>
              </div>
            </div>




            <div class="form-group">
              <label class="col-md-4 control-label mycolor" style="color: white"></label>
              <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                  <input name="newpassword" placeholder="Enter New Password" class="form-control"  type="text" ng-model="newpassword" required>
                </div>
              </div>
            </div>

            <div class="form-group" >
              <label class="col-md-4 control-label" ></label>
              <div class="col-md-4" style="padding-left: 13% ">
                <button style="background: #011635;color: white;position: fixed;top:46%;left:72%" type="button" class="btn" ng-click=""><i class="fa fa-pencil-square-o" aria-hidden="true"></i> &nbsp;Change</button>
              </div>
            </div>
            <!-- Text input-->


            <div class="form-group" >
              <label class="col-md-4 control-label" style="color: #011635;"></label>
              <div class="col-md-4 inputGroupContainer"  >
                <div class="input-group" style="align-content: center;padding-left: 70px">
                  <b style="font-family: Arial;font-size: medium;color: white;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change Profile Picture</b>
                </div>
              </div>
            </div>


            <div class="form-group" id="showButton">
              <label class="col-md-4 control-label" style="color: white;"></label>
              <div class="col-md-4 inputGroupContainer" >
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-file-picture-o"></i></span>
                  <input name="file" id="vfiles" class="form-control" type="file" files-input ng-model="fileArray" multiple required>
                </div>
              </div>
              <span ><button type="button" id="profileButton" class="btn" value="<%=email%>" style="background: #011635;color: white;" onclick="ChangeProfilePicture()"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Change</button></span>
            </div>
            <div class="form-group" id="showLoading" style="display: none">
              <label class="col-md-4 control-label" style="color: #011635;"></label>
              <div class="col-md-4 inputGroupContainer"  >
                <div class="input-group" style="align-content: center;padding-left: 45%">
                  <img src="images/loaders.gif">
                </div>
              </div>
            </div>
            <div class="form-group" id="showMessage" style="display: none">
              <label class="col-md-4 control-label" style="color: #011635;"></label>
              <div class="col-md-4 inputGroupContainer"  >
                <div class="input-group" style="align-content: center;padding-left: 70px">
                  <i  style="color: #42f445;" class="fa fa-check fa-2x" aria-hidden="true">&nbsp;<b style="font-family: Arial;font-size: medium">Profile Picture Changed!!</b></i>
                </div>
              </div>

            </div>



          </fieldset>

        </form>

      </div><!-- /.container -->

    </div>

  </div>


  <%
    }
    else{
      %>
      <nav class="navbar navbar-inverse navbar-fixed-top" style="background: #011635;">
  </nav>
  <h1 class="mypanelheading" align="center" style="padding-top: 5%">Please Login to Continue</h1>
    <center><a href="/index.html"  class="btn" ><h2 class="mypanelheading"><button class="btn">Login</button></h2></a></center>
  <nav class="navbar navbar-inverse navbar-fixed-bottom" style="background: #011635;">
  </nav>
    <%}
  %>
  </body>
</html>
