<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyPredictionRequest;
use App\Http\Requests\StorePredictionRequest;
use App\Http\Requests\StoreLdisRequest;
use App\Http\Requests\UpdatePredictionRequest;
use App\Prediction;
use App\Ldis;

class PredictionsController extends Controller
{
    public function index()
    {
        abort_unless(\Gate::allows('prediction_access'), 403);

        $ldiss = Ldis::all();

        return view('admin.predictions.index', compact('ldiss'));
    }

    public function create()
    {
        abort_unless(\Gate::allows('prediction_create'), 403);

        return view('admin.predictions.create');
    }

    public function store(StorePredictionRequest $request)
    {
        abort_unless(\Gate::allows('prediction_index'), 403);

        $prediction = Ldis::create($request->all());

        return redirect()->route('admin.predictions.index');
    }

    public function edit(Prediction $prediction)
    {
        abort_unless(\Gate::allows('prediction_edit'), 403);

        return view('admin.predictions.edit', compact('Prediction'));
    }

    public function update(UpdatePredictionRequest $request, Prediction $prediction)
    {
        abort_unless(\Gate::allows('prediction_edit'), 403);

        $prediction->update($request->all());
        $prediction->permissions()->sync($request->input('permissions', []));

        return redirect()->route('admin.predictions.index');
    }

    public function show(Prediction $prediction)
    {
        abort_unless(\Gate::allows('prediction_show'), 403);

        $prediction->load('permissions');

        return view('admin.predictions.show', compact('Prediction'));
    }

    public function destroy(Prediction $prediction)
    {
        abort_unless(\Gate::allows('prediction_delete'), 403);

        $prediction->delete();

        return back();
    }

    public function massDestroy(MassDestroyPredictionRequest $request)
    {
        Prediction::whereIn('id', request('ids'))->delete();

        return response(null, 204);
    }
}
