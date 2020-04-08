@extends('layouts.admin')
@section('content')
<div class="content">

    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ trans('global.edit') }} {{ trans('global.user.title_singular') }}
                </div>
                <div class="panel-body">

                    <form action="{{ route("admin.users.update", [$user->id]) }}" method="POST" enctype="multipart/form-data" id="edit-profile">
                        @csrf
                        @method('PUT')
                        <div class="form-group {{ $errors->has('employee_id') ? 'has-error' : '' }}">
                            <label for="employee_id">{{ trans('global.user.fields.employee_id') }}*</label>
                            <input type="text" id="employee_id" name="employee_id" class="form-control" value="{{ old('employee_id', isset($user) ? $user->employee_id : '') }}">
                            @if($errors->has('employee_id'))
                                <p class="help-block">
                                    {{ $errors->first('employee_id') }}
                                </p>
                            @endif
                            <p class="helper-block">
                                {{ trans('global.user.fields.name_helper') }}
                            </p>
                        </div>
                        <div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
                            <label for="name">{{ trans('global.user.fields.name') }}*</label>
                            <input type="text" id="name" name="name" class="form-control" value="{{ old('name', isset($user) ? $user->name : '') }}">
                            @if($errors->has('name'))
                                <p class="help-block">
                                    {{ $errors->first('name') }}
                                </p>
                            @endif
                            <p class="helper-block">
                                {{ trans('global.user.fields.name_helper') }}
                            </p>
                        </div>
                        
                        <div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
                            <label for="email">{{ trans('global.user.fields.email') }}*</label>
                            @if($logged_role !== 1)
                            <input type="email" class="form-control" value="{{ old('email', isset($user) ? $user->email : '') }}" {{ $logged_role !== 1 ? 'disabled' : '' }}>
                            @endif
                            <input type="email" id="email" name="email" class="form-control" value="{{ old('email', isset($user) ? $user->email : '') }}" style="{{ $logged_role !== 1 ? 'display:none;' : '' }}">
                            @if($errors->has('email'))
                                <p class="help-block">
                                    {{ $errors->first('email') }}
                                </p>
                            @endif
                            <p class="helper-block">
                                {{ trans('global.user.fields.email_helper') }}
                            </p>
                        </div>
                        <div class="form-group {{ $errors->has('password') ? 'has-error' : '' }}">
                            <label for="password">{{ trans('global.user.fields.password') }}</label>
                            <input type="password" id="password" name="password" class="form-control">
                            @if($errors->has('password'))
                                <p class="help-block">
                                    {{ $errors->first('password') }}
                                </p>
                            @endif
                            <p class="helper-block">
                                {{ trans('global.user.fields.password_helper') }}
                            </p>
                        </div>
                        {{-- @if($logged_role == 1) --}}
                        <div class="form-group {{ $errors->has('roles') ? 'has-error' : '' }}" style=" {{ $logged_role !== 1 ? 'display:none;' : '' }}">
                            <label for="roles">{{ trans('global.user.fields.roles') }}*
                                <span class="btn btn-info btn-xs select-all">Select all</span>
                                <span class="btn btn-info btn-xs deselect-all">Deselect all</span></label>
                            <select name="roles[]" id="roles" class="form-control select2" multiple="multiple">
                                @foreach($roles as $id => $roles)
                                    @if($logged_role == 1)
                                        <option value="{{ $id }}" {{ (in_array($id, old('roles', [])) || isset($user) && $user->roles->contains($id)) ? 'selected' : '' }}>
                                            {{ $roles }}
                                        </option>
                                    @else
                                        @if($id != 1)
                                            <option value="{{ $id }}" {{ (in_array($id, old('roles', [])) || isset($user) && $user->roles->contains($id)) ? 'selected' : '' }}>
                                                {{ $roles }}
                                            </option>
                                        @endif
                                    @endif

                                @endforeach
                            </select>
                            @if($errors->has('roles'))
                                <p class="help-block">
                                    {{ $errors->first('roles') }}
                                </p>
                            @endif
                            <p class="helper-block">
                                {{ trans('global.user.fields.roles_helper') }}
                            </p>
                        </div>
                        {{-- @endif --}}
                        <div>
                            <input class="btn btn-danger" type="submit" value="{{ trans('global.save') }}">
                        </div>
                    </form>

                </div>
            </div>

        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9" aria-hidden="true"></script>
<script>
    $(document).on('submit', "#edit-profile", function(e) {
        var form = this;
            e.preventDefault();

        Swal.fire({
          position: 'top-end',
          icon: 'success',
          title: 'Profile has been updated!',
          showConfirmButton: false,
          timer: 1500
        })
        
        setTimeout(function () {
            form.submit();
        }, 1000); // in milliseconds
    });
</script>
@endsection