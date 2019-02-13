@include('admin::partials.facilities')

<div class="row">
    @include('admin::venue.detail.facilities')
    @include('admin::venue.detail.pitches')
</div>


<div class="row venue-search">
    <div class="col-md-6">
        <div class="pull-left">
            <div class="input-group">
                <div><b>16 leagues</b></div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="pull-right">
            <div class="input-group">
                <button type="button" class="btn btn-primary btn-main-primary shadow" data-toggle="modal" data-target="#modal-create-league">Create league +</button>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-3">
        <div class="box box-solid box-default">
            <div class="box-body">
                <div class="pull-left">
                    <p><b>Monday (Early)</b></p>
                    <p>Competitive</p>
                </div>
                <div class="pull-right">
                        <i class="fa fa-angle-right"></i>
                </div>
                <br clear="all" />
                <div class="row leagues-teams">
                    <div class="col-md-6 text-left">14 Teams</div>
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
</div>

@include('admin::modals.edit-facilities')
@include('admin::modals.edit-pitches')
@include('admin::modals.create-league')
