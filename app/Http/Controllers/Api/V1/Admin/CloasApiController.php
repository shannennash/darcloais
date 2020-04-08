<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCloaRequest;
use App\Http\Requests\UpdateCloaRequest;
use App\Cloa;

class CloasApiController extends Controller
{
    public function index()
    {
        $cloas = Cloa::all();

        return $cloas;
    }

    public function store(StoreCloaRequest $request)
    {
        return Cloa::create($request->all());
    }

    public function update(UpdateCloaRequest $request, Cloa $cloa)
    {
        return $cloa->update($request->all());
    }

    public function show(Cloa $cloa)
    {
        return $cloa;
    }

    public function destroy(Cloa $cloa)
    {
        return $cloa->delete();
    }
}
