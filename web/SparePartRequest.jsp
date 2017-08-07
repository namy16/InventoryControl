<div class="row"  >
    <div class="panel " style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Add Spare Part Request</h3>
        </div>
    </div>
    <div style="position: fixed;top:24%;left:71%;" id="showTableLoader">
        <img src="images/tableloader.gif" width="38"></div>

    <form class="well form-horizontal" action=" " method="post"  id="contact_form"  enctype="multipart/form-data" ng-controller="postSparePartRequest">
        <fieldset >
            <div class="form-group" ng-controller="viewSparePartController">
                <label class="col-md-4 control-label">Spare Part</label>
                <div class="col-md-4 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cog" aria-hidden="true"></i></span>
                        <select name="vmid" id="mySelect3" class="form-control selectpicker" ng-model="sparePartId" ng-options="something as x.sparePartId+'---'+x.sparePartName for x in data">
                            <option value="">Select Spare Part</option>
                        </select>
                    </div>
                </div>
            </div>

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
                <label class="col-md-4 control-label" style="color: #011635;">Manufacturer Email ID</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        <input name="email" placeholder="Email ID" class="form-control"  type="text" ng-model="mfEmailId">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: #011635;">Order Date</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class='input-group date' id='datetimepicker1'>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                        <input type='date' class="form-control" name="date" ng-model="orderDate"/>
                    </div>
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
