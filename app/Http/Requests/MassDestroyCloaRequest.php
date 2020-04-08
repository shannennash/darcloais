<?php

namespace App\Http\Requests;

use App\Cloa;
use Gate;
use Illuminate\Foundation\Http\FormRequest;

class MassDestroyCloaRequest extends FormRequest
{
    public function authorize()
    {
        return abort_if(Gate::denies('cloa_delete'), 403, '403 Forbidden') ?? true;
    }

    public function rules()
    {
        return [
            'ids'   => 'required|array',
            'ids.*' => 'exists:cloas,id',
        ];
    }
}
