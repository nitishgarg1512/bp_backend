<div class="modal fade" id="modal-invite-user">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="c-lightred">&times;</span></button>
                <div id="inviteUserForm">
                    <h5 class="text-center">Invite a new user</h5>
                    <form role="form">
                        <div class="box-body">
                            <div class="form-group">
                                <input type="text" class="form-control" id="firstName" placeholder="First name">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="surname" placeholder="Surname (Optional)">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" id="email" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <select class="form-control">
                                            <option value="-1">User Type</option>
                                            <option value="GO">General Overseer</option>
                                            <option value="VM">Venue Manager</option>
                                            <option value="S">Site Staff</option>
                                        </select>
                                    </div>
                                    <div class="col-xs-6">
                                        <select class="form-control">
                                            <option value="-1">Venue</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <button type="button" id="inviteUser" class="btn btn-primary btn-main-primary pull-right shadow">Invite</button>
                        </div>
                    </form>
                </div>
                <div id="inviteUserContainer" style="display: none;"></div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
