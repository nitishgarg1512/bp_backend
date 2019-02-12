<div class="modal fade" id="modal-edit-pitches">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="c-lightred">&times;</span></button>
                <div id="createPitchForm">
                    <h5 class="text-center">Create {{ $venue->name }} pitches</h5>
                    <form role="form" id="addVenueFormAjax" action="" method="post">
                        <div class="box-body">
                            <div class="form-group">
                                <input type="text" class="form-control" name="pitchName" id="pitchName" placeholder="Pitch Name">
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="pitchType" name="pitchType">
                                    <option value="-1">Pitch Type</option>
                                    @foreach ($pitchTypes as $key => $type)
                                        <option value="{{$key}}">{{$type}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="pitchFormat" name="pitchFormat">
                                    <option value="-1">Pitch Format</option>
                                    @foreach ($pitchFormats as $key => $format)
                                        <option value="{{$key}}">{{$format}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" id="addVenue" class="btn btn-primary btn-main-primary pull-right shadow">Create</button>
                        </div>
                    </form>
                </div>
                <div id="createPitchForm" style="display: none;"></div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
