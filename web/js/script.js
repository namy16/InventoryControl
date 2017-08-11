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

var xmlhttp1;
function ChangeProfilePicture()
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
    xmlhttp1=new XMLHttpRequest();
    xmlhttp1.onreadystatechange=f7;
    xmlhttp1.open("POST","http://localhost:8080/fileServlet",true);
    xmlhttp1.send(fd);
    //console.log("iiiiiiii");
}
function f7()
{

    if(xmlhttp1.readyState===4 && xmlhttp1.status===200)
    {
        str=xmlhttp1.responseText;
        if(str.trim()==="success"){
            document.getElementById("showLoading").style.display="none";
            document.getElementById("showMessage").style.display="block";
        changeImage();
        }
        if(str.trim()==="fail"){
            document.getElementById("showLoading").style.display="none";
            document.getElementById("showMessage").style.display="none";
            document.getElementById("showButton").style.display="block";
            alert("Choose an Image first");
        }


    }
}


function changeImage() {
    var file=document.getElementById("vfiles").value;
    var files=file.substring(12);
    localStorage.clear();
localStorage.setItem("image3",files);
    window.location.reload(true);
}
function changeImageNow() {
    var Img = document.getElementById("profilepic");
   var b= localStorage.getItem("image3");
    console.log("here it is"+b);
    if(b!=null) {
        Img.src = "/images/" + b;
    }
    else{
        Img.src = "/images/" + "defaultProfile2.jpg";
    }
    }



