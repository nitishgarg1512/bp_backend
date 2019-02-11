<div class="modal fade" id="modal-add-venue">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="c-lightred">&times;</span></button>
                <div id="addVenueForm">
                    <h5 class="text-center">Add a venue</h5>
                    <form role="form" id="addVenueFormAjax" action="" method="post">
                        <div class="box-body">
                            <div class="form-group">
                                <input type="text" class="form-control" name="venueName" id="venueName" placeholder="Venue Name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="venueAddress" id="venueAddress" placeholder="Venue Address">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <input type="text" class="form-control" name="postCode1" id="postcode_1" placeholder="1st half of postcode">
                                    </div>
                                    <div class="col-xs-6">
                                        <input type="text" class="form-control" name="postCode2" id="postcode_2" placeholder="2st half of postcode">
                                    </div>
                                </div>
                            </div>
                            <h5 class="text-center">Now, Invite a venue manager</h5>
                            <div class="form-group">
                                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="First name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="surname" name="surname" placeholder="Surname (Optional)">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" id="addVenue" class="btn btn-primary btn-main-primary pull-right shadow">Invite</button>
                        </div>
                    </form>
                </div>
                <div id="addVenueContainer" style="display: none;"></div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
