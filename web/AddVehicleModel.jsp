<div class="row"  >
    <div class="panel " style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Add Vehicle Model</h3>
        </div>
    </div>
    <form class="well form-horizontal" action=" " name="myForm" method="post"  id="contact_form"  enctype="multipart/form-data" ng-controller = "postVehicleModel" >
        <fieldset >
             <div class="form-group">
                <label class="col-md-4 control-label" style="color: white;">Model Name</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-car" aria-hidden="true"></i></span>
                        <input  name="modelName" placeholder="Model Name" class="form-control"  type="text" ng-model = "modelName" required>
                    </div>
                    <p ng-show="myForm.modelName.$invalid &&myForm.modelName.$touched " class="help_block" style="color: orangered"><b>Model Name is required!</b></p>
                </div>
            </div>


            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label mycolor" style="color: white;">Price</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-inr" aria-hidden="true"></i></span>
                        <input name="price" placeholder="Price" class="form-control"  type="number" ng-model="price" required>
                    </div>
                    <p ng-show="myForm.price.$invalid &&myForm.price.$touched " class="help_block" style="color: orangered"><b>Price is required!</b></p>
                </div>
            </div>



            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label mycolor" style="color: white;">Body Type</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-truck"></i></span>
                        <input name="bodyType" placeholder="Body Type" class="form-control"  type="text" ng-model="bodyType" required>
                    </div>
                    <p ng-show="myForm.bodyType.$invalid &&myForm.bodyType.$touched " class="help_block" style="color: orangered"><b>Body Type is required!</b></p>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white">Color</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-paint-brush" aria-hidden="true"></i></span>
                        <input name="color" placeholder="Color" class="form-control"  type="text" ng-model="color" required>
                    </div>
                    <p ng-show="myForm.color.$invalid &&myForm.color.$touched " class="help_block" style="color: orangered"><b>Color is required!</b></p>
                </div>
            </div>


            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white">Transmission</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-car"></i></span>
                        <input name="transmission" placeholder="Transmission" class="form-control" type="text" ng-model="transmission" required>
                        </div>
                    <p ng-show="myForm.transmission.$invalid &&myForm.transmission.$touched " class="help_block" style="color: orangered"><b>transmission is required!</b></p>
                </div>
            </div>

            <!-- Text input-->

            <div class="form-group" id="showButton">
                <label class="col-md-4 control-label" style="color: white">Image</label>
                <div class="col-md-4 inputGroupContainer" >
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-file-picture-o"></i></span>
                        <input name="file" id="vfiles" value="Choose Image" class="form-control" type="file" files-input ng-model="fileArray" multiple required >
                    </div>
                    <p ng-show="myForm.file.$invalid && !!myForm.file.$untouched " class="help_block" style="color: orangered"><b>Please choose a file and upload it!</b></p>

                </div>
                <span ><button name="uploadButton" type="button" class="btn" style="background: #011635;color: white;" onclick="AjaxFileUpload()" ><i class="fa fa-upload" aria-hidden="true"></i></button></span>

            </div>

            <div class="form-group" id="showLoading" style="display: none">
                <label class="col-md-4 control-label" style="color: white">Image</label>
                <div class="col-md-4 inputGroupContainer"  >
                    <div class="input-group" style="align-content: center;padding-left: 45%">
                        <img src="images/loaders.gif">
                    </div>
                </div>
            </div>
            <div class="form-group" id="showMessage" style="display: none">
                <label class="col-md-4 control-label" style="color: white"></label>
                <div class="col-md-4 inputGroupContainer"  >
                    <div class="input-group" style="align-content: center;padding-left: 70px">
                        <i  style="color: #42f445;" class="fa fa-check fa-2x" aria-hidden="true">&nbsp;<b style="font-family: Arial;font-size: medium">Image Uploaded Successfully</b></i>
                    </div>
                </div>

            </div>
            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white">Units</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-list-ol" aria-hidden="true"></i></span>
                        <input name="units" placeholder="Units" class="form-control"  type="number" ng-model="units" required>
                    </div>
                    <p ng-show="myForm.units.$invalid &&myForm.units.$touched " class="help_block" style="color: orangered"><b>Units required!</b></p>
                </div>
            </div>



            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white">Description</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
                        <input name="description" placeholder="Description" class="form-control"  type="text" ng-model="description">
                    </div>
                    <p ng-show="myForm.description.$invalid &&myForm.description.$touched " class="help_block" style="color: orangered"><b>Description is required!</b></p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white">Release Date</label>
                <div class="col-md-4 inputGroupContainer">
                <div class='input-group date' id='datetimepicker1'>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                    <input type='date' class="form-control" name="date" ng-model="releaseDate"/>


                </div>
                    <p ng-show="myForm.date.$invalid &&myForm.date.$touched " class="help_block" style="color: orangered"><b>Date is required!</b></p>


                </div>
            </div>
        </fieldset>


                    <!-- Button -->
            <div class="form-group" >
                <label class="col-md-4 control-label" ></label>
                <div class="col-md-4" style="padding-left: 13% ">
                    <button style="background: #011635;color: white" type="submit" class="btn" ng-click="postData(modelName,price, bodyType, transmission, color, image, units, description, releaseDate)"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Add </button>
                </div>
            </div>

        </fieldset>

    </form>

<!-- /.container -->

    </div>
