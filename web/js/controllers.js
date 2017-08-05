/**
 * Created by parashan on 8/3/2017.
 */
var app = angular.module('myApp', ['naif.base64']);
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
        };
        $scope.addSparePart = function() {
            //whenever myFunc() is called, display of above div is toggled
            $scope.addvehiclemodel = true;
            $scope.addUrl=function () {
                return '/AddSparePart.jsp';
            }
        };
        $scope.viewSpareParts = function() {
            //whenever myFunc() is called, display of above div is toggled
            $scope.addvehiclemodel = true;
            $scope.addUrl=function () {
                return '/ViewSpareParts.jsp';
            }
        };
        $scope.soldVehicleModels = function() {
            //whenever myFunc() is called, display of above div is toggled
            $scope.addvehiclemodel = true;
            $scope.addUrl=function () {
                return '/SoldVehicleModels.jsp';
            }
        };
        $scope.soldSpareParts = function() {
            //whenever myFunc() is called, display of above div is toggled
            $scope.addvehiclemodel = true;
            $scope.addUrl=function () {
                return '/SoldSpareParts.jsp';
            }
        };
        $scope.requestVehicleModel = function() {
            //whenever myFunc() is called, display of above div is toggled
            $scope.addvehiclemodel = true;
            $scope.addUrl=function () {
                return '/VehicleModelRequest.jsp';
            }
        };
        $scope.requestSparePart = function() {
            //whenever myFunc() is called, display of above div is toggled
            $scope.addvehiclemodel = true;
            $scope.addUrl=function () {
                return '/SparePartRequest.jsp';
            }
        };
        $scope.viewVehicleModelRequest = function() {
            //whenever myFunc() is called, display of above div is toggled
            $scope.addvehiclemodel = true;
            $scope.addUrl=function () {
                return '/ViewVehicleModelRequest.jsp';
            }
        };
        $scope.viewSparePartRequest = function() {
            //whenever myFunc() is called, display of above div is toggled
            $scope.addvehiclemodel = true;
            $scope.addUrl=function () {
                return '/ViewSparePartRequest.jsp';
            }
        };
    }});


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

        $scope.update = function(){
            $http.get('http://localhost:8080/rest/server/viewVehicleModelRequests')
                .then(function(response) {
                    $scope.data = response.data;
                });
        }

    });
    app.controller('viewSparepartRequestsController', function($scope, $http) {
        $http.get('http://localhost:8080/rest/server/viewSparepartRequests').
        then(function(response) {
            $scope.data = response.data;
        });
        $scope.update = function(){
            $http.get('http://localhost:8080/rest/server/viewSparepartRequests')
                .then(function(response) {
                $scope.data = response.data;
            });
        }
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
    console.log("inpostctrl");
    $scope.postData = function (modelName, bodyType, transmission, color, image, units, description, releaseDate) {
        var data = {
            modelId : 0,
            modelName : modelName,
            transmission : transmission,
            color : color,
            image : image,
            bodyType : bodyType,
            units : units,
            description : description,
            releaseDate : releaseDate
        };
        console.log(image);
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
app.controller('ctrl', function($scope, $http, $window, $rootScope){

    $scope.onChange = function (e, fileList) {
        alert('this is on-change handler!');
    };

    $scope.onLoad = function (e, reader, file, fileList, fileOjects, fileObj) {
        alert('this is handler for file reader onload event!');
    };

    var uploadedCount = 0;

    $scope.files = [];
});
app.controller('postSparePart', function ($scope, $http) {
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
    $scope.requestId = null;
    $scope.modelId = null;
    $scope.isProcessed = null;
    $scope.units = null;
    $scope.orderDate = null;
    console.log("inpost");
    $scope.postData = function (modelId, isProcessed, units, orderDate) {
        var data = {
            requestId : 0,
            modelId : modelId,
            isProcessed : isProcessed,
            units : units,
            orderDate : orderDate
        };
        console.log("inpostsend");
        $http.post('http://localhost:8080/rest/server/getVehicleRequest', data).then(function (response) {
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
    $scope.requestId = null;
    $scope.sparePartId = null;
    $scope.isProcessed = null;
    $scope.units = null;
    $scope.orderDate = null;
    //console.log("inpost");
    $scope.postData = function (sparePartId, isProcessed, units, orderDate) {
        var data = {
            requestId : 0,
            sparePartId : sparePartId,
            isProcessed : isProcessed,
            units : units,
            orderDate : orderDate
        };
        $http.post('http://localhost:8080/rest/server/getSparePartRequest', data).then(function (response) {
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
app.controller('updateVehicleModelRequest', function ($scope, $http) {
    $scope.requestId = null;
    $scope.modelId = null;
    $scope.isProcessed = null;
    $scope.units = null;
    $scope.orderDate = null;
    console.log("inposter");
    $scope.updateData = function (requestId, modelId, isProcessed, units, orderDate) {
        var data = {
            requestId : requestId,
            modelId : modelId,
            isProcessed : isProcessed,
            units : units,
            orderDate : orderDate
        };
        console.log("inpostsend");
        $http.post('http://localhost:8080/rest/server/updateVehicleRequest', data).then(function (response) {
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


app.controller('updateSparePartRequest', function ($scope, $http) {
    $scope.requestId = null;
    $scope.modelId = null;
    $scope.isProcessed = null;
    $scope.units = null;
    $scope.orderDate = null;
    console.log("inposter");
    $scope.updateData = function (requestId, modelId, isProcessed, units, orderDate) {
        var data = {
            requestId : requestId,
            modelId : modelId,
            isProcessed : isProcessed,
            units : units,
            orderDate : orderDate
        };
        console.log("inpostsend");
        $http.post('http://localhost:8080/rest/server/updateSparePartRequest', data).then(function (response) {
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

