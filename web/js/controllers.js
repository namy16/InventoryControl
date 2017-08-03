/**
 * Created by parashan on 8/3/2017.
 */
var app = angular.module('myApp', []);
app.controller('myController', function($scope) {
    $scope.addvehiclemodel = false;//initially will be made false
    $scope.addVehicleModel = function() { //whenever myFunc() is called, display of above div is toggled
            $scope.addvehiclemodel = true;
            $scope.addUrl=function () {
                return '/AddVehicleModel.jsp';
            }
    };
    $scope.viewVehicleModels = function() { //whenever myFunc() is called, display of above div is toggled
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/ViewVehicleModels.jsp';
        }
    }


});