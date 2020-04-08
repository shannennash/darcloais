<?php

namespace App\Http\Requests;

use App\Cloa;
use Illuminate\Foundation\Http\FormRequest;

class StoreCloaRequest extends FormRequest
{
    public function authorize()
    {
        return \Gate::allows('cloa_create');
    }

    public function rules()
    {
        return [
            'title'         => [
                'required',
            ],
            'firstname'         => [
                'required',
            ],
            'lastname'         => [
                'required',
            ],
            'lotno'         => [
                'required',
            ],
            'serialno'         => [
                'required',
            ],
            'area'         => [
                'required',
            ],
            'landowner'         => [
                'required',
            ],
            'mothertitleno'         => [
                'required',
            ],
            'date_gen'         => [
                'required',
            ],
            'date_reg'         => [
                'required',
            ],
            'type'         => [
                'required',
            ],
            'surveyno'         => [
                'required',
            ],
            'municipality'         => [
                'required',
            ],
            'barangay'         => [
                'required',
            ],
        ];
    }
}
