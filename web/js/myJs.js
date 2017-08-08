
$(document).ready(function() {

    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
        //alert(1);
    });



    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            modelName: {
                validators: {
                    stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please Enter Model Name'
                    }
                }
            },
            price: {
                validators: {
                    notEmpty: {
                        message: 'Please Enter Price'
                    }
                }
            },
            bodyType: {
                validators: {
                    stringLength: {
                        min: 2,
                    },

                    notEmpty: {
                        message: 'Please Enter Body Type'
                    },

                }
            },
            color: {
                validators: {
                    notEmpty: {
                        message: 'Please enter a color'
                    },

                }
            },
            transmission: {
                validators: {
                    stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please Enter Transmission type'
                    }
                }
            },
            units: {
                validators: {

                    notEmpty: {
                        message: 'Please Enter Model Stock'
                    }
                }
            },
            Description: {
                validators: {
                    stringLength: {
                        min: 6,
                    },
                    notEmpty: {
                        message: 'Please Write a description'
                    }
                }
            },

        }
    })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow"); alert("success");// Do something ...
            $('#contact_form').data('bootstrapValidator').resetForm();

            // Prevent form submission
            // e.preventDefault();
            //
            // // Get the form instance
            // var $form = $(e.target);
            //
            // // Get the BootstrapValidator instance
            // var bv = $form.data('bootstrapValidator');
            //
            // // Use Ajax to submit form data
            // $.post($form.attr('action'), $form.serialize(), function(result) {
            //     console.log(result);
            // }, 'json');
        });
});

