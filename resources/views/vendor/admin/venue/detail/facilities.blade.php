<div class="col-md-4">
    <div class="box box-solid box-default">
        <div class="box-body facilities">
            <div class="facilities-item">
                <div class="pull-left">
                    <b>Facilities</b>
                </div>
                <div class="pull-right ">
                    <a href="javascript:void();" data-toggle="modal" data-target="#modal-edit-facilities">
                        <i class="fa fa-edit"></i>
                    </a>
                </div>
            </div>
            <br clear="all" />
            <div class="clearfix facilities-item">
                <div class="pull-left">
                    Changing rooms
                </div>
                <div class="pull-right">
                    <?php echo !empty($facilities) && $facilities->changing_rooms ? 'Yes' : 'No'; ?>
                </div>
            </div>
            <div class="clearfix facilities-item">
                <div class="pull-left">
                    Parking
                </div>
                <div class="pull-right ">
                    <?php echo !empty($facilities) && $facilities->parking ? 'Yes' : 'No'; ?>
                </div>
            </div>
            <div class="clearfix facilities-item">
                <div class="pull-left">
                    Bar/Pub (Nearby)
                </div>
                <div class="pull-right ">
                    <?php echo !empty($facilities) && $facilities->address ? 'Yes' : 'No'; ?>
                </div>
            </div>
            <div class="clearfix facilities-item">
                <div class="pull-left">
                    Flood Lights
                </div>
                <div class="pull-right ">
                    <?php echo !empty($facilities) && $facilities->flood_lights ? 'Yes' : 'No'; ?>
                </div>
            </div>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
</div>
