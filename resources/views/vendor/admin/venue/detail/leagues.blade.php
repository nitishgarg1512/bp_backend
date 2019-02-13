<div class="row">
    @foreach ($leagues as $league)
        <div class="col-md-3">
            <div class="box box-solid box-default">
                <div class="box-body">
                    <div class="pull-left">
                        <p><b>{{ $league->name }}</b></p>
                        <p>{{ \App\Models\League::getChallengeLevelString($league->challenge_level) }}</p>
                    </div>
                    <div class="pull-right">
                        <i class="fa fa-angle-right"></i>
                    </div>
                    <br clear="all" />
                    <div class="row leagues-teams">
                        <div class="col-md-6 text-left">{{ $league->max_teams }} Teams</div>
                        <div class="col-md-6 text-right">Active</div>
                    </div>
                    <div class="row info-venue-item">
                        <div class="row">
                            <div class="col-md-4 d-tplus text-left">45T+</div>
                            <div class="col-md-4 d-fplus text-center">15F+</div>
                            <div class="col-md-4 d-hplus text-right">12H+</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</div>
