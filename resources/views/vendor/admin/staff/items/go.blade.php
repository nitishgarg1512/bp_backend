<!-- General Overseers -->
<h5>General Overseers ({{ count($generalOverseers) }})</h5>
<div class="row">
    @foreach ($generalOverseers as $go)
        <div class="col-md-3 teams-item">
            <br clear="all" />
            <div class="pull-left image">
                <img src="{{ $go['avatar'] }}" class="img-circle" />
            </div>
            <div class="pull-left info">
                <p><b>{{ $go['name'] }}</b></p>
                <p>{{ $go['time'] }}</p>
            </div>
            <div class="pull-left info2">

            </div>
        </div>
    @endforeach
</div>
<br clear="all" />
<!-- End General Overseers -->
