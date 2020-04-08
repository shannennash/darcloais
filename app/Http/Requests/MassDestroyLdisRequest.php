<?php

namespace App\Http\Requests;

use App\Ldis;
use Gate;
use Illuminate\Foundation\Http\FormRequest;

class MassDestroyLdisRequest extends FormRequest
{
    public function authorize()
    {
        return abort_if(Gate::denies('ldis_delete'), 403, '403 Forbidden') ?? true;
    }

    public function rules()
    {
        return [
            'ids'   => 'required|array',
            'ids.*' => 'exists:ldis,id',
        ];
    }
}
