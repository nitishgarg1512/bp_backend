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
                                <input type="checkbox" id="changingRoom" <?php echo !empty($facilities) && $facilities->changing_rooms ? 'checked' : ''; ?> />
                            </div>
                        </div>
                        <div class="clearfix facilities-item">
                            <div class="pull-left">
                                Parking
                            </div>
                            <div class="pull-right ">
                                <input type="checkbox" id="parking" <?php echo !empty($facilities) && $facilities->parking ? 'checked' : ''; ?> />
                            </div>
                        </div>
                        <div class="clearfix facilities-item">
                            <div class="pull-left">
                                Bar/Pub (Nearby)
                            </div>
                            <div class="pull-right ">
                                <input type="checkbox" id="nearby" <?php echo !empty($facilities) && $facilities->near_by ? 'checked' : ''; ?> />
                            </div>
                        </div>
                        <div class="clearfix facilities-item">
                            <div class="pull-left">
                                Flood Lights
                            </div>
                            <div class="pull-right ">
                                <input type="checkbox" id="floodLights" <?php echo !empty($facilities) && $facilities->flood_lights ? 'checked' : ''; ?> />
                            </div>
                        </div>
                        <input type="hidden" id="facilitiesVenueId" value="{{$venue->id}}" />
                    </div>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
