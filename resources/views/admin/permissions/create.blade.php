@extends('layouts.admin')
@section('content')
<div class="content">

    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ trans('global.create') }} {{ trans('global.permission.title_singular') }}
                </div>
                <div class="panel-body">

                    <form action="{{ route("admin.permissions.store") }}" method="POST" enctype="multipart/form-data" id="add-new-permission">
                        @csrf
                        <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
                            <label for="title">{{ trans('global.permission.fields.title') }}*</label>
                            <input type="text" id="title" name="title" class="form-control" value="{{ old('title', isset($permission) ? $permission->title : '') }}">
                            @if($errors->has('title'))
                                <p class="help-block">
                                    {{ $errors->first('title') }}
                                </p>
                            @endif
                            <p class="helper-block">
                                {{ trans('global.permission.fields.title_helper') }}
                            </p>
                        </div>
                        <div>
                            <input class="btn btn-danger" type="submit" value="{{ trans('global.save') }}">
                        </div>
                    </form>

                </div>
            </div>

        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9" aria-hidden="true"></script>
<script>
    $(document).on('submit', "#add-new-permission", function(e) {
        var form = this;
            e.preventDefault();

        $( "#add-new-permission input" ).each(function(event) {
           $(this).change(function(){
             $( this ).css('cssText','border:solid 1px #d2d6de;');
           });
          if($(this).val() === ''){
            $( this ).css('cssText','border:solid 1px #f00;');
            Swal.fire({
                icon: 'error',
                title: 'Check empty fields'
            })
            event.preventDefault();
          } 
        });

        Swal.fire({
          position: 'top-end',
          icon: 'success',
          title: 'Permission has been added!',
          showConfirmButton: false,
          timer: 1500
        })
        
        setTimeout(function () {
            form.submit();
        }, 1000); // in milliseconds
    });
</script>
@endsection