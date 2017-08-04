<div class="row" ng-controller="viewVehicleController" >
    <div class="panel" style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Available Vehicle Models</h3>
        </div>
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

            </div>
<!-- /.container -->