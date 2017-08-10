<div class="row" ng-controller="settingsController">
    <div class="panel" style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Settings</h3>
        </div>
    </div>
    <form class="well form-horizontal" name="myForm2" action=" " method="post"  id="contact_form"  enctype="multipart/form-data" ng-controller="postSparePart">
        <fieldset >
            <div class="form-group">
                <label class="col-md-4 control-label mycolor" style="color: white;">Change Name</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cog" aria-hidden="true"></i></span>
                        <input name="spName" placeholder="Enter New Name" class="form-control"  type="text" ng-model="sparePartName" required>
                    </div>
                    <p ng-show="myForm2.spName.$invalid && myForm2.spName.$touched" class="help_block" style="color:orangered"><b>Name is required!</b></p>

                </div>

            </div>

            <div class="form-group">
                <label class="col-md-4 control-label mycolor" style="color: white">Enter Current Password</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-inr" aria-hidden="true"></i></span>
                        <input name="password" placeholder="" class="form-control"  type="text" ng-model="password" required>
                    </div>
                    <p ng-show="myForm2.price.$invalid && myForm2.price.$touched" class="help_block" style="color:orangered"><b>Current Password is required!</b></p>

                </div>
            </div>

            <div class="form-group" >
                <label class="col-md-4 control-label" style="color: #011635;"></label>
                <div class="col-md-4 inputGroupContainer"  >
                    <div class="input-group" style="align-content: center;padding-left: 70px">
                        &nbsp;<b style="font-family: Arial;font-size: medium;color: white">Change Password</b></i>
                    </div>
                </div>

            </div>


            <div class="form-group">
                <label class="col-md-4 control-label mycolor" style="color: white">Enter New Password</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-inr" aria-hidden="true"></i></span>
                        <input name="newpassword" eplaceholder="" class="form-control"  type="text" ng-model="newpassword" required>
                    </div>
                    <p ng-show="myForm2.price.$invalid && myForm2.price.$touched" class="help_block" style="color:orangered"><b>New Password is required!</b></p>

                </div>
            </div>


            <!-- Text input-->
            <div class="form-group" id="showButton">
                <label class="col-md-4 control-label" style="color: white;">Change Profile Picture</label>
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
                        <i  style="color: #42f445;" class="fa fa-check fa-2x" aria-hidden="true">&nbsp;<b style="font-family: Arial;font-size: medium">Profile Picture Changed!!</b></i>
                    </div>
                </div>

            </div>

            <div class="form-group" >
                <label class="col-md-4 control-label" ></label>
                <div class="col-md-4" style="padding-left: 13% ">
                    <button style="background: #011635;color: white" type="submit" class="btn" ng-click="postsData(vehicleModelId.modelName, sparePartName , price, image, units, orderedOn)"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Add </button>
                </div>
            </div>

        </fieldset>

    </form>

</div><!-- /.container -->
