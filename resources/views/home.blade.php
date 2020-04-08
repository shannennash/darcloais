@extends('layouts.admin')
@section('content')
    <div class="content">
        <div class="row">
            @foreach ($number_blocks as $block)
            <div class="col-md-4 ">
                <div class="info-box">
                        <span class="info-box-icon bg-red"
                              style="display:flex; flex-direction: column; justify-content: center;">
                            <i class="{{ $block['data_name'] === 'ldis_days' ? 'fab fa-battle-net' : '' }} {{ $block['data_name'] === 'cloa_days' ? 'fas fa-file-contract' : '' }} {{ $block['data_name'] === 'users_logged' ? 'fad fa-user-unlock' : '' }}"></i>

                        </span>

                    <div class="info-box-content">
                        <span class="info-box-text">{{ $block['title'] }}</span>
                        <span class="info-box-number">{{ $block['number'] }}</span>
                    </div>
                </div>
            </div>
            @endforeach
        </div>

        <div class="row">
            @foreach ($ldis_counts as $ldis_count)
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{ $ldis_count['title'] }}</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body pl-0">
                            <canvas id="ldisCount" width="200" height="100"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                var ldis_p = {{ $ldis_count['process_count'] }};
                var ldis_r = {{ $ldis_count['research_count'] }};
            </script>
            @endforeach
            @foreach ($cloa_months_count as $cloa_stat_count)
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">{{ $cloa_stat_count['title'] }}</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body pl-0">
                            <canvas id="cloaCount" width="200" height="100"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                // vos, ca, acf, gfi, gol, vlt
                var vos_c = {{ $cloa_stat_count['vos_count'] }};
                var ca_c = {{ $cloa_stat_count['ca_count'] }};
                var acf_c = {{ $cloa_stat_count['acf_count'] }};
                var gfi_c = {{ $cloa_stat_count['gfi_count'] }};
                var gol_c = {{ $cloa_stat_count['gol_count'] }};
                var vlt_c = {{ $cloa_stat_count['vlt_count'] }};
            </script>
            @endforeach
        </div>

        <div class="row">
            @foreach ($ldis_blocks as $ldis_block)
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">{{ $ldis_block['title'] }}</h4>
                        </div>
                        <div class="card-content">
                            <div class="card-body pl-0">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>LDIS Cloa No.</th>
                                        <th>Status</th>
                                        <th>Generated</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @forelse($ldis_block['entries'] as $entry)
                                        <tr>
                                            <td>{{ $entry->cloa_no }}</td>
                                            @if($entry->ldis_status == 'processing')
                                                <td>For LDIS Processing</td>                            
                                            @else
                                                <td>For Further Research</td>                            
                                            @endif
                                            <td>{{ $entry->created_at }}</td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="3">{{ __('No entries found') }}</td>
                                        </tr>
                                    @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
            @foreach ($cloa_blocks as $cloa_block)
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">{{ $cloa_block['title'] }}</h4>
                        </div>
                        <div class="card-content">
                            <div class="card-body pl-0">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Cloa Title</th>
                                        <th>Name</th>
                                        <th>Generated</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @forelse($cloa_block['entries'] as $entry)
                                        <tr>
                                            <td>{{ $entry->title }}</td>
                                            <td>{{ $entry->firstname }} {{ $entry->lastname }}</td>                            
                                            <td>{{ $entry->created_at }}</td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="3">{{ __('No entries found') }}</td>
                                        </tr>
                                    @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach


        </div>
        <div class="row">
            @foreach ($list_blocks as $block)
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">{{ $block['title'] }}</h4>
                        </div>
                        <div class="card-content">
                            <div class="card-body pl-0">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Last login at</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @forelse($block['entries'] as $entry)
                                        <tr>
                                            <td>{{ $entry->name }}</td>
                                            <td>{{ $entry->email }}</td>
                                            <td>{{ $entry->last_login_at }}</td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="3">{{ __('No entries found') }}</td>
                                        </tr>
                                    @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

    </div>
@endsection
@section('scripts')
    @parent
    <script src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script>
    <script src="https://www.chartjs.org/samples/latest/utils.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.js"></script>
    <script>
    // LDIS Count :: 
    var ldisCount_ctx = document.getElementById('ldisCount').getContext('2d');
    var ldisCount = new Chart(ldisCount_ctx, {
        type: 'bar',
        data: {
            labels: ['For Processing', 'For Further Research'],
            datasets: [{
                label: '',
                data: [ldis_p, ldis_r],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            legend: {
                    display: false,
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

    var config = {
        type: 'pie',
        data: {
            datasets: [{
                data: [
                    vos_c,
                    ca_c,
                    acf_c,
                    gfi_c,
                    gol_c,
                    vlt_c],
                backgroundColor: [
                    window.chartColors.red,
                    window.chartColors.orange,
                    window.chartColors.yellow,
                    window.chartColors.green,
                    window.chartColors.blue,
                ],
                label: 'Dataset 1'
            }],
            labels: ['VOS', 'CA', 'ACF', 'GFI', 'GOL', 'VLT']
        },
        options: {
            responsive: true
        }
    };

    window.onload = function() {
        var ctx = document.getElementById('cloaCount').getContext('2d');
        window.myPie = new Chart(ctx, config);
    };

    var colorNames = Object.keys(window.chartColors);
    </script>
    {!! $chart->renderJs() !!}
@endsection