@extends('layouts.admin')
@section('content')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9" aria-hidden="true"></script>

<div class="content">

    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ trans('global.create') }} {{ trans('global.ldis.title_singular') }}
                </div>
                <div class="panel-body">

                                    <form action="{{ route("admin.predictions.store") }}" method="POST" id="predictsave" enctype="multipart/form-data">
                                        @csrf

                                        <div class="form-row col-md-4">
                                                
                                          <div class="form-group">
                                             <label for="title-fragment">Cloa Number</label>
                                             <input type="text" id="cloa_no" name="cloa_no" class="form-control">
                                          </div>

                                          <div class="form-group">
                                            <label for="title-fragment">Title Fragmentation</label>
                                            <select id="title-fragment" name="title_frag" class="form-control">
                                              <option selected>- Select -</option>
                                              <option value="individual">Individual</option>
                                              <option value="collective">Collective</option>
                                            </select>
                                          </div>

                                          <div class="form-group">
                                            <label for="">Co-ownership</label>
                                            <select id="coownership" name="co_owner" class="form-control">
                                              <option selected>- Select -</option>
                                              <option value="yes">Yes</option>
                                              <option value="no">No</option>
                                            </select>
                                          </div>

                                          <div class="form-group">
                                            <label for="">Single</label>
                                            <select id="single" name="single" class="form-control">
                                              <option selected>- Select -</option>
                                              <option value="yes">Yes</option>
                                              <option value="no">No</option>
                                            </select>
                                          </div>

                                          <div class="form-group">
                                            <label for="">With APFU</label>
                                            <select id="wapfu" name="w_apfu" class="form-control">
                                              <option selected>- Select -</option>
                                              <option value="complete">Complete</option>
                                              <option value="partial">Partial</option>
                                            </select>
                                          </div>

                                          <div class="form-group">
                                            <label for="">Actual Occupancy</label>
                                            <select id="actual-occupancy" name="actual_occ" class="form-control">
                                              <option selected>- Select -</option>
                                              <option value="yes">Yes</option>
                                              <option value="no">No</option>
                                            </select>
                                          </div>

                                          <div class="form-group">
                                            <label for="">ASP with Land Use</label>
                                            <select id="asp-land-use" name="asp_withlu" class="form-control">
                                              <option selected>- Select -</option>
                                              <option value="available">Available</option>
                                              <option value="unavailable">Unavailable</option>
                                            </select>
                                          </div>

                                          <div class="form-group">
                                            <label for="">PLUM</label>
                                            <select id="plum" name="plum" class="form-control">
                                              <option selected>- Select -</option>
                                              <option value="yes">Yes</option>
                                              <option value="no">No</option>
                                            </select>
                                          </div>

                                          <div>
                                              <input class="btn btn-danger" type="submit" value="{{ trans('global.save') }}">
                                          </div>
                                        </div>

                                    </form>
                                              <button id="predict-now" class="btn btn-danger">Predict Status</button>


                </div>
            </div>

        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent
    <script>
        $( "#predict-now" ).on( "click", function() {

            var fragment    = $("#title-fragment").val();
            var coowner     = $("#coownership").val();
            var single      = $("#single").val();
            var wapfu       = $("#wapfu").val();
            var occupancy   = $("#actual-occupancy").val();
            var asp         = $("#asp-land-use").val();
            var plum        = $("#plum").val();

            var mycase      = fragment + "," + coowner + "," + single + "," + wapfu + "," + occupancy + "," + asp + "," + plum;
            
            var case1       = "individual,yes,no,complete,yes,available,no";
            var case2       = "individual,yes,no,partial,no,unavailable,no";
            var case3       = "individual,no,yes,complete,yes,available,no";
            var case4       = "collective,yes,no,complete,yes,available,no";
            var case5       = "collective,yes,no,partial,yes,unavailable,yes";
            var case6       = "collective,no,yes,complete,yes,available,no";
            var saving = 0;

            switch (mycase) { 
                case 'individual,yes,no,complete,yes,available,no': 
                    var status  = 'For LDIS Processing';
                    break;
                case 'individual,yes,no,partial,no,unavailable,no': 
                    var status = 'For Further Research';
                    break;
                case 'individual,no,yes,complete,yes,available,no': 
                    var status = 'For LDIS Processing';
                    break;      
                case 'collective,yes,no,complete,yes,available,no': 
                    var status = 'For LDIS Processing';
                    break;
                case 'collective,yes,no,partial,yes,unavailable,yes': 
                    var status = 'For Further Research';
                    break;
                case 'collective,no,yes,complete,yes,available,no': 
                    var status = 'For Further Research';
                    break;
                default:
                    var saving = 1;
                    var status = 'You have to save this data!';
            }

            if(saving == 1) {

                Swal.fire({
                  title: 'Save for LDIS future reference?',
                  icon: 'warning',
                  showCancelButton: true,
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Yes, save it!'
                }).then((result) => {

                  if (result.value) {

                    Swal.fire(
                      'Saved!',
                      'Data has been saved for future reference.',
                      'success'
                    )
                    $("#predictsave").submit(); // Submit the form

                  }

                })

            } else {

                Swal.fire({
                    icon: 'info',
                    title: status
                })
            }

        });

</script>
@endsection