<div class="modal fade" id="modal-edit-facilities">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="c-lightred">&times;</span></button>
                <div id="editFacilitiesForm">
                    <h5 class="text-center">Edit {{ $venue->name }} facilities</h5>
                    <div class="box-body">
                        <div class="clearfix facilities-item">
                            <div class="pull-left">
                                Changing rooms
                            </div>
                            <div class="pull-right">
                                <input type="checkbox" />
                            </div>
                        </div>
                        <div class="clearfix facilities-item">
                            <div class="pull-left">
                                Parking
                            </div>
                            <div class="pull-right ">
                                <input type="checkbox" />
                            </div>
                        </div>
                        <div class="clearfix facilities-item">
                            <div class="pull-left">
                                Bar/Pub (Nearby)
                            </div>
                            <div class="pull-right ">
                                <input type="checkbox" />
                            </div>
                        </div>
                        <div class="clearfix facilities-item">
                            <div class="pull-left">
                                Flood Lights
                            </div>
                            <div class="pull-right ">
                                <input type="checkbox" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
