@extends('layouts.admin')
@section('content')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9" aria-hidden="true"></script>

<div class="content">

    <div class="row">
        <div class="col-lg-12">

           <div class="panel panel-default">

                <div class="panel-heading">
                    LDIS Prediction Tool
                </div>
                <div class="panel-body">

                    <form action="{{ route("admin.ldiss.store") }}" method="POST" enctype="multipart/form-data" id="predictsave">

                    <div class="row">
                        <div class="col-lg-6">
                            
                        @csrf
                        <div class="form-group {{ $errors->has('cloa_no') ? 'has-error' : '' }}">
                            
                            <label for="cloa_no">{{ trans('global.ldis.fields.cloa_no') }}*</label>
                            <input type="text" id="cloa_no" name="cloa_no" class="form-control" value="{{ old('cloa_no', isset($ldis) ? $ldis->cloa_no : '') }}" placeholder="Cloa Title Number">

                            @if($errors->has('cloa_no'))
                                <p class="help-block">
                                    {{ $errors->first('cloa_no') }}
                                </p>
                            @endif
                            
                        </div>

                        <div class="form-group {{ $errors->has('title_frag') ? 'has-error' : '' }}">
                            
                            <label for="title_frag">{{ trans('global.ldis.fields.title_frag') }}*</label>
                            <select name="title_frag" id="title_frag" class="form-control">
                                <option value="">Click Dropdown to Select</option>
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
                                <option value="">Click Dropdown to Select</option>
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
                                <option value="">Click Dropdown to Select</option>
                                <option value="yes">Yes</option>
                                <option value="no">No</option>
                            </select>

                            @if($errors->has('single'))
                                <p class="help-block">
                                    {{ $errors->first('single') }}
                                </p>
                            @endif
                            

                        </div>
                    </div>
                    <div class="col-lg-6">

                        <div class="form-group {{ $errors->has('w_apfu') ? 'has-error' : '' }}">
                            
                            <label for="w_apfu">{{ trans('global.ldis.fields.w_apfu') }}*</label>
                            <select name="w_apfu" id="w_apfu" class="form-control">
                                <option value="">Click Dropdown to Select</option>
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
                                <option value="">Click Dropdown to Select</option>
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
                                <option value="">Click Dropdown to Select</option>
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
                                <option value="">Click Dropdown to Select</option>
                                <option value="yes">Yes</option>
                                <option value="no">No</option>
                            </select>

                            @if($errors->has('plum'))
                                <p class="help-block">
                                    {{ $errors->first('plum') }}
                                </p>
                            @endif
                            

                        </div>

                        <div class="form-group {{ $errors->has('ldis_status') ? 'has-error' : '' }}" style="display:none;">
                            
                            <label for="ldis_status">{{ trans('global.ldis.fields.ldis_status') }}*</label>
                            <select name="ldis_status" id="ldis_status" class="form-control">
                                <option value="">Click Dropdown to Select</option>
                                <option value="processing">Processing</option>
                                <option value="research">Research</option>
                            </select>

                            @if($errors->has('ldis_status'))
                                <p class="help-block">
                                    {{ $errors->first('ldis_status') }}
                                </p>
                            @endif
                            
                        </div>

                        </div>
                        </div>

                        @if ($errors->any())
                            @foreach ($errors->all() as $error)
                            <div class="alert alert-warning">
                                {{ $error }}
                            </div>
                            @endforeach
                        @endif

                        <div>
                            <input class="btn btn-danger d-none" type="submit" value="{{ trans('global.save') }}" style="display:none;">
                            <a href="#" id="predict-now" class="btn btn-success"><i class="fas fa-radar"></i> Predict LDIS Status</a>
                            <a href="/admin/ldiss" id="back" class="btn btn-danger"><i class="fal fa-chevron-double-left"></i> Go to LDIS Data List</a>
                        </div>

                            </div>
                            <div class="col-lg-6"></div>
                        </div>
                    </form>

                    {{--                
                    @if (\Session::has('error'))
                        <div class="alert alert-error">
                            <ul>
                                <li>{!! \Session::get('error') !!}</li>
                            </ul>
                        </div>
                    @endif
                    --}}

                </div>
            </div>

        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent

    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $( "#predict-now" ).on( "click", function() {

            if($.trim($('#cloa_no').val()) == ''){
                  Swal.fire({
                      icon: 'error',
                      title: 'Cloa Number Empty'
                  })
                  return false;
            }
            $( "#predictsave select:not(#ldis_status)" ).each(function(event) {
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

            var fragment    = $("#title_frag").val();
            var coowner     = $("#co_owner").val();
            var single      = $("#single").val();
            var wapfu       = $("#w_apfu").val();
            var occupancy   = $("#actual_occ").val();
            var asp         = $("#asp_withlu").val();
            var plum        = $("#plum").val();

            var mycase      = fragment + "," + coowner + "," + single + "," + wapfu + "," + occupancy + "," + asp + "," + plum;
            
            var case1       = "individual,yes,no,complete,yes,available,no";
            var case2       = "individual,yes,no,partial,no,unavailable,yes";
            var case3       = "individual,no,yes,complete,yes,available,no";
            var case4       = "collective,yes,no,complete,yes,available,no";
            var case5       = "collective,yes,no,partial,yes,unavailable,yes";
            var case6       = "collective,no,yes,complete,yes,available,no";
            var case7       = "individual,yes,no,complete,yes,unavailable,yes";
            var case8      = "individual,no,yes,complete,yes,unavailable,yes";
            var case9      = "collective,yes,no,complete,yes,unavailable,yes";

            var saving = 1;

            switch (mycase) { 
                case case1: 
                    var status  = 'processing';
                    break;
                case case2: 
                    var status = 'research';
                    break;
                case case3: 
                    var status = 'processing';
                    break;      
                case case4: 
                    var status = 'processing';
                    break;
                case case5: 
                    var status = 'research';
                    break;
                case case6: 
                    var status = 'research';
                    break;
                case case7:
                case case8:
                case case9:
                    var status = 'processing';
                    break;
                default:
                    //var saving = 0;
                    var status = 'research';
                    //var status_text = 'LDIS Status Not Found';
            }

            if(saving == 1) {
                
                $("#ldis_status").val(status).trigger('change');

                if(status == 'processing') {
                    var status_text = 'For LDIS Processing'
                } else if (status == 'research') {
                    var status_text = 'For Further Research';
                } else {
                    var status_text = 'LDIS Status Not Found';
                }

                $('.ldis-loading').fadeIn().delay(2500).fadeOut();

                setTimeout( function(){

                     Swal.fire({
                       title: status_text,
                       text: 'Save for future LDIS Reference?',
                       icon: 'warning',
                       showCancelButton: true,
                       confirmButtonColor: '#3085d6',
                       cancelButtonColor: '#d33',
                       confirmButtonText: 'Yes, save it!'
                     }).then((result) => {
                       if (result.value) {
                           Swal.fire(
                             'Saving...',
                             'Data will be for future reference.',
                             'info'
                           )
                           $("#predictsave").submit();
                       } //result.value
                     }) //then(result)

                 }, 3000);

            } else {
                Swal.fire({
                    icon: 'error',
                    title: status_text
                })
            }

        });

</script>
@endsection