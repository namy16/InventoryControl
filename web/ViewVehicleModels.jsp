<div class="row" >
    <div class="panel panel-danger" ng-controller="viewVehicleController">

        <div class="panel-heading" id="anch1" style="text-align: center">
            View Vehicle Models
        </div>
        <table class="container" style="width: 100%">
            <thead>
            <tr>
                <th><h1>Model Id</h1></th>
                <th><h1>Model Name</h1></th>
                <th><h1>Body Type</h1></th>
                <th><h1>Color</h1></th>
                <th><h1>Transmission</h1></th>
                <th><h1>Image</h1></th>
                <th><h1>Units</h1></th>
                <th><h1>Description</h1></th>
                <th><h1>Release Date</h1></th>

            </tr>
            </thead>
            <tbody>
            <tr ng-repeat="x in data">
                <td>{{x.modelId}}</td>
                <td>{{x.modelName}}</td>
                <td>{{x.transmission}}</td>
                <td>{{x.color}}</td>
                <td>{{x.image}}</td>
                <td>{{x.bodyType}}</td>
                <td>{{x.units}}</td>
                <td>{{x.description}}</td>
                <td>{{x.releaseDate}}</td>
            </tr>
            </tbody>

        </table>

    </div><!-- /.container -->
</div>