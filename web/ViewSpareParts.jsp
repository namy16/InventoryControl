<div class="row" >
    <div class="panel" style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Available Spare Parts</h3>
        </div>
    </div>
    <table class="container" style="width: 100%" ng-controller="viewSparePartController">
        <thead>
        <tr>
            <th><h1>Spare Part Id</h1></th>
            <th><h1>Vehicle Model Id</h1></th>
            <th><h1>Spare Part Name</h1></th>
            <th><h1>Image</h1></th>
            <th><h1>Units</h1></th>
            <th><h1>Release Date</h1></th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="x in data">
            <td>{{x.sparePartId}}</td>
            <td>{{x.vehicleModelId}}</td>
            <td>{{x.sparePartName}}</td>
            <td>{{x.image}}</td>
            <td>{{x.units}}</td>
            <td>{{x.orderedOn}}</td>
        </tr>

        </tbody>

    </table>

</div><!-- /.container -->
