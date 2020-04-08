<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreLdisRequest;
use App\Http\Requests\UpdateLdisRequest;
use App\Ldis;

class LdissApiController extends Controller
{
    public function index()
    {
        $ldiss = Ldis::all();

        return $ldiss;
    }

    public function store(StoreLdisRequest $request)
    {
        return Ldis::create($request->all());
    }

    public function update(UpdateLdisRequest $request, Ldis $ldis)
    {
        return $ldis->update($request->all());
    }

    public function show(Ldis $ldis)
    {
        return $ldis;
    }

    public function destroy(Ldis $ldis)
    {
        return $ldis->delete();
    }
}
