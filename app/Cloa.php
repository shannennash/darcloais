<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cloa extends Model
{
    use SoftDeletes;

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'title',
        'firstname',
        'lastname',
        'lotno',
        'serialno',
        'area',
        'landowner',
        'mothertitleno',
        'date_gen',
        'date_reg',
        'type',
        'surveyno',
        'municipality',
        'barangay',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

}
