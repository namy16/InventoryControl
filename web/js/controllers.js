/**
 * Created by parashan on 8/3/2017.
 */
var app = angular.module('myApp', ['ui.bootstrap']);
app.controller('myController', function($scope) {
    $scope.addvehiclemodel = false;//initially will be made false
    $scope.addVehicleModel = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/AddVehicleModel.jsp';
        }
    };
    $scope.viewVehicleModels = function() { //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl = function () {
            return '/ViewVehicleModels.jsp';
        }
    };
    $scope.addSparePart = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/AddSparePart.jsp';
        };
    };
    $scope.viewSpareParts = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/ViewSpareParts.jsp';
        }
    };
    $scope.soldVehicleModels = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/SoldVehicleModels.jsp';
        }
    };
    $scope.soldSpareParts = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/SoldSpareParts.jsp';
        }
    };
    $scope.requestVehicleModel = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/VehicleModelRequest.jsp';
        }
    };
    $scope.requestSparePart = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/SparePartRequest.jsp';
        }
    };
    $scope.viewVehicleModelRequest = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/ViewVehicleModelRequest.jsp';
        }
    };
    $scope.viewSparePartRequest = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="none";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = true;
        $scope.addUrl=function () {
            return '/ViewSparePartRequest.jsp';
        }
    };
    $scope.addStatistics = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("statistics").style.display="block";
        document.getElementById("profilePicture").style.display="none";
        $scope.addvehiclemodel = false;
        // $scope.addUrl = function () {
        //     return '/Statistics.html';
        // }
    };
    $scope.settings = function() {
        //whenever myFunc() is called, display of above div is toggled
        document.getElementById("profilePicture").style.display="block";
        document.getElementById("statistics").style.display="none";
        $scope.addvehiclemodel = false;

    };

});





/*
 * Controllers which are getting the requests
 * */
app.controller('viewVehicleController', function($scope, $http) {
    document.getElementById("showTableLoader").style.display="block";
    $http.get('http://localhost:8080/rest/server/viewVehicleModel').
    then(function(response) {
        $scope.data = response.data;
        document.getElementById("showTableLoader").style.display="none";
    });
});
app.controller('viewSparePartController', function($scope, $http) {
    document.getElementById("showTableLoader").style.display="block";
    $http.get('http://localhost:8080/rest/server/viewSparePart').
    then(function(response) {
        $scope.data = response.data;
        document.getElementById("showTableLoader").style.display="none";
    });
});
app.controller('viewSoldVehicleController', function($scope, $http) {
    document.getElementById("showTableLoader").style.display="block";
    $http.get('http://localhost:8080/rest/server/viewSoldVehicle').
    then(function(response) {
        $scope.data = response.data;
        document.getElementById("showTableLoader").style.display="none";
    });
});
app.controller('viewSoldSparePartController', function($scope, $http) {
    document.getElementById("showTableLoader").style.display="block";
    $http.get('http://localhost:8080/rest/server/viewSoldSparePart').
    then(function(response) {
        $scope.data = response.data;
        document.getElementById("showTableLoader").style.display="none";
    });
});
app.controller('viewVehicleModelRequestsController', function($scope, $http) {
    document.getElementById("showTableLoader").style.display="block";
    $http.get('http://localhost:8080/rest/server/viewVehicleModelRequests').
    then(function(response) {
        $scope.data = response.data;
        document.getElementById("showTableLoader").style.display="none";
    });

    $scope.update = function(){
        document.getElementById("showTableLoader").style.display="block";
        $http.get('http://localhost:8080/rest/server/viewVehicleModelRequests')
            .then(function(response) {
                $scope.data = response.data;
                document.getElementById("showTableLoader").style.display="none";
            });
    }

});
app.controller('viewSparepartRequestsController', function($scope, $http) {
    document.getElementById("showTableLoader").style.display="block";
    $http.get('http://localhost:8080/rest/server/viewSparepartRequests').
    then(function(response) {
        $scope.data = response.data;
        document.getElementById("showTableLoader").style.display="none";
    });
    $scope.update = function(){
        document.getElementById("showTableLoader").style.display="block";
        $http.get('http://localhost:8080/rest/server/viewSparepartRequests')
            .then(function(response) {
                $scope.data = response.data;
                document.getElementById("showTableLoader").style.display="none";
            });
    }
});



app.controller('imageController', function($scope) {
    $scope.show = function (image,modelName) { //whenever myFunc() is called, display of above div is toggled
        var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
        var modalImg = document.getElementById("img01");
        var captionText = document.getElementById("caption");
        modal.style.display = "block";
        modalImg.src = "/images/"+image;
        captionText.innerHTML = modelName;
        var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }

    };
});
/*
 *
 * Controllers which are posting the data to the server*/

app.controller('postVehicleModel', function ($scope, $http, myModals) {
    var automodelId=Math.floor(Math.random() * 900000000) + 100000000;
    $scope.modelId = null;
    $scope.modelName = null;
    $scope.price = null;
    $scope.transmission = null;
    $scope.color = null;
    $scope.image = null;
    $scope.bodyType = null;
    $scope.units = null;
    $scope.description = null;
    $scope.releaseDate = null;
    $scope.successMessage = 'Way to go Jack!';



    console.log("inpostctrl");
    $scope.postData = function (modelName,price, bodyType, transmission, color, image, units, description, releaseDate) {
        myModals.alert('success', $scope.successMessage, 'small');
        var vdata = {

            modelId : 211231232,
            modelName : modelName,
            price:price,
            transmission : transmission,
            color : color,
            image : $scope.name,
            bodyType : bodyType,
            units : units,
            description : description,
            releaseDate : releaseDate
        };


        $http.post('http://localhost:8080/rest/server/getVehicle', vdata).then(function (response) {
            if (response.vdata) {
                $scope.msg = "Post Data Submitted Successfully!";

            }
        }, function (response) {
            $scope.msg = "Service not Exists";
            $scope.statusval = response.status;
            $scope.statustext = response.statusText;
            $scope.headers = response.headers();
        });
    };
}).directive("filesInput", function() {
    return {
        require: "ngModel",
        link: function postLink(scope,elem,attrs,ngModel) {
            elem.on("change", function(e) {
                var files1 = elem[0].files;
                //      alert(files1[0].name);
                scope.name = files1[0].name;

                //ngModel.$setViewValue(files);
            })
        }
    }
});

app.controller('postSparePart', function ($scope, $http, myModals) {
    var autosPartId=Math.floor(Math.random() * 900000000) + 100000000;
    console.log($scope.name);
    $scope.sparePartId= null;
    $scope.vehicleModelId = null;
    $scope.price = null;
    $scope.sparePartName = null;
    $scope.image = null;
    $scope.units = null;
    $scope.orderedOn = null;
    console.log("inpost");
    $scope.postsData = function (vehicleModelId, sparePartName, price, image, units, orderedOn) {
        myModals.alert('success', $scope.successMessage, 'small');
        var e = document.getElementById("mySelect");
        var strUser = e.options[e.selectedIndex].text;
        var vid=strUser.split("---");


        var data = {
            sparePartId :autosPartId,
            vehicleModelId : vid[0],
            sparePartName : sparePartName,
            price:price,
            image : $scope.name,
            units : units,
            orderedOn : orderedOn
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
}).directive("filesInput", function() {
    return {
        require: "ngModel",
        link: function postLink(scope,elem,attrs,ngModel) {
            elem.on("change", function(e) {
                var files1 = elem[0].files;
                //      alert(files1[0].name);
                scope.name = files1[0].name;

                //ngModel.$setViewValue(files);
            })
        }
    }
});;

app.controller('postVehicleModelRequest', function ($scope, $http, myModals) {
    $scope.requestId = null;
    $scope.modelId = null;
    $scope.isProcessed = null;
    $scope.units = null;
    $scope.orderDate = null;
    $scope.mfEmailId = null;
    console.log("inpost");
    $scope.postData = function (modelId, isProcessed, units,mfEmailId, orderDate) {
        myModals.alert('success', $scope.successMessage, 'small');
        var e = document.getElementById("mySelect2");
        var strUser = e.options[e.selectedIndex].text;
        var vid=strUser.split("---");

        var data = {
            requestId : 0,
            modelId : vid[0],
            isProcessed : "false",
            units : units,
            mfEmailId:mfEmailId,
            orderDate : orderDate
        };
        console.log("inpostsend");
        $http.post('http://localhost:8080/rest/server/getVehicleRequest', data).then(function (response) {
            if (response.data)
                document.getElementById("showTableLoader").style.display="none";
            $scope.msg = "Post Data Submitted Successfully!";
        }, function (response) {
            $scope.msg = "Service not Exists";
            $scope.statusval = response.status;
            $scope.statustext = response.statusText;
            $scope.headers = response.headers();
        });
    };
});
app.controller('postSparePartRequest', function ($scope, $http, myModals) {
    $scope.requestId = null;
    $scope.sparePartId = null;
    $scope.isProcessed = null;
    $scope.units = null;
    $scope.mfEmailId=null;
    $scope.orderDate = null;
    //console.log("inpost");
    $scope.postData = function (sparePartId, isProcessed, units,mfEmailId, orderDate) {
        myModals.alert('success', $scope.successMessage, 'small');
        var e = document.getElementById("mySelect3");
        var strUser = e.options[e.selectedIndex].text;
        var vid=strUser.split("---");

        var data = {
            requestId : 0,
            sparePartId : vid[0],
            isProcessed : isProcessed,
            units : units,
            mfEmailId:mfEmailId,
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
app.controller('updateVehicleModelRequest', function ($scope, $http, myModals) {
    $scope.requestId = null;
    $scope.modelId = null;
    $scope.isProcessed = null;
    $scope.units = null;
    $scope.mfEmailId = null;
    $scope.orderDate = null;
    console.log("inposter");
    $scope.updateData = function (requestId, modelId, isProcessed, units,mfEmailId, orderDate) {
        myModals.alert('success', $scope.successMessage, 'small');
        var data = {
            requestId : requestId,
            modelId : modelId,
            isProcessed : isProcessed,
            units : units,
            mfEmailId: mfEmailId,
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


app.controller('updateSparePartRequest', function ($scope, $http, myModals) {
    $scope.requestId = null;
    $scope.sparePartId = null;
    $scope.isProcessed = null;
    $scope.units = null;
    $scope.mfEmailId=null;
    $scope.orderDate = null;
    console.log("inposter");
    $scope.updateData = function (requestId, modelId, isProcessed, units,mfEmailId, orderDate) {
        myModals.alert('success', $scope.successMessage, 'small');
        var data = {
            requestId : requestId,
            sparePartId : modelId,
            isProcessed : true,
            units : units,
            mfEmailId:mfEmailId,
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

app.controller('viewVehicleControllerNotif', function($scope, $http) {
    $http.get('http://localhost:8080/rest/server/viewVehicleModel').
    then(function(response) {
        $scope.data = response.data;
    });
});
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
            var value2 = obj["modelName"]+" "+obj["color"];
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
            title : "Vehicle Stock",
            height: 500,
            width: 1150
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
                $scope.map[value1] = obj["units"];

            }
            else{
                console.log("it was here");
                $scope.map[value1] = $scope.map[value1]+obj["units"];
            }
        }
        $scope.width = [];
        for(var key in $scope.map){
            $scope.y.push($scope.map[key]);
            $scope.width.push(0.1);
        }
        //console.log($scope.y);
        //console.log(JSON.stringify($scope.map));

        var trace0 = {
            type : 'bar',
            x : Object.keys($scope.map),
            y : $scope.y,
            width : $scope.width
        }

        $scope.layout1 = {
            title : "Vehicle Stock By Body Type",
            height: 500,
            width: 1150
        };

        var data = [trace0];
        Plotly.plot(bodyDiv, data, $scope.layout1);
    });
});

app.factory('myModals', ['$uibModal', function ($uibModal) {
    // called from various methods within factory
    function openModal(template, data, options) {
        var modalOpts = {
            animation : true,
            templateUrl : template,
            controller : function ($scope, $uibModalInstance, alert_data) {
                $scope.alert_data = alert_data;
                $scope.cancel = function () {
                    $uibModalInstance.dismiss('cancel');
                };
            },
            resolve : {
                alert_data : data
            },
            size : 'medium',
            backdrop : 'static'
        };
        // extend options set in each use type function
        if (options) {
            angular.extend(modalOpts, modalOpts);
        }
        var modalInstance = $uibModal.open(modalOpts);

        modalInstance.result.then(function (data) {
            // always do something when close called
            return data;
        }, function (data) {
            //always do something when dismiss called
            console.log("modal dismissed");
            return data
        });

        return modalInstance;
    }

    // one type of modal
    function alert(type, text, size) {
        var template = type === 'success' ? '../template-success.html' : '../template-error.html';

        var opts = {
            size : size || 'sm'
        };
        var data = {
            title : type === 'success' ? "OK" : "Ooops",
            text : text
        };

        return openModal(template, data, opts);

    }

    return {
        alert : alert
    }

}]);