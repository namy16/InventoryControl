<div class="row"  >
    <div class="panel " style="border-style: none;">
        <div class="panel-heading" id="mypanelheading" >
            <h3 class="mypanelheading"> Add Vehicle Model Request</h3>
        </div>
    </div>
    <form class="well form-horizontal" action=" " method="post"  id="contact_form"  enctype="multipart/form-data">
        <fieldset >
            <div class="form-group">
                <label class="col-md-4 control-label" style="color: #011635;">Vehicle Model Id</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-car" aria-hidden="true"></i></span>
                        <input  name="vmid" placeholder="Vehicle Model Id" class="form-control"  type="number">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Request Processed?</label>
                <div class="col-md-4">
                    <div class="radio">
                        <label>
                            <input type="radio" name="hosting" value="Yes" /> Yes
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="hosting" value="No" /> No
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" style="color: #011635;">Units</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-list-ol" aria-hidden="true"></i></span>
                        <input name="units" placeholder="Units" class="form-control"  type="number">
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
                        <input type='date' class="form-control" name="date" />
                    </div>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group" >
                <label class="col-md-4 control-label" ></label>
                <div class="col-md-4" style="padding-left: 13% ">
                    <button style="background: #011635;color: white" type="submit" class="btn" ><i class="fa fa-plus-square-o" aria-hidden="true"></i> Add </button>
                </div>
            </div>

        </fieldset>

    </form>

    <!-- /.container -->

</div>
