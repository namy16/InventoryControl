
$(document).ready(function() {
$("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
        //alert(1);
    });

});


var xmlhttp;
function CheckCredentials()
{
    document.getElementById("showLoader").style.display="block";
    document.getElementById("errorMessage").style.display="none";

    var u=document.getElementById("form-username").value;
    var p=document.getElementById("form-password").value;
    xmlhttp=new XMLHttpRequest();
    xmlhttp.onreadystatechange=f3;
    xmlhttp.open("GET","CheckUsername.jsp?id1="+u+"&id2="+p,true);
    xmlhttp.send(null);
    //console.log("iiiiiiii");
}
function f3()
{
    if(xmlhttp.readyState===4 && xmlhttp.status===200)
    {
        str=xmlhttp.responseText;


        if(str.trim()==="error"){
            document.getElementById("showLoader").style.display="none";
           document.getElementById("errorMessage").style.display="block";
            }
        else{
            document.getElementById("errorMessage").style.display="none";
            document.getElementById("showLoader").style.display="none";
           document.getElementById("loginForm").submit();
        }


    }
}
