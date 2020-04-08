<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StorePredictionRequest;
use App\Http\Requests\UpdatePredictionRequest;
use App\Prediction;

class PredictionsApiController extends Controller
{
    public function index()
    {
        $predictions = Prediction::all();

        return $predictions;
    }

    public function store(StorePredictionRequest $request)
    {
        return Prediction::create($request->all());
    }

    public function update(UpdatePredictionRequest $request, Prediction $prediction)
    {
        return $prediction->update($request->all());
    }

    public function show(Prediction $prediction)
    {
        return $prediction;
    }

    public function destroy(Prediction $prediction)
    {
        return $prediction->delete();
    }
}
