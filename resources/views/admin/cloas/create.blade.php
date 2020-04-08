@extends('layouts.admin')
@section('content')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="http://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/a549aa8780dbda16f6cff545aeabc3d71073911e/src/js/bootstrap-datetimepicker.js"></script>
<link href="http://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/a549aa8780dbda16f6cff545aeabc3d71073911e/build/css/bootstrap-datetimepicker.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9" aria-hidden="true"></script>

<div class="content">

    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ trans('global.create') }} {{ trans('global.cloa.title_singular') }}
                </div>
                <div class="panel-body">

                    <form action="{{ route("admin.cloas.store") }}" method="POST" enctype="multipart/form-data" id="cloa-new-record">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
                                    
                                    <label for="title">{{ trans('global.cloa.fields.title') }}*</label>
                                    <input type="text" id="title" name="title" class="form-control" value="{{ old('title', isset($cloa) ? $cloa->title : '') }}">

                                    @if($errors->has('title'))
                                        <p class="help-block">
                                            {{ $errors->first('title') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.role.fields.title_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('firstname') ? 'has-error' : '' }}">

                                    <label for="firstname">{{ trans('global.cloa.fields.firstname') }}*</label>
                                    <input type="text" id="firstname" name="firstname" class="form-control" value="{{ old('firstname', isset($cloa) ? $cloa->firstname : '') }}">

                                    @if($errors->has('firstname'))
                                        <p class="help-block">
                                            {{ $errors->first('firstname') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.firstname_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('lastname') ? 'has-error' : '' }}">

                                    <label for="lastname">{{ trans('global.cloa.fields.lastname') }}*</label>
                                    <input type="text" id="lastname" name="lastname" class="form-control" value="{{ old('lastname', isset($cloa) ? $cloa->lastname : '') }}">

                                    @if($errors->has('lastname'))
                                        <p class="help-block">
                                            {{ $errors->first('lastname') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.lastname_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('lotno') ? 'has-error' : '' }}">

                                    <label for="lotno">{{ trans('global.cloa.fields.lotno') }}*</label>
                                    <input type="text" id="lotno" name="lotno" class="form-control" value="{{ old('lotno', isset($cloa) ? $cloa->lotno : '') }}">

                                    @if($errors->has('lotno'))
                                        <p class="help-block">
                                            {{ $errors->first('lotno') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.lotno_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('serialno') ? 'has-error' : '' }}">

                                    <label for="serialno">{{ trans('global.cloa.fields.serialno') }}*</label>
                                    <input type="text" id="serialno" name="serialno" class="form-control" value="{{ old('serialno', isset($cloa) ? $cloa->serialno : '') }}">

                                    @if($errors->has('serialno'))
                                        <p class="help-block">
                                            {{ $errors->first('serialno') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.serialno_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('area') ? 'has-error' : '' }}">

                                    <label for="area">{{ trans('global.cloa.fields.area') }}(sqm)*</label>
                                    <input type="text" id="area" name="area" class="form-control" value="{{ old('area', isset($cloa) ? $cloa->area : '') }}">

                                    @if($errors->has('area'))
                                        <p class="help-block">
                                            {{ $errors->first('area') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.area_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('landowner') ? 'has-error' : '' }}">

                                    <label for="landowner">{{ trans('global.cloa.fields.landowner') }}*</label>
                                    <input type="text" id="landowner" name="landowner" class="form-control" value="{{ old('landowner', isset($cloa) ? $cloa->landowner : '') }}">

                                    @if($errors->has('landowner'))
                                        <p class="help-block">
                                            {{ $errors->first('landowner') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.landowner_helper') }}
                                    </p>

                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group {{ $errors->has('mothertitleno') ? 'has-error' : '' }}">

                                    <label for="mothertitleno">{{ trans('global.cloa.fields.mothertitleno') }}*</label>
                                    <input type="text" id="mothertitleno" name="mothertitleno" class="form-control" value="{{ old('mothertitleno', isset($cloa) ? $cloa->mothertitleno : '') }}">

                                    @if($errors->has('mothertitleno'))
                                        <p class="help-block">
                                            {{ $errors->first('mothertitleno') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.mothertitleno_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('date_gen') ? 'has-error' : '' }}">

                                    <label for="dategen">{{ trans('global.cloa.fields.date_gen') }}*</label>
                                    <input type="text" id="datetimepicker4" name="date_gen" class="form-control dppick" value="{{ old('date_gen', isset($cloa) ? $cloa->date_gen : '') }}" placeholder="YYYY-MM-DD">
                                    @if($errors->has('date_gen'))
                                        <p class="help-block">
                                            {{ $errors->first('date_gen') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.date_gen_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('date_reg') ? 'has-error' : '' }}">

                                    <label for="datereg">{{ trans('global.cloa.fields.date_reg') }}*</label>
                                    <input type="text" id="datetimepicker4" name="date_reg" class="form-control dppick" value="{{ old('date_reg', isset($cloa) ? $cloa->date_reg : '') }}" placeholder="YYYY-MM-DD">

                                    @if($errors->has('date_reg'))
                                        <p class="help-block">
                                            {{ $errors->first('date_reg') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.date_reg_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('type') ? 'has-error' : '' }}">

                                    <label for="type">{{ trans('global.cloa.fields.type') }}*</label>
                                    <select name="type" id="type" class="form-control">
                                        <option value="VOS">VOS</option>
                                        <option value="CA">CA</option>
                                        <option value="ACF">ACF</option>
                                        <option value="GFI">GFI</option>
                                        <option value="GOL">GOL</option>
                                        <option value="VLT">VLT</option>
                                    </select>

                                    @if($errors->has('type'))
                                        <p class="help-block">
                                            {{ $errors->first('type') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.type_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('surveyno') ? 'has-error' : '' }}">

                                    <label for="surveyno">{{ trans('global.cloa.fields.surveyno') }}*</label>
                                    <input type="text" id="surveyno" name="surveyno" class="form-control" value="{{ old('surveyno', isset($cloa) ? $cloa->surveyno : '') }}">

                                    @if($errors->has('surveyno'))
                                        <p class="help-block">
                                            {{ $errors->first('surveyno') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.surveyno_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('municipality') ? 'has-error' : '' }}">

                                    <label for="municipality">{{ trans('global.cloa.fields.municipality') }}*</label>
                                    <input type="text" id="municipality" name="municipality" class="form-control" value="{{ old('municipality', isset($cloa) ? $cloa->municipality : '') }}">

                                    @if($errors->has('municipality'))
                                        <p class="help-block">
                                            {{ $errors->first('municipality') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.municipality_helper') }}
                                    </p>

                                </div>
                                <div class="form-group {{ $errors->has('barangay') ? 'has-error' : '' }}">

                                    <label for="barangay">{{ trans('global.cloa.fields.barangay') }}*</label>
                                    <input type="text" id="barangay" name="barangay" class="form-control" value="{{ old('barangay', isset($cloa) ? $cloa->barangay : '') }}">

                                    @if($errors->has('barangay'))
                                        <p class="help-block">
                                            {{ $errors->first('barangay') }}
                                        </p>
                                    @endif
                                    <p class="helper-block">
                                        {{ trans('global.cloa.fields.barangay_helper') }}
                                    </p>
                                    
                                    {{--
                                    @if ($errors->any())
                                        @foreach ($errors->all() as $error)
                                        {{ $error }}
                                        @endforeach
                                    @endif
                                    --}}


                                </div>
                                <div style="float:right;">
                                    <button type="submit" class="btn btn-success"><i class="fal fa-save"></i> {{ trans('global.save') }}</button>
                                    <a href="/admin/cloas" id="back" class="btn btn-danger"><i class="fal fa-chevron-double-left"></i> Go to CLOA List</a>
                                </div>
                            </div>

                        </div>


                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>
</div>

<script>
    $(document).on('submit', "#cloa-new-record", function(e) {

        var form = this;
        e.preventDefault();

        $( "#cloa-new-record input" ).each(function(event) {
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
          title: 'CLOA Record Saved!',
          showConfirmButton: false,
          timer: 1500
        })

        setTimeout(function () {
            form.submit();
        }, 1000); // in milliseconds

    });
</script>
<script type="text/javascript">
    $(function () {
        $('.dppick').datetimepicker({
        	format: 'YYYY-MM-DD'
    	});			
    });
</script> 
@endsection