<div class="row" >
    <div class="panel" style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Sold Vehicle Models</h3>
        </div>
    </div>
    <div style="position: fixed;top:40%;left:53%;display: none" id="showTableLoader"><img src="images/tableloader.gif"></div>
    <table class="container" style="width: 100%" ng-controller="viewSoldVehicleController">
        <thead>
        <tr>
            <th><h1>Id</h1></th>
            <th><h1>Vehicle Model Id</h1></th>
            <th><h1>Model Color</h1></th>
            <th><h1>Sold On</h1></th>
            <th><h1>Customer Email Id</h1></th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="x in data">
            <td>{{x.vehicleId}}</td>
            <td>{{x.modelId}}</td>
            <td>{{x.color}}</td>
            <td>{{x.soldOn}}</td>
            <td>{{x.emailId}}</td>
        </tr>

        </tbody>

    </table>

</div><!-- /.container -->
