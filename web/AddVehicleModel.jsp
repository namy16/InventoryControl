<div class="row"  >
    <div class="panel " style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Add Vehicle Model</h3>
        </div>
    </div>
    <form class="well form-horizontal" action=" " method="post"  id="contact_form"  enctype="multipart/form-data" ng-controller = "postVehicleModel" >
        <fieldset >
             <div class="form-group">
                <label class="col-md-4 control-label" style="color: #011635;">Model Name</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-car" aria-hidden="true"></i></span>
                        <input  name="modelname" placeholder="Model Name" class="form-control"  type="text" ng-model = "modelName" >
                    </div>
                </div>
            </div>


            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label mycolor" style="color: #011635;">Price</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-inr" aria-hidden="true"></i></span>
                        <input name="price" placeholder="Price" class="form-control"  type="number" ng-model="price">
                    </div>
                </div>
            </div>



            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label mycolor" style="color: #011635;">Body Type</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-truck"></i></span>
                        <input name="bodytype" placeholder="Body Type" class="form-control"  type="text" ng-model="bodyType">
                    </div>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" style="color: #011635;">Color</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-paint-brush" aria-hidden="true"></i></span>
                        <input name="color" placeholder="Color" class="form-control"  type="text" ng-model="color">
                    </div>
                </div>
            </div>


            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: #011635;">Transmission</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-car"></i></span>
                        <input name="transmission" placeholder="Transmission" class="form-control" type="text" ng-model="transmission">
                    </div>
                </div>
            </div>

            <!-- Text input-->

            <div class="form-group" id="showButton">
                <label class="col-md-4 control-label" style="color: #011635;">Image</label>
                <div class="col-md-4 inputGroupContainer" >
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-file-picture-o"></i></span>
                        <input name="file" id="vfiles" value="Choose Image" class="form-control" type="file" files-input ng-model="fileArray" multiple required >
                    </div>
                </div>
                <span ><button type="button" class="btn" style="background: #011635;color: white;" onclick="AjaxFileUpload()" ><i class="fa fa-upload" aria-hidden="true"></i></button></span>
            </div>
            <div class="form-group" id="showLoading" style="display: none">
                <label class="col-md-4 control-label" style="color: #011635;">Image</label>
                <div class="col-md-4 inputGroupContainer"  >
                    <div class="input-group" style="align-content: center;padding-left: 45%">
                        <img src="images/loaders.gif">
                    </div>
                </div>
            </div>
            <div class="form-group" id="showMessage" style="display: none">
                <label class="col-md-4 control-label" style="color: #011635;"></label>
                <div class="col-md-4 inputGroupContainer"  >
                    <div class="input-group" style="align-content: center;padding-left: 70px">
                        <i  style="color: #42f445;" class="fa fa-check fa-2x" aria-hidden="true">&nbsp;<b style="font-family: Arial;font-size: medium">Image Uploaded Successfully</b></i>
                    </div>
                </div>

            </div>
            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: #011635;">Units</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-list-ol" aria-hidden="true"></i></span>
                        <input name="units" placeholder="Units" class="form-control"  type="number" ng-model="units">
                    </div>
                </div>
            </div>



            <div class="form-group">
                <label class="col-md-4 control-label" style="color: #011635;">Description</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
                        <input name="description" placeholder="Description" class="form-control"  type="text" ng-model="description">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" style="color: #011635;">Release Date</label>
                <div class="col-md-4 inputGroupContainer">
                <div class='input-group date' id='datetimepicker1'>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                    <input type='date' class="form-control" name="date" ng-model="releaseDate"/>

                </div>

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
