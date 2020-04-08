<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Input;
use Response;
use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyLdisRequest;
use App\Http\Requests\StoreLdisRequest;
use App\Http\Requests\UpdateLdisRequest;
use App\Ldis;

class LdissController extends Controller
{
    public function index()
    {
        abort_unless(\Gate::allows('ldis_access'), 403);

        $ldiss = Ldis::all();

        return view('admin.ldiss.index', compact('ldiss'));
    }

    public function create()
    {
        abort_unless(\Gate::allows('ldis_create'), 403);

        return view('admin.ldiss.create');
    }

    public function store(StoreLdisRequest $request)
    {
        abort_unless(\Gate::allows('ldis_create'), 403);

        $cloa_no = Ldis::where('cloa_no', Input::get('cloa_no'))->first();
        if ($cloa_no === null) {
            $ldis = Ldis::create($request->all());
           return redirect()->route('admin.ldiss.index')->with('message', 'Data has been saved!');
        } else {
           return redirect()->back()->withErrors(['Cloa Number Already Exist!']);
        }

        // $ldis = Ldis::create($request->all());
        // return redirect()->route('admin.ldiss.index');
    }

    public function check_cloano()
    {
        $cloano = Input::get('cloa_no');
        $data = Ldis::where('cloa_no',$cloano)->get();
        return count($data);
    }

    public function edit(Ldis $ldis)
    {
        abort_unless(\Gate::allows('ldis_edit'), 403);

        return view('admin.ldiss.edit', compact('ldis'));
    }

    public function update(UpdateLdisRequest $request, Ldis $ldis)
    {
        abort_unless(\Gate::allows('ldis_edit'), 403);

        $ldis->update($request->all());
        $ldis->permissions()->sync($request->input('permissions', []));

        return redirect()->route('admin.ldiss.index');
    }

    public function show(Ldis $ldis)
    {
        abort_unless(\Gate::allows('ldis_show'), 403);

        $ldis->load('permissions');

        return view('admin.ldiss.show', compact('ldis'));
    }

    public function destroy(Ldis $ldis)
    {
        abort_unless(\Gate::allows('ldis_delete'), 403);

        $ldis->delete();

        return back();
    }

    public function massDestroy(MassDestroyLdisRequest $request)
    {
        Ldis::whereIn('id', request('ids'))->delete();

        return response(null, 204);
    }
}
