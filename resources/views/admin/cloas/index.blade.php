@extends('layouts.admin')
@section('content')
<div class="content">
    @can('cloa_create')
        <div style="margin-bottom: 10px;{{ Request::get('generate') ? 'display:none;' : '' }}" class="row">
            <div class="col-lg-12">
                <a class="btn btn-success" href="{{ route("admin.cloas.create") }}">
                    {{ trans('global.add') }} {{ trans('global.cloa.title_singular') }}
                </a>
            </div>
        </div>
    @endcan
    @if(Request::get('generate'))
    <style>
    .dt-buttons a:nth-child(6), #DataTables_Table_0_filter { display:none; }
    .date-filter{display:table;}
    td.select-checkbox, th.select-checkbox{ display:none; }
    </style>
    @else
    <style>
    .date-filter{display:none;}
    </style>
    @endif
    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    @if(Request::get('generate'))
                        Generate Report by Date Registered
                    @else
                        {{ trans('global.cloa.title_singular') }} {{ trans('global.list') }}                
                    @endif
                </div>
                <div class="panel-body">

                    <div class="form-group">
                        <div class="date-filter">
                            <label style="vertical-align:middle;display:table-cell;">Select Period</label>
                            <table border="0" cellspacing="5" cellpadding="5" style="display:inline-block; {{ Request::get('generate') ? '' : 'display:none;' }}">
                                 <tbody>
                                     <tr>
                                         <td><input name="min" id="min" type="text" class="form-control" placeholder="From"></td>
                                         <td><i class="fad fa-arrows-alt-h" style="font-size: 25px;text-align:center;"></i></td>
                                         <td><input name="max" id="max" type="text"  class="form-control" placeholder="To"></td>
                                     </tr>
                                 </tbody>
                             </table>
                         </div>
                    </div>

                    <div class="table-responsive">
                        <table class=" table table-bordered table-striped table-hover datatable">
                            <thead>
                                <tr>

                                    <th width="10">

                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.title') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.firstname') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.lastname') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.lotno') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.serialno') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.area') }}(sqm.)
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.landowner') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.mothertitleno') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.type') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.surveyno') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.municipality') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.barangay') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.date_gen') }}
                                    </th>
                                    <th>
                                        {{ trans('global.cloa.fields.date_reg') }}
                                    </th>
                                    <th style="{{ Request::get('generate') ? 'display:none;' : '' }}">
                                        Action
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($cloas as $key => $cloa)
                                    <tr data-entry-id="{{ $cloa->id }}">
                                        <td>

                                        </td>
                                        <td>
                                            {{ $cloa->title ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->firstname ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->lastname ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->lotno ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->serialno ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->area ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->landowner ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->mothertitleno ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->type ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->surveyno ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->municipality ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->barangay ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->date_gen ?? '' }}
                                        </td>
                                        <td>
                                            {{ $cloa->date_reg ?? '' }}
                                        </td>
                                        <td class="action-buttons" style="{{ Request::get('generate') ? 'display:none;' : '' }}">
                                            @can('cloa_show')
                                                <a class="btn btn-xs btn-primary action-show" href="{{ route('admin.cloas.show', $cloa->id) }}">
                                                    {{-- {{ trans('global.view') }} --}}
                                                    <i class="fas fa-eye"></i>
                                                </a>
                                            @endcan
                                            @can('cloa_edit')
                                                <a class="btn btn-xs btn-info action-edit" href="{{ route('admin.cloas.edit', $cloa->id) }}">
                                                    {{-- {{ trans('global.edit') }} --}}
                                                    <i class="fas fa-pencil-alt"></i>
                                                </a>
                                            @endcan
                                            @can('cloa_delete')
                                                <form action="{{ route('admin.cloas.destroy', $cloa->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: inline-block;">
                                                    <input type="hidden" name="_method" value="DELETE">
                                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                                    {{-- <input type="submit" class="btn btn-xs btn-danger" value="{{ trans('global.delete') }}"> --}}
                                                    <button type="submit" class="btn btn-xs btn-danger action-delete"><i class="fas fa-trash"></i></button>
                                                </form>
                                            @endcan
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
        $.fn.dataTable.ext.search.push(
        function (settings, data, dataIndex) {
            var min = $('#min').datepicker("getDate");
            var max = $('#max').datepicker("getDate");
            var startDate = new Date(data[14]);
            if (min == null && max == null) { return true; }
            if (min == null && startDate <= max) { return true;}
            if(max == null && startDate >= min) {return true;}
            if (startDate <= max && startDate >= min) { return true; }
            return false;
        })
        $(document).ready(function() {
            $("#min").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            $("#max").datepicker({ onSelect: function () { table.draw(); }, changeMonth: true, changeYear: true });
            var table = $('.datatable').DataTable();
            // Event listener to the two range filtering inputs to redraw on input
            $('#min, #max').change(function () {
                table.draw();
            });
        });
        let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
        let deleteButton = {
            text: deleteButtonTrans,
            url: "{{ route('admin.cloas.massDestroy') }}",
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
                        data: { ids: ids, _method: 'DELETE' }
                    })
                    .done(function () { location.reload() })
                }

            } //.action:
        } // let deleteButton

        let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
        @can('cloa_delete')
            dtButtons.push(deleteButton)
        @endcan

        $('.datatable:not(.ajaxTable)').DataTable({ buttons: dtButtons })
})
</script>
@endsection