<?php

namespace App\Http\Requests;

use App\Prediction;
use Illuminate\Foundation\Http\FormRequest;

class UpdatePredictionRequest extends FormRequest
{
    public function authorize()
    {
        return \Gate::allows('prediction_edit');
    }

    public function rules()
    {
        return [
            'cloa_no'         => [
                'required',
            ],
            'title_frag'         => [
                'required',
            ],
            'co_owner'         => [
                'required',
            ],
            'single'         => [
                'required',
            ],
            'w_apfu'         => [
                'required',
            ],
            'actual_occ'         => [
                'required',
            ],
            'asp_withlu'         => [
                'required',
            ],
            'plum'         => [
                'required',
            ],
            'ldis_status'         => [
                'required',
            ],
        ];
    }
}
