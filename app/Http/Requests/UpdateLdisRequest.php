<?php

namespace App\Http\Requests;

use App\Ldis;
use Illuminate\Foundation\Http\FormRequest;

class UpdateLdisRequest extends FormRequest
{
    public function authorize()
    {
        return \Gate::allows('ldis_edit');
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
