@include('admin::partials.biggest')

<div class="row">
    <div class="col-md-12">
        <div class="box box-solid box-default">
            <div class="box-body teams">
                @include('admin::staff.items.go')
                @include('admin::staff.items.vm')
                @include('admin::staff.items.s')
                @if (Admin::user()->inRoles([ROLE_GO_S, ROLE_VM_S]))
                <button type="button" class="btn btn-primary btn-main-primary shadow" data-toggle="modal" data-target="#modal-invite-user">Add User +</button>
                @endif
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </div>
</div>

@include('admin::modals.invite-user')
