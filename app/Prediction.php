<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Prediction extends Model
{
    use SoftDeletes;

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'cloa_no',
        'title_frag',
        'co_owner',
        'single',
        'w_apfu',
        'actual_occ',
        'asp_withlu',
        'plum',
        'ldis_status',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

}