<!-- Site Staff -->
<h5 class="h5-site-staff">Site Staff ({{ count($staffs) }})<span><a>View all</a></span></h5>
<div class="row">
    @foreach ($staffs as $s)
        <div class="col-md-3 teams-item">
            <br clear="all" />
            <div class="pull-left image">
                <img src="{{ $go['avatar'] }}" class="img-circle" />
            </div>
            <div class="pull-left info">
                <p><b>{{ $go['name'] }}</b></p>
                <p>{{ $go['time'] }}</p>
                <p>Barnet</p>
            </div>
            <div class="pull-left info2">

            </div>
        </div>
    @endforeach
</div>
<br clear="all" />
<!-- End Site Staff -->
