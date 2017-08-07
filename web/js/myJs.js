/**
 * Created by prajapas on 8/3/2017.
 */

/*Menu-toggle*/
$(document).ready(function() {
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
        //alert(1);
    });
    //$('#datetimepicker1').datetimepicker();

});

var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var b = document.getElementById("mybutton");
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");


b.onclick = function(){
    alert(b.innerHTML);
    modal.style.display = "block";
    modalImg.src = "/images/Koala.jpg";
    captionText.innerHTML = "Koala";
};



// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
};