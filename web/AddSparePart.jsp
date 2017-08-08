<div class="row"  >
    <div class="panel " style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Add Spare Part</h3>
        </div>
    </div>
    <div style="position: fixed;top:24%;left:71%;" id="showTableLoader">
    <img src="images/tableloader.gif" width="38"></div>
    <form class="well form-horizontal" name="myForm2" action=" " method="post"  id="contact_form"  enctype="multipart/form-data" ng-controller="postSparePart">
        <fieldset >
            <div class="form-group" ng-controller="viewVehicleController">
                <label class="col-md-4 control-label">Vehicle Model</label>
                <div class="col-md-4 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-car" aria-hidden="true"></i></span>
                        <select name="selectId" id="mySelect" class="form-control selectpicker" ng-model="vehicleModelId" ng-options="something as x.modelId+'---'+x.modelName for x in data" required>
                            <option value="">Select Model</option>
                        </select>
                    </div>

                </div>
            </div>
            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label mycolor" style="color: white;">Spare Part Name</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cog" aria-hidden="true"></i></span>
                        <input name="spName" placeholder="Spare Part Name" class="form-control"  type="text" ng-model="sparePartName" required>
                    </div>
                    <p ng-show="myForm2.spName.$invalid && myForm2.spName.$touched" class="help_block" style="color:orangered"><b>Spare part Name is required!</b></p>

                </div>

            </div>

            <div class="form-group">
                <label class="col-md-4 control-label mycolor" style="color: white">Price</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-inr" aria-hidden="true"></i></span>
                        <input name="price" placeholder="Price" class="form-control"  type="number" ng-model="price" required>
                    </div>
                    <p ng-show="myForm2.price.$invalid && myForm2.price.$touched" class="help_block" style="color:orangered"><b>Price is required!</b></p>

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group" id="showButton">
                <label class="col-md-4 control-label" style="color: white;">Image</label>
                <div class="col-md-4 inputGroupContainer" >
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-file-picture-o"></i></span>
                        <input name="file" id="vfiles" value="Choose Image" class="form-control" type="file" files-input ng-model="fileArray" multiple required >
                    </div>
                    <p ng-show="myForm2.file.$invalid && myForm2.file.$untouched" class="help_block" style="color:orangered"><b>Choose a image and upload!</b></p>

                </div>
                <span ><button type="button" class="btn" style="background: #011635;color: white;" onclick="AjaxFileUpload()"><i class="fa fa-upload" aria-hidden="true"></i></button></span>
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
                <label class="col-md-4 control-label" style="color: white">Units</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-list-ol" aria-hidden="true"></i></span>
                        <input name="units" placeholder="Units" class="form-control"  type="number" ng-model="units" required>
                    </div>
                    <p ng-show="myForm2.units.$invalid && myForm2.units.$touched" class="help_block" style="color:orangered"><b>Units required!</b></p>

                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white">Release Date</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class='input-group date' id='datetimepicker1'>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                        <input type='date' class="form-control" name="date" ng-model="orderedOn"/>
                    </div>
                    <p ng-show="myForm2.date.$invalid && myForm2.date.$touched" class="help_block" style="color:orangered"><b>Date is required!</b></p>

                </div>
            </div>

            <!-- Button -->
            <div class="form-group" >
                <label class="col-md-4 control-label" ></label>
                <div class="col-md-4" style="padding-left: 13% ">
                    <button style="background: #011635;color: white" type="submit" class="btn" ng-click="postsData(vehicleModelId.modelName, sparePartName , price, image, units, orderedOn)"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Add </button>
                </div>
            </div>

        </fieldset>

    </form>

    <!-- /.container -->

</div>
