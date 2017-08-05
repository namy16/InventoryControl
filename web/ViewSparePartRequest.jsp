<div class="row" ng-controller="viewSparepartRequestsController">
    <div class="panel" style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Spare Parts Requested</h3>
        </div>
    </div>
    <table class="container" style="width: 100%" ng-controller="updateSparePartRequest">
        <thead>
        <tr>
            <th><h1>Request Id</h1></th>
            <th><h1>Spare Part Id</h1></th>
            <th><h1>Request Processed?</h1></th>
            <th><h1>Ordered Date</h1></th>
            <th><h1>Units</h1></th>
            <th><h1>Process<th></th>
        </thead>
        <tbody>
        <tr ng-repeat="x in data" ng-if="!x.isProcessed">
            <td>{{x.requestId}}</td>
            <td>{{x.sparePartId}}</td>
            <td>{{x.isProcessed}}</td>
            <td>{{x.units}}</td>
            <td>{{x.orderDate}}</td>
            <th><button type="button" ng-click="updateData(x.requestId, x.sparePartId, true, x.units, x.orderDate);update()">Process</button></th>
        </tr>
        </tbody>
    </table>
</div><!-- /.container -->
