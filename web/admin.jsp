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
    <title>$Title$</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
    <script src="https://use.fontawesome.com/9d0c2e3dbb.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script>
    <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>
    <link rel = "stylesheet" type = "text/css" href = "css/myCss.css" />
    <link rel = "stylesheet" type = "text/css" href = "css/table.css" />
    <script src="js/myJs.js"></script>
    <script src="js/controllers.js"></script>

  </head>
  <body ng-app="myApp" ng-controller="myController">
  <div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div  class="navbar-brand">
            <a id="menu-toggle" href="#" class="glyphicon glyphicon-align-justify btn-menu toggle">
              <i class="fa fa-bars"></i>
            </a>
            <a href="#">Admin</a>
          </div>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <!-- Sidebar -->
    <div id="sidebar-wrapper" >
      <nav id="spy">
        <ul class="sidebar-nav nav">
          <li class="sidebar-brand">
            <a href="#home"><span class="fa fa-home solo">Admin</span></a>
          </li>
          <li>
            <a href="#anch1" ng-click="addVehicleModel()">
              <span class="fa fa-anchor solo">Add Vehicle Model</span>
            </a>
          </li>
          <li>
            <a href="#anch2" ng-click="viewVehicleModels()">
              <span class="fa fa-anchor solo">View Vehicle Models</span>
            </a>
          </li>
          <li>
            <a href="#anch3">
              <span class="fa fa-anchor solo">Processed Request</span>
            </a>
          </li>
          <li>
            <a href="#anch4">
              <span class="fa fa-anchor solo">Make Request</span>
            </a>
          </li>
        </ul>
      </nav>
    </div>
    <!-- Page content -->
    <div id="page-content-wrapper" ng-show="addvehiclemodel">
      <div class="page-content">
        <div class="container-fluid">
                <div class="panel-body" ng-include ="addUrl()">


              </div>
            </div>

          </div>
        </div>
  </div>
  </body>
</html>
