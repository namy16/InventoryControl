<div class="row" >
    <div class="panel" style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Available Spare Parts</h3>
        </div>
    </div>
    <div style="position: fixed;top:40%;left:53%;display: none" id="showTableLoader"><img src="images/tableloader.gif"></div>
    <div id="myModal" class="modal">
        <span class="close"><i class="fa fa-times" aria-hidden="true"></i></span>
        <img class="modal-content" id="img01">
        <div id="caption"></div>
    </div>
    <table class="container" style="width: 100%" ng-controller="viewSparePartController">
        <tr>
            <label>Search: <input ng-model="searchText" style="color : black"></label>
        </tr>
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
        <tr ng-repeat="x in data | filter:searchText" ng-controller="imageController">
            <td>{{x.sparePartId}}</td>
            <td>{{x.vehicleModelId}}</td>
            <td>{{x.sparePartName}}</td>
            <td><button type="button" id="mybutton" class="btn"  ng-click="show(x.image,x.sparePartName)">View</button></td>
            <td>{{x.units}}</td>
            <td>{{x.orderedOn}}</td>
        </tr>

        </tbody>

    </table>

</div><!-- /.container -->
