@extends('layouts.app')
@section('content')
<div class="login-box">
    <div class="login-box-body">
        <div class="login-logo">
            <a href="#">
                {{-- {{ trans('global.site_title') }} --}}
                <img src="/assets/images/cloais-wide.png" class="dar-logo-img"/>
            </a>
        </div>
        <p class="login-box-msg">
            {{ trans('global.register') }}
        </p>
        <form method="POST" action="{{ route('register') }}">
            {{ csrf_field() }}
            <div>
                <div class="form-group has-feedback">
                    <input type="text" name="employee_id" class="form-control" required="required"="autofocus" placeholder="{{ trans('global.employee_id') }}">
                    @if($errors->has('employee_id'))
                        <p class="help-block">
                            {{ $errors->first('employee_id') }}
                        </p>
                    @endif
                </div>
                <div class="form-group has-feedback">
                    <input type="text" name="name" class="form-control" required="required"="autofocus" placeholder="{{ trans('global.user_name') }}">
                    @if($errors->has('name'))
                        <p class="help-block">
                            {{ $errors->first('name') }}
                        </p>
                    @endif
                </div>
                <div class="form-group has-feedback">
                    <input type="email" name="email" class="form-control" required="required" placeholder="{{ trans('global.login_email') }}">
                    @if($errors->has('email'))
                        <p class="help-block">
                            {{ $errors->first('email') }}
                        </p>
                    @endif
                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="password" class="form-control" required="required" placeholder="{{ trans('global.login_password') }}">
                    @if($errors->has('password'))
                        <p class="help-block">
                            {{ $errors->first('password') }}
                        </p>
                    @endif
                </div>
                <div class="form-group has-feedback">
                    <input type="password" name="password_confirmation" class="form-control" required="required" placeholder="{{ trans('global.login_password_confirmation') }}">
                    @if($errors->has('password_confirmation'))
                        <p class="help-block">
                            {{ $errors->first('password_confirmation') }}
                        </p>
                    @endif
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <a href="/" class="dar-register">
                            <i class="fad fa-chevron-double-left"></i> Back to login
                        </a>
                    </div>

                    <div class="col-xs-6">
                        <button type="submit" class="btn btn-primary btn-block btn-flat" style="background:linear-gradient(135deg, rgba(0,163,76,1) 0%, rgba(0,163,76,1) 17%, rgba(0,108,52,1) 100%);box-shadow:0 0 10px 1px rgba(0,108,52,1);border:none;border-radius:3px;">
                            {{ trans('global.register') }}
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
@endsection