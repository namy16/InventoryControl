/**
 * Created by prajapas on 8/7/2017.
 */
var app = angular.module('myApp',[]);
app.controller('viewVehicleGraph', function($scope, $http) {
    $scope.rawData = null;
    $http.get('http://localhost:8080/rest/server/viewVehicleModel').
    then(function(response) {
        $scope.rawData = response.data;
        $scope.rawDatavalues= [];
        $scope.rawlabels = [];
        for (var i = 0; i < $scope.rawData.length; i++){
            var obj = $scope.rawData[i];

                var value1 = obj["units"];
                var value2 = obj["modelName"];
                console.log(value1);
                $scope.rawDatavalues.push(value1);
                $scope.rawlabels.push(value2);

        }
        $scope.preparedData = [{
            values : $scope.rawDatavalues,
            labels : $scope.rawlabels,
            type : 'pie'
        }];

        $scope.layout = {
            height: 400,
            width: 500
        };
        //console.log(JSON.stringify($scope.preparedData)+" "+JSON.stringify($scope.layout));
        Plotly.newPlot(modelDiv, $scope.preparedData, $scope.layout);

        $scope.x = [];
        $scope.y = [];
        $scope.map = {}
        for (var i = 0; i < $scope.rawData.length; i++){
            var obj = $scope.rawData[i];
            var value1 = obj["bodyType"];
            //console.log(value1);
            if($scope.map[value1] === undefined){
                $scope.map[value1] = 1;

            }
            else{
                console.log("it was here");
                $scope.map[value1] = $scope.map[value1]+1;
            }
        }

        for(var key in $scope.map){
            $scope.y.push($scope.map[key]);
        }
        //console.log($scope.y);
        //console.log(JSON.stringify($scope.map));

        var trace0 = {
            type : 'bar',
            x : Object.keys($scope.map),
            y : $scope.y
        }

        var data = [trace0];
        Plotly.plot(bodyDiv, data);
    });
});