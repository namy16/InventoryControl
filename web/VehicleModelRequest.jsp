<div class="row"  >
    <div class="panel " style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Add Vehicle Model Request</h3>
        </div>
    </div>
    <div style="position: fixed;top:24%;left:71%;" id="showTableLoader">
        <img src="images/tableloader.gif" width="38"></div>

    <form class="well form-horizontal" name="myForm3" action=" " method="post"  id="contact_form"  enctype="multipart/form-data" ng-controller = "postVehicleModelRequest">
        <fieldset >


            <div class="form-group" ng-controller="viewVehicleController">
                <label class="col-md-4 control-label">Vehicle Model</label>
                <div class="col-md-4 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-car" aria-hidden="true"></i></span>
                        <select name="vmid" id="mySelect2" class="form-control selectpicker" ng-model="modelId" ng-options="something as x.modelId+'---'+x.modelName for x in data" required>
                            <option value="">Select Model</option>
                        </select>
                    </div>
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white;">Units</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-list-ol" aria-hidden="true"></i></span>
                        <input name="units" placeholder="Units" class="form-control"  type="number" ng-model="units" required>
                    </div>
                    <p ng-show="myForm3.units.$invalid && myForm3.units.$touched" class="help_block" style="color:orangered"><b>Units Required!</b></p>

                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white;">Manufacturer Email ID</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        <input name="email" placeholder="Email ID" class="form-control"  type="email" ng-model="mfEmailId" required>
                    </div>
                    <p ng-show="myForm3.email.$invalid && myForm3.email.$touched" class="help_block" style="color:orangered"><b>Enter Valid Email!</b></p>

                </div>
            </div>


            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white;">Order Date</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class='input-group'>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                        <input type='date' class="form-control" name="date" ng-model="orderDate" required/>
                    </div>
                    <p ng-show="myForm3.date.$invalid && myForm3.date.$touched" class="help_block" style="color:orangered"><b>Date is Required!</b></p>

                </div>
            </div>

            <!-- Button -->
            <div class="form-group" >
                <label class="col-md-4 control-label" ></label>
                <div class="col-md-4" style="padding-left: 13% ">
                    <button style="background: #011635;color: white" type="submit" class="btn" ng-click="postData(modelId.modelId, isProcessed, units,mfEmailId, orderDate)"><i class="fa fa-plus-square-o" aria-hidden="true" ></i> Add </button>
                </div>
            </div>

        </fieldset>

    </form>

    <!-- /.container -->

</div>