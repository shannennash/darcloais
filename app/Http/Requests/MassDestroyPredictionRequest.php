<?php

namespace App\Http\Requests;

use App\Prediction;
use Gate;
use Illuminate\Foundation\Http\FormRequest;

class MassDestroyPredictionRequest extends FormRequest
{
    public function authorize()
    {
        return abort_if(Gate::denies('prediction_delete'), 403, '403 Forbidden') ?? true;
    }

    public function rules()
    {
        return [
            'ids'   => 'required|array',
            'ids.*' => 'exists:predictions,id',
        ];
    }
}
