@extends('layouts.admin')
@section('content')
<div class="content">

    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ trans('global.edit') }} {{ trans('global.ldis.title_singular') }}
                </div>
                <div class="panel-body">

                    <form action="{{ route("admin.ldiss.update", [$ldis->id]) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')


                        <div class="form-group {{ $errors->has('cloa_no') ? 'has-error' : '' }}">
                            
                            <label for="cloa_no">{{ trans('global.ldis.fields.cloa_no') }}*</label>
                            <input type="text" id="cloa_no" name="cloa_no" class="form-control" value="{{ old('cloa_no', isset($ldis) ? $ldis->cloa_no : '') }}">

                            @if($errors->has('cloa_no'))
                                <p class="help-block">
                                    {{ $errors->first('cloa_no') }}
                                </p>
                            @endif
                            

                        </div>

                        <div class="form-group {{ $errors->has('title_frag') ? 'has-error' : '' }}">
                            
                            <label for="title_frag">{{ trans('global.ldis.fields.title_frag') }}*</label>
                            <select name="title_frag" id="title_frag" class="form-control">
                                <option value="individual">Individual</option>
                                <option value="collective">Collective</option>
                            </select>

                            @if($errors->has('title_frag'))
                                <p class="help-block">
                                    {{ $errors->first('title_frag') }}
                                </p>
                            @endif
                            

                        </div>

                        <div class="form-group {{ $errors->has('co_owner') ? 'has-error' : '' }}">
                            
                            <label for="co_owner">{{ trans('global.ldis.fields.co_owner') }}*</label>
                            <select name="co_owner" id="co_owner" class="form-control">
                                <option value="yes">Yes</option>
                                <option value="no">No</option>
                            </select>

                            @if($errors->has('co_owner'))
                                <p class="help-block">
                                    {{ $errors->first('co_owner') }}
                                </p>
                            @endif
                            

                        </div>

                        <div class="form-group {{ $errors->has('single') ? 'has-error' : '' }}">
                            
                            <label for="single">{{ trans('global.ldis.fields.single') }}*</label>
                            <select name="single" id="single" class="form-control">
                                <option value="yes">Yes</option>
                                <option value="no">No</option>
                            </select>

                            @if($errors->has('single'))
                                <p class="help-block">
                                    {{ $errors->first('single') }}
                                </p>
                            @endif
                            

                        </div>

                        <div class="form-group {{ $errors->has('w_apfu') ? 'has-error' : '' }}">
                            
                            <label for="w_apfu">{{ trans('global.ldis.fields.w_apfu') }}*</label>
                            <select name="w_apfu" id="w_apfu" class="form-control">
                                <option value="complete">Complete</option>
                                <option value="partial">Partial</option>
                            </select>

                            @if($errors->has('w_apfu'))
                                <p class="help-block">
                                    {{ $errors->first('w_apfu') }}
                                </p>
                            @endif
                            

                        </div>

                        <div class="form-group {{ $errors->has('actual_occ') ? 'has-error' : '' }}">
                            
                            <label for="actual_occ">{{ trans('global.ldis.fields.actual_occ') }}*</label>
                            <select name="actual_occ" id="actual_occ" class="form-control">
                                <option value="yes">Yes</option>
                                <option value="no">No</option>
                            </select>

                            @if($errors->has('actual_occ'))
                                <p class="help-block">
                                    {{ $errors->first('actual_occ') }}
                                </p>
                            @endif
                            

                        </div>

                        <div class="form-group {{ $errors->has('asp_withlu') ? 'has-error' : '' }}">
                            
                            <label for="asp_withlu">{{ trans('global.ldis.fields.asp_withlu') }}*</label>
                            <select name="asp_withlu" id="asp_withlu" class="form-control">
                                <option value="available">Available</option>
                                <option value="unavailable">Unavailable</option>
                            </select>

                            @if($errors->has('asp_withlu'))
                                <p class="help-block">
                                    {{ $errors->first('asp_withlu') }}
                                </p>
                            @endif
                            

                        </div>

                        <div class="form-group {{ $errors->has('plum') ? 'has-error' : '' }}">
                            
                            <label for="plum">{{ trans('global.ldis.fields.plum') }}*</label>
                            <select name="plum" id="plum" class="form-control">
                                <option value="yes">Yes</option>
                                <option value="no">No</option>
                            </select>

                            @if($errors->has('plum'))
                                <p class="help-block">
                                    {{ $errors->first('plum') }}
                                </p>
                            @endif
                            

                        </div>

                        <div class="form-group {{ $errors->has('ldis_status') ? 'has-error' : '' }}">
                            
                            <label for="ldis_status">{{ trans('global.ldis.fields.ldis_status') }}*</label>
                            <select name="ldis_status" id="ldis_status" class="form-control">
                                <option value="processing">For LDIS Processing</option>
                                <option value="researching">For Further Researching</option>
                            </select>

                            @if($errors->has('ldis_status'))
                                <p class="help-block">
                                    {{ $errors->first('ldis_status') }}
                                </p>
                            @endif
                            

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
@endsection