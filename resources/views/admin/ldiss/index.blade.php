@extends('layouts.admin')
@section('content')
<div class="content">
    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ trans('global.ldis.title_singular') }} Data List
                </div>
                <div class="panel-body">

                    <div class="table-responsive">
                        @if(session()->has('message'))
                            <div class="alert alert-success">
                                {{ session()->get('message') }}
                            </div>
                        @endif
                        <table class=" table table-bordered table-striped table-hover datatable">
                            <thead>
                                <tr >
                                    <th width="10">

                                    </th>
                                    <th>
                                        {{ trans('global.ldis.fields.cloa_no') }}
                                    </th>
                                    <th>
                                        {{ trans('global.ldis.fields.title_frag') }}
                                    </th>
                                    <th>
                                        {{ trans('global.ldis.fields.co_owner') }}
                                    </th>
                                    <th>
                                        {{ trans('global.ldis.fields.single') }}
                                    </th>
                                    <th>
                                        {{ trans('global.ldis.fields.w_apfu') }}
                                    </th>
                                    <th>
                                        {{ trans('global.ldis.fields.actual_occ') }}
                                    </th>
                                    <th>
                                        {{ trans('global.ldis.fields.asp_withlu') }}
                                    </th>
                                    <th>
                                        {{ trans('global.ldis.fields.plum') }}
                                    </th>
                                    <th>
                                        Predicted LDIS Status
                                    </th>
                                    <th>
                                        
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($ldiss as $key => $ldis)
                                    <tr data-entry-id="{{ $ldis->id }}" style="text-transform:uppercase;">
                                        <td>

                                        </td>
                                        <td>{{ $ldis->cloa_no ?? '' }}</td>
                                        <td>{{ $ldis->title_frag ?? '' }}</td>
                                        <td>{{ $ldis->co_owner ?? '' }}</td>
                                        <td>{{ $ldis->single ?? '' }}</td>
                                        <td>{{ $ldis->w_apfu ?? '' }}</td>
                                        <td>{{ $ldis->actual_occ ?? '' }}</td>
                                        <td>{{ $ldis->asp_withlu ?? '' }}</td>
                                        <td>{{ $ldis->plum ?? '' }}</td>
                                        @if ($ldis->ldis_status === 'processing')
                                            <td class="text-center colors-container bg-gradient-success text-white d-flex">For Processing</td>
                                        @else
                                            <td class="text-center colors-container bg-gradient-danger text-white d-flex">For Further Research</td>
                                        @endif
                                        <td>
                                            {{-- @can('ldis_show') --}}
                                                {{-- <a class="btn btn-xs btn-primary" href="{{ route('admin.ldiss.show', $ldis->id) }}">
                                                    {{ trans('global.view') }}
                                                </a> --}}
                                            {{-- @endcan --}}
                                            {{-- @can('ldis_edit') --}}
                                                {{-- <a class="btn btn-xs btn-info" href="{{ route('admin.ldiss.edit', $ldis->id) }}">
                                                    {{ trans('global.edit') }}
                                                </a> --}}
                                            {{-- @endcan --}}
                                           {{-- @can('ldis_delete')
                                                 <form action="{{ route('admin.ldiss.destroy', $ldis->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: inline-block;">
                                                    <input type="hidden" name="_method" value="DELETE">
                                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                                    <input type="submit" class="btn btn-xs btn-danger" value="{{ trans('global.delete') }}">
                                                </form>
                                            @endcan--}}
                                        </td>

                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent
<script>
    $(function () {
  let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
  let deleteButton = {
    text: deleteButtonTrans,
    url: "{{ route('admin.ldiss.massDestroy') }}",
    className: 'btn-danger',
    action: function (e, dt, node, config) {
      var ids = $.map(dt.rows({ selected: true }).nodes(), function (entry) {
          return $(entry).data('entry-id')
      });

      if (ids.length === 0) {
        alert('{{ trans('global.datatables.zero_selected') }}')

        return
      }

      if (confirm('{{ trans('global.areYouSure') }}')) {
        $.ajax({
          headers: {'x-csrf-token': _token},
          method: 'POST',
          url: config.url,
          data: { ids: ids, _method: 'DELETE' }})
          .done(function () { location.reload() })
      }
    }
  }
  let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
@can('ldis_delete')
  dtButtons.push(deleteButton)
@endcan

  $('.datatable:not(.ajaxTable)').DataTable({ buttons: dtButtons })
})

</script>
@endsection