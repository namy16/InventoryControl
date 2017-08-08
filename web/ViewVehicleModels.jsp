<div class="row" ng-controller="viewVehicleController" >
    <div class="panel" style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Available Vehicle Models</h3>
        </div>
    </div>
    <div style="position: fixed;top:40%;left:53%;display: none" id="showTableLoader"><img src="images/tableloader.gif"></div>
    <div id="myModal" class="modal">
        <span class="close"><i class="fa fa-times" aria-hidden="true"></i></span>
        <img class="modal-content" id="img01">
        <div id="caption"></div>
    </div>
    <div id="pdfButton" style="position: fixed;top:20.5%;left:92.5%;"><button type="button" class="btn" onclick="fun()">Generate Pdf</button></div>
    <table class="container" style="width: 100%">
        <tr>
            <label>Search: <input ng-model="searchText" style="color : black"></label>
        </tr>
        <thead>

        <tr>
            <th><h1>Model Id</h1></th>
            <th><h1>Model Name</h1></th>
            <th><h1>Price</h1></th>
            <th><h1>Body Type</h1></th>
            <th><h1>Transmission</h1></th>
            <th><h1>Color</h1></th>
            <th><h1>Image</h1></th>
            <th><h1>Units</h1></th>
            <th><h1>Description</h1></th>
            <th><h1>Release Date</h1></th>
        </tr>
        </thead>
        <tbody id="target">
        <tr ng-repeat="x in data | filter:searchText" ng-controller="imageController" >
            <td>{{x.modelId}}</td>
            <td>{{x.modelName}}</td>
            <td>{{x.price}}</td>
            <td>{{x.bodyType}}</td>
            <td>{{x.transmission}}</td>
            <td>{{x.color}}</td>
            <td><button type="button" id="mybutton" class="btn"  ng-click="show(x.image,x.modelName)">View</button></td>
            <td>{{x.units}}</td>
            <td>{{x.description}}</td>
            <td>{{x.releaseDate}}</td>
        </tr>
        </tbody>

    </table>

</div>
<script>
</script>