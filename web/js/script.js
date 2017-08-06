/**
 * Created by prajapas on 8/5/2017.
 */
angular.module('myApp', ['naif.base64'])
    .controller('ctrl', function($scope, $http, $window, $rootScope){

        $scope.onChange = function (e, fileList) {
            alert('this is on-change handler!');
        };

        $scope.onLoad = function (e, reader, file, fileList, fileOjects, fileObj) {
            alert('this is handler for file reader onload event!');
        };

        var uploadedCount = 0;

        $scope.files = [];
    });

// function AjaxFileUpload() {
//     var file = document.getElementById("files");
//     //var file = fileInput;
//     var fd = new FormData();
//     fd.append("imageFileData", file);
//     var xhr = new XMLHttpRequest();
//     xhr.open("GET", '/ws/fileUpload.do');
//     xhr.onreadystatechange = function () {
//         if (xhr.readyState == 4) {
//             alert('success');
//         }
//         else if (uploadResult == 'success')
//             alert('error');
//     };
//     xhr.send(fd);
// }

var xmlhttp;
function AjaxFileUpload()
{
    /*
     var formData = new FormData();
     formData.append("thefile", file);
     xhr.send(formData);
     */
    document.getElementById("showButton").style.display="none";
    document.getElementById("showLoading").style.display="block";
    var ifile = document.getElementById("vfiles");
    var fd = new FormData();
    fd.append("imageFileData", ifile.files[0]);
    console.log("ifile");
    xmlhttp=new XMLHttpRequest();
    xmlhttp.onreadystatechange=f2;
    xmlhttp.open("POST","http://localhost:8080/fileServlet",true);
    xmlhttp.send(fd);
    //console.log("iiiiiiii");
}
function f2()
{

    if(xmlhttp.readyState===4 && xmlhttp.status===200)
    {
        str=xmlhttp.responseText;
        if(str.trim()==="success"){
            document.getElementById("showLoading").style.display="none";
            document.getElementById("showMessage").style.display="block";
        }
        if(str.trim()==="fail"){
            document.getElementById("showLoading").style.display="none";
            document.getElementById("showMessage").style.display="none";
            document.getElementById("showButton").style.display="block";
           alert("Choose an Image first");
        }


    }
}