<div class="col-md-8">
    <div class="box box-solid box-default">
        <div class="box-body facilities">
            <div class="pitches-item">
                <div class="pull-left">
                    <b>Pitches ({{ $totalPitches }})</b>
                </div>
                <div class="pull-right ">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#modal-edit-pitches">
                    <i class="fa fa-edit"></i>
                    </a>
                </div>
            </div>
            <br clear="all" />
            <div class="clearfix pitches-item mb15">
                <div class="pull-left pitches-aside">
                    <div class="text-center">5 - Aside</div>
                    <img src="/img/stadium.png" alt="Stadium">
                    <div class="aside-number">{{ count($_5asides) }}</div>
                </div>
                <div class="pull-left pitches-aside">
                    <div class="text-center">7 - Aside</div>
                    <img src="/img/stadium.png" alt="Stadium">
                    <div class="aside-number">{{ count($_7asides) }}</div>
                </div>
                <div class="pull-left pitches-aside">
                    <div class="text-center">11 - Aside</div>
                    <img src="/img/stadium.png" alt="Stadium">
                    <div class="aside-number">{{ count($_11asides) }}</div>
                </div>
            </div>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
</div>
