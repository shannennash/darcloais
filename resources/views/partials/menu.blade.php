    <!-- BEGIN: Main Menu-->
    <div class="main-menu menu-fixed menu-light menu-accordion menu-shadow" data-scroll-to-active="true">
        <div class="navbar-header">
            <ul class="nav navbar-nav flex-row">
                <li class="nav-item mr-auto"><a class="navbar-brand" href="/">
                        <img src="/assets/images/cloais-small.png">
                        <h2 class="brand-text mb-0">CLOA-IS</h2>
                    </a></li>
                <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="feather icon-x d-block d-xl-none font-medium-4 primary toggle-icon"></i><i class="toggle-icon feather icon-disc font-medium-4 d-none d-xl-block collapse-toggle-icon primary" data-ticon="icon-disc"></i></a></li>
            </ul>
        </div>
        <div class="shadow-bottom"></div>
        <div class="main-menu-content">
            <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
                <li class=" nav-item"><a href='{{ route("admin.home") }}'><i class="fas fa-tachometer-alt"></i><span class="menu-title" data-i18n="Dashboard">Dashboard</span></a>
                    <ul class="menu-content">
                        <li class="{{ url()->full() == 'http://dar-cloais.com/admin' ? 'active' : '' }}"><a href='{{ route("admin.home") }}'><i class="feather icon-circle"></i><span class="menu-item" data-i18n="Analytics">Analytics  </span></a>
                        </li>
                    </ul>
                </li>
                <li class=" navigation-header"><span>FEATURES</span></li>
                <li class=" nav-item {{ url()->full() === 'http://dar-cloais.com/admin/cloas' ? 'active' : '' }}"><a href="{{ route('admin.cloas.index') }}"><i class="fas fa-file-contract"></i><span class="menu-title" data-i18n="Manage Cloas">CLOAs</span></a></li>
                <li class=" nav-item {{ url()->full() === 'http://dar-cloais.com/admin/cloas?generate=1' ? 'active' : '' }}"><a href="{{ route('admin.cloas.index') }}/?generate=1"><i class="fas fa-print"></i><span class="menu-title" data-i18n="Generate Reports">Generate Reports</span></a></li>
                <li class=" nav-item {{ url()->full() === 'http://dar-cloais.com/admin/ldiss/create' ? 'active' : '' }}"><a href="{{ route('admin.ldiss.create') }}"><i class="fab fa-battle-net"></i><span class="menu-title" data-i18n="LDIS Prediction Tool">LDIS Prediction Tool</span></a></li>
                <li class=" nav-item {{ url()->full() === 'http://dar-cloais.com/admin/ldiss' ? 'active' : '' }}"><a href="{{ route('admin.ldiss.index') }}"><i class="fas fa-clipboard-list"></i><span class="menu-title" data-i18n="LDIS Data List">LDIS Data List</span></a></li>
                @if($data['role'] == 1)
                    @can('user_management_access')
                        <li class=" nav-item"><a href="#"><i class="feather icon-users"></i><span class="menu-title" data-i18n="{{ trans('global.userManagement.title') }}">{{ trans('global.userManagement.title') }}</span></a>
                            @can('permission_access')
                            <ul class="menu-content">
                                <li class="{{ url()->full() === 'http://dar-cloais.com/admin/permissions' ? 'active' : '' }}"><a href="{{ route("admin.permissions.index") }}"><i class="fas fa-unlock-alt"></i><span class="menu-item" data-i18n="{{ trans('global.permission.title') }}">{{ trans('global.permission.title') }}</span></a></li>
                            </ul>
                            @endcan
                            @can('role_access')
                            <ul class="menu-content">
                                <li class="{{ url()->full() === 'http://dar-cloais.com/admin/roles' ? 'active' : '' }}"><a href="{{ route("admin.roles.index") }}"><i class="fas fa-briefcase"></i><span class="menu-item" data-i18n="{{ trans('global.role.title') }}">{{ trans('global.role.title') }}</span></a></li>
                            </ul>
                            @endcan
                            @can('user_access')
                            <ul class="menu-content">
                                <li class="{{ url()->full() === 'http://dar-cloais.com/admin/users' ? 'active' : '' }}"><a href="{{ route("admin.users.index") }}"><i class="fas fa-user"></i><span class="menu-item" data-i18n="{{ trans('global.user.title') }}">{{ trans('global.user.title') }}</span></a></li>
                            </ul>
                            @endcan
                        </li>
                    @endcan
                @endif
            </ul>
        </div>
    </div>
    <!-- END: Main Menu-->