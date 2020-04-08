<?php

namespace App\Http\Controllers\Admin;

use App\User;
use App\Cloa;
use App\Ldis;
use LaravelDaily\LaravelCharts\Classes\LaravelChart;

class HomeController
{
    public function index()
    {

        $ldis_counts   = [
            [
                'title'             =>  'LDIS Data Status',
                'process_count'     => Ldis::where('ldis_status','=','processing')->whereNull('deleted_at')->count(),
                'research_count'    => Ldis::where('ldis_status','=','research')->whereNull('deleted_at')->count()
            ]
        ];

        $cloa_months_count  = [
            [
                'title'         =>  'CLOA Title Claim Type',
                'vos_count'     => Cloa::where('type','=','VOS')->whereNull('deleted_at')->count(),
                'ca_count'      => Cloa::where('type','=','CA')->whereNull('deleted_at')->count(),
                'acf_count'     => Cloa::where('type','=','ACF')->whereNull('deleted_at')->count(),
                'gfi_count'     => Cloa::where('type','=','GFI')->whereNull('deleted_at')->count(),
                'gol_count'     => Cloa::where('type','=','GOL')->whereNull('deleted_at')->count(),
                'vlt_count'     => Cloa::where('type','=','VLT')->whereNull('deleted_at')->count()
            ]
        ];


        $ldis_blocks   = [
            [
                'title'     =>  'Latest LDIS Status Prediction Result',
                'entries' => Ldis::orderBy('created_at', 'desc')
                    ->take(10)
                    ->get()
            ]
        ];

        $cloa_blocks   = [
            [
                'title'     =>  'Latest CLOA Titles',
                'entries' => Cloa::orderBy('created_at', 'desc')
                    ->take(10)
                    ->get()
            ]
        ];

        $number_blocks = [
            [
                'title' => 'Users Logged In Today',
                'number' => User::whereDate('last_login_at', today())->count(),
                'data_name' => 'users_logged'
            ],
            [
                'title' => 'LDIS Predicted In Last 7 Days',
                'number' => Ldis::whereDate('created_at', '>', today()->subDays(7))->count(),
                'data_name' => 'ldis_days'
            ],
            [
                'title' => 'Cloa Record Added In Last 30 Days',
                'number' => Cloa::whereDate('created_at', '>', today()->subDays(30))->count(),
                'data_name' => 'cloa_days'
            ],
        ];

        $list_blocks = [
            [
                'title' => 'Last Logged In Users',
                'entries' => User::orderBy('last_login_at', 'desc')
                    ->take(5)
                    ->get(),
            ],
            // [
            //     'title' => 'Users Not Logged In For 30 Days',
            //     'entries' => User::where('last_login_at', '<', today()->subDays(30))
            //         ->orwhere('last_login_at', null)
            //         ->orderBy('last_login_at', 'desc')
            //         ->take(5)
            //         ->get()
            // ],
        ];

        $chart_settings = [
            'chart_title'        => 'Users By Months',
            'chart_type'         => 'line',
            'report_type'        => 'group_by_date',
            'model'              => 'App\\User',
            'group_by_field'     => 'last_login_at',
            'group_by_period'    => 'month',
            'aggregate_function' => 'count',
            'filter_field'       => 'last_login_at',
            'column_class'       => 'col-md-12',
            'entries_number'     => '5',
        ];
        $chart = new LaravelChart($chart_settings);

        return view('home', compact('number_blocks', 'list_blocks', 'chart', 'ldis_blocks', 'cloa_blocks', 'ldis_counts', 'cloa_months_count'));
    }
}
