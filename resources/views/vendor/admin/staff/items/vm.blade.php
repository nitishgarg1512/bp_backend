<!-- Venue Managers -->
<h5 class="h5-venue-managers">Venue Managers ({{ count($venueManagers) }}) <span><a>View all</a></span></h5>
<div class="row">
    @foreach ($venueManagers as $vm)
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
<!-- End Venue Managers  -->
