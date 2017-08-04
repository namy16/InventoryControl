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
    $('#datetimepicker1').datetimepicker();

});
