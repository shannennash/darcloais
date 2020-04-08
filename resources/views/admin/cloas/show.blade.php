@extends('layouts.admin')
@section('content')
<div class="content">

    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ trans('global.show') }} {{ trans('global.cloa.title') }}
                </div>
                <div class="panel-body">

                    <table class="table table-bordered table-striped">
                        <tbody>

                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.title') }}
                                </th>
                                <td>
                                    {{ $cloa->title }}
                                </td>
                            </tr>

                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.firstname') }}
                                </th>
                                <td>
                                    {{ $cloa->firstname }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.lastname') }}
                                </th>
                                <td>
                                    {{ $cloa->lastname }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.lotno') }}
                                </th>
                                <td>
                                    {{ $cloa->lotno }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.serialno') }}
                                </th>
                                <td>
                                    {{ $cloa->serialno }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.area') }}
                                </th>
                                <td>
                                    {{ $cloa->area }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.landowner') }}
                                </th>
                                <td>
                                    {{ $cloa->landowner }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.mothertitleno') }}
                                </th>
                                <td>
                                    {{ $cloa->mothertitleno }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.date_gen') }}
                                </th>
                                <td>
                                    {{ $cloa->date_gen }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.date_reg') }}
                                </th>
                                <td>
                                    {{ $cloa->date_reg }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.type') }}
                                </th>
                                <td>
                                    {{ $cloa->type }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.surveyno') }}
                                </th>
                                <td>
                                    {{ $cloa->surveyno }}
                                </td>
                            </tr>

                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.municipality') }}
                                </th>
                                <td>
                                    {{ $cloa->municipality }}
                                </td>
                            </tr>
                            
                            <tr>
                                <th>
                                    {{ trans('global.cloa.fields.barangay') }}
                                </th>
                                <td>
                                    {{ $cloa->barangay }}
                                </td>
                            </tr>

                        </tbody>
                    </table>

                </div>
            </div>

        </div>
    </div>
</div>
@endsection