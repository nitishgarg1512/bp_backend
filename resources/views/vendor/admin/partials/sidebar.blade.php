<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="logo">
                <img src="{{ $lpLogo }}" class="img-circle" />
                <a href="{{ admin_base_path('/') }}"><b>{{ $lpShortName }}</b></a>
            </div>
            <hr />
            <div class="pull-left image">
                <img src="{{ Admin::user()->avatar }}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>{{ Admin::user()->name }}</p>
                <!-- Status -->
                <p class="role">{{ strtolower(Admin::user()->roles[0]->name) }}</p>
            </div>
            <br clear="all" />
            <div class="dd-menu">
                <div class="pull-left">
                    <a href="{{ admin_base_path('auth/setting') }}" class="btn btn-default btn-flat">{{ trans('admin.setting') }}</a>
                </div>
                <div class="pull-right">
                    <a href="{{ admin_base_path('auth/logout') }}" class="btn btn-default btn-flat">{{ trans('admin.logout') }}</a>
                </div>
            </div>
        </div>

        <!-- search form (Optional) -->
        <!--<form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>-->
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            @each('admin::partials.menu', Admin::menu(), 'item')

        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
