<div class="row"  >
    <div class="panel " style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Add Spare Part Request</h3>
        </div>
    </div>
    <div style="position: fixed;top:24%;left:71%;" id="showTableLoader">
        <img src="images/tableloader.gif" width="38"></div>

    <form class="well form-horizontal" name="myForm4" action=" " method="post"  id="contact_form"  enctype="multipart/form-data" ng-controller="postSparePartRequest">
        <fieldset >
            <div class="form-group" ng-controller="viewSparePartController">
                <label class="col-md-4 control-label">Spare Part</label>
                <div class="col-md-4 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cog" aria-hidden="true"></i></span>
                        <select name="vmid" id="mySelect3" class="form-control selectpicker" ng-model="sparePartId" ng-options="something as x.sparePartId+'---'+x.sparePartName for x in data" required>
                            <option value="">Select Spare Part</option>
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
                    <p ng-show="myForm4.units.$invalid && myForm4.units.$touched" class="help_block" style="color:orangered"><b>Units required!</b></p>

                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white;">Manufacturer Email ID</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        <input name="email" placeholder="Email ID" class="form-control"  type="email" ng-model="mfEmailId">
                    </div>
                    <p ng-show="myForm4.email.$invalid && myForm4.email.$touched" class="help_block" style="color:orangered"><b>Enter Valid Email!</b></p>

                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: white;">Order Date</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class='input-group date' id='datetimepicker1'>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                        <input type='date' class="form-control" name="date" ng-model="orderDate"/>
                    </div>
                    <p ng-show="myForm4.date.$invalid && myForm4.date.$touched" class="help_block" style="color:orangered"><b>Enter Valid Date!</b></p>

                </div>
            </div>

            <!-- Button -->
            <div class="form-group" >
                <label class="col-md-4 control-label" ></label>
                <div class="col-md-4" style="padding-left: 13% ">
                    <button style="background: #011635;color: white" type="submit" class="btn" ng-click="postData(sparePartId.sparePartId, isProcessed, units,mfEmailId, orderDate)"><i class="fa fa-plus-square-o" aria-hidden="true"></i> Add </button>
                </div>
            </div>

        </fieldset>

    </form>

    <!-- /.container -->

</div>
