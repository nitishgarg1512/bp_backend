<div class="modal fade" id="modal-create-league">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true" class="c-lightred">&times;</span></button>
                <div id="createLeagueForm">
                    <h5 class="text-center">Create a league</h5>
                    <form role="form" id="createLeagueFormAjax" action="" method="post">
                        <div class="box-body">
                            <div class="form-group">
                                <input type="text" class="form-control" name="leagueName" id="leagueName" placeholder="League Name">
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                       Number of teams
                                    </div>
                                    <div class="col-xs-3">
                                        <input type="text" class="form-control" name="leagueMin" id="leagueMin" placeholder="Min">
                                    </div>
                                    <div class="col-xs-3">
                                        <input type="text" class="form-control" name="leagueMax" id="leagueMax" placeholder="Max">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <select class="form-control" id="leagueFormat" name="leagueFormat">
                                            <option value="-1">League Format</option>
                                            @foreach ($leagueFormats as $key => $type)
                                                <option value="{{$key}}">{{$type}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-xs-6">
                                        <select class="form-control" id="leagueType" name="leagueType">
                                            <option value="-1">League Type</option>
                                            @foreach ($leagueTypes as $key => $format)
                                                <option value="{{$key}}">{{$format}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="leagueChallengeLevel" name="leagueChallengeLevel">
                                    <option value="-1">Challenge Level</option>
                                    @foreach ($leagueChallengeLevels as $key => $type)
                                        <option value="{{$key}}">{{$type}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        Start Date
                                    </div>
                                    <div class="col-xs-6">
                                        <input type="text" class="form-control" name="startDate" id="startDate">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        Set close date
                                    </div>
                                    <div class="col-xs-6">
                                        <input type="checkbox" name="setCloseDate" id="setCloseDate">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6">
                                        Close Date
                                    </div>
                                    <div class="col-xs-6">
                                        <input type="text" class="form-control" name="closeDate" id="closeDate">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" id="createLeague" class="btn btn-primary btn-main-primary pull-right shadow">Done</button>
                        </div>
                        <input type="hidden" name="leagueVenueId" id="leagueVenueId" value="{{$venue->id}}" />
                    </form>
                </div>
                <div id="createLeagueContainer" style="display: none;"></div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
