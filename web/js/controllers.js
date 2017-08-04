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

/*
* Controllers which are getting the requests
* */
app.controller('viewVehicleController', function($scope, $http) {
    $http.get('http://localhost:8080/rest/server/viewVehicleModel').
    then(function(response) {
        $scope.data = response.data;
    });
});
app.controller('viewSparePartController', function($scope, $http) {
    $http.get('http://localhost:8080/rest/server/viewSparePart').
    then(function(response) {
        $scope.data = response.data;
    });
});
app.controller('viewSoldVehicleController', function($scope, $http) {
    $http.get('http://localhost:8080/rest/server/viewSoldVehicle').
    then(function(response) {
        $scope.data = response.data;
    });
});
app.controller('viewSoldSparePartController', function($scope, $http) {
    $http.get('http://localhost:8080/rest/server/viewSoldSparePart').
    then(function(response) {
        $scope.data = response.data;
    });
});
app.controller('viewVehicleModelRequestsController', function($scope, $http) {
    $http.get('http://localhost:8080/rest/server/viewVehicleModelRequests').
    then(function(response) {
        $scope.data = response.data;
    });
});
app.controller('viewSparepartRequestsController', function($scope, $http) {
    $http.get('http://localhost:8080/rest/server/viewSparepartRequests').
    then(function(response) {
        $scope.data = response.data;
    });
});


/*
*
* Controllers which are posting the data to the server*/
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
    //console.log("inpost");
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
            releaseDate : "1992-11-11"
        };
        $http.post('http://localhost:8080/rest/server/getVehicle', data).then(function (response) {
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

app.controller('postVehicleModel', function ($scope, $http) {
    $scope.sparePartId= null;
    $scope.vehicleModelId = null;
    $scope.sparePartName = null;
    $scope.image = null;
    $scope.units = null;
    $scope.orderedOn = null;
    //console.log("inpost");
    $scope.postdata = function () {
        var data = {
            sparePartId :"1223",
            vehicleModelId : 12,
            sparePartName : "thor's hammer",
            image : "address",
            units : 10,
            orderedOn : "1992-11-28",
        };
        $http.post('http://localhost:8080/rest/server/getSparePart', data).then(function (response) {
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

app.controller('postVehicleModelRequest', function ($scope, $http) {
    $scope.requestId = 11;
    $scope.modelId = "superman";
    $scope.isProcessed = true;
    $scope.units = 10;
    $scope.orderDate = "1992/11/28";
    //console.log("inpost");
    $scope.postdata = function () {
        var data = {

        };
        $http.post('http://localhost:8080/rest/server/setVehicleRequest', data).then(function (response) {
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
app.controller('postSparePartRequest', function ($scope, $http) {
    $scope.requestId = 11;
    $scope.modelId = "superman";
    $scope.isProcessed = true;
    $scope.units = 10;
    $scope.orderDate = "1992/11/28";
    //console.log("inpost");
    $scope.postdata = function () {
        var data = {

        };
        $http.post('http://localhost:8080/rest/server/setVehicleRequest', data).then(function (response) {
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
