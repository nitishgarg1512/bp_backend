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

@include('admin::venue.detail.leagues')

@include('admin::modals.edit-facilities')
@include('admin::modals.edit-pitches')
@include('admin::modals.create-league')
