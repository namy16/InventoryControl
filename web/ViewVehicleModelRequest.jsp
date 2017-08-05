<div class="row" ng-controller="viewVehicleModelRequestsController">
    <div class="panel" style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Vehicle Model Requested</h3>
        </div>
    </div>
    <table class="container" style="width: 100%" ng-controller="updateVehicleModelRequest">
        <thead>
        <tr>
            <th><h1>Request Id</h1></th>
            <th><h1>Vehicle Model Id</h1></th>
            <th><h1>Request Processed?</h1></th>
            <th><h1>Ordered Date</h1></th>
            <th><h1>Units</h1></th>
            <th><h1>Process<h1><th>
        </thead>
        <tbody>
        <tr ng-repeat="x in data" ng-if="!x.isProcessed">
            <td>{{x.requestId}}</td>
            <td>{{x.modelId}}</td>
            <td>{{x.isProcessed}}</td>
            <td>{{x.orderDate}}</td>
            <td>{{x.units}}</td>
            <td><button type="button" ng-click="updateData(x.requestId, x.modelId, true, x.units, x.orderDate);update()">Process</button></td>
        </tr>

        </tbody>

    </table>

</div><!-- /.container -->