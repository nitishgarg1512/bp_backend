@include('admin::partials.biggest')

<div class="row venue-search">
    <div class="col-md-6">
        <div class="pull-left">
            <div class="input-group">
                <input type="text" placeholder="Search" class="form-control">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="pull-right">
            <div class="input-group">
                <button type="button" class="btn btn-primary btn-main-primary shadow" data-toggle="modal" data-target="#modal-add-venue">Add Venue +</button>
            </div>
        </div>
    </div>
</div>

<div class="row venue-content">
    @foreach ($venues as $venue)
        <div class="col-md-3">
            <div class="box box-solid box-default">
                <div class="box-body">
                    <div class="pull-left image">
                        <img src="/img/barnet.png" />
                    </div>
                    <div class="pull-left info">
                        <p><b>{{ $venue->name }}</b></p>
                        <p>{{ $venue->region }}</p>
                    </div>
                    <div class="pull-right">
                        <a href="/admin/venues/{{$venue->alias}}">
                        <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                    <br clear="all" />
                    <div class="row leagues-teams">
                        <div class="col-md-6 text-center">14 Leagues</div>
                        <div class="col-md-6 text-center">112 Teams</div>
                    </div>
                    <div class="row info-venue-item">
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-4 d-tplus">45T+</div>
                                <div class="col-md-4 d-fplus">15F+</div>
                                <div class="col-md-4 d-hplus">12H+</div>
                            </div>
                        </div>
                        <div class="col-md-4 bl">
                            <div class="row">
                                <div class="col-md-6 d-region">68</div>
                                <div class="col-md-6 d-gopw">72</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
</div>

@include('admin::modals.add-venue')
