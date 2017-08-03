/**
 * Created by prajapas on 8/3/2017.
 */
/**
 * Created by prajapas on 8/3/2017.
 */
var app = angular.module('demo', []);
app.controller('viewVehicleController', function($scope, $http) {
    $http.get('http://localhost:8080/rest/server/viewVehicleModel').
    then(function(response) {
        $scope.greeting = response.data;
    });
});
app.controller('postVehicleModel', function ($scope, $http) {
    $scope.modelId = null;
    $scope.modelName = null;
    $scope.transmission = null;
    $scope.color = null;
    $scope.image = null;
    $scope.bodyType = null;
    $scope.units = null;
    $scope.description = null;
    $scope.releaseDate = null;
    $scope.postdata = function () {
        var data = {
            modelId : 10,
            modelName : "supra",
            transmission : "auto",
            color : "white",
            image : "blue",
            bodyType : "coupe",
            units : 10,
            description : "quick_left",
            releaseDate : "11/11/1992"
        };
        $http.post('http://localhost:8080/rest/client/vehicleModel', JSON.stringify(data)).then(function (response) {
            if (response.data)
                $scope.msg = "Post Data Submitted Successfully!";
        }, function (response) {
            $scope.msg = "Service not Exists";
            $scope.statusval = response.status;
            $scope.statustext = response.statusText;
            $scope.headers = response.headers();
        });
    };
});