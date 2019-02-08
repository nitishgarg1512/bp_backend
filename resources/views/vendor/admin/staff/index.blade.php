@include('admin::partials.biggest')

<div class="row">
    <div class="col-md-12">
        <div class="box box-solid box-default">
            <div class="box-body teams">
                <!-- General Overseers -->
                <h5>General Overseers (100)</h5>
                <div class="row">
                    <div class="col-md-3 teams-item">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                    <div class="col-md-3">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                    <div class="col-md-3">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                    <div class="col-md-3">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                </div>
                <br clear="all" />
                <!-- End General Overseers -->
                <!-- Venue Managers -->
                <h5 class="h5-venue-managers">Venue Managers (100) <span><a>View all</a></span></h5>
                <div class="row">
                    <div class="col-md-3 teams-item">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                    <div class="col-md-3">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                    <div class="col-md-3">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                    <div class="col-md-3">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                </div>
                <br clear="all" />
                <!-- End Venue Managers  -->
                <!-- Site Staff -->
                <h5 class="h5-site-staff">Site Staff (100)<span><a>View all</a></span></h5>
                <div class="row">
                    <div class="col-md-3 teams-item">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                    <div class="col-md-3">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                    <div class="col-md-3">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                    <div class="col-md-3">
                        <br clear="all" />
                        <div class="pull-left image">
                            <img src="/img/ronaldo.jpg" />
                        </div>
                        <div class="pull-left info">
                            <p><b>Ronaldo</b></p>
                            <p>2 years 3 months</p>
                            <p>Barnet</p>
                        </div>
                        <div class="pull-left info2">

                        </div>
                    </div>
                </div>
                <br clear="all" />
                <!-- End Site Staff -->
                @if (Admin::user()->inRoles([ROLE_GO_S, ROLE_VM_S]))
                <button type="button" class="btn btn-primary btn-main-primary shadow" data-toggle="modal" data-target="#modal-invite-user">Add User +</button>
                @endif
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </div>
</div>

@include('admin::modals.invite-user')
