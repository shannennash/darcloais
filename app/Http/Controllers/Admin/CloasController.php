<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyCloaRequest;
use App\Http\Requests\StoreCloaRequest;
use App\Http\Requests\UpdateCloaRequest;
use App\Cloa;

class CloasController extends Controller
{
    public function index()
    {
        abort_unless(\Gate::allows('cloa_access'), 403);

        $cloas = Cloa::all();

        return view('admin.cloas.index', compact('cloas'));
    }

    public function create()
    {
        abort_unless(\Gate::allows('cloa_create'), 403);

        return view('admin.cloas.create');
    }

    public function store(StoreCloaRequest $request)
    {
        abort_unless(\Gate::allows('cloa_create'), 403);

        $cloa = Cloa::create($request->all());

        return redirect()->route('admin.cloas.index');
    }

    public function edit(Cloa $cloa)
    {
        abort_unless(\Gate::allows('cloa_edit'), 403);

        return view('admin.cloas.edit', compact('cloa'));
    }

    public function update(UpdateCloaRequest $request, Cloa $cloa)
    {
        abort_unless(\Gate::allows('cloa_edit'), 403);

        $cloa->update($request->all());

        return redirect()->route('admin.cloas.index');
    }

    public function show(Cloa $cloa)
    {
        abort_unless(\Gate::allows('cloa_show'), 403);

        return view('admin.cloas.show', compact('cloa'));
    }

    public function destroy(Cloa $cloa)
    {
        abort_unless(\Gate::allows('cloa_delete'), 403);

        $cloa->delete();

        return back();
    }

    public function massDestroy(MassDestroyCloaRequest $request)
    {
        Cloa::whereIn('id', request('ids'))->delete();

        return response(null, 204);
    }
}
