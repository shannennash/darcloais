<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyUserRequest;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use App\Role;
use App\User;
use Auth;

class UsersController extends Controller
{
    public function index(User $user)
    {
        abort_unless(\Gate::allows('user_access'), 403);

        $users = User::all();

        $user->load('roles');

        $logged_user    = \Auth::user();
        $logged_user_id = $logged_user->id;
        $logged_role = $logged_user->roles()->pluck('id')->first();

        if($logged_role == 1) {
            return view('admin.users.index', compact('users'));
        } else {
            return redirect('/');
        }

        // return view('admin.users.index', compact('users'));
    }

    public function create()
    {
        abort_unless(\Gate::allows('user_create'), 403);

        $roles = Role::all()->pluck('title', 'id');

        return view('admin.users.create', compact('roles'));
    }

    public function store(StoreUserRequest $request)
    {
        abort_unless(\Gate::allows('user_create'), 403);

        $user = User::create($request->all());
        $user->roles()->sync($request->input('roles', []));

        return redirect()->route('admin.users.index');
    }

    public function edit(User $user)
    {
        abort_unless(\Gate::allows('user_edit'), 403);

        $roles = Role::all()->pluck('title', 'id');

        $user->load('roles');

        $logged_user    = \Auth::user();
        $logged_user_id = $logged_user->id;
        $logged_role = $logged_user->roles()->pluck('id')->first();
        if($logged_role == 1) {
            return view('admin.users.edit', compact('roles', 'user', 'logged_role'));
        } else {
            if($user->id != $logged_user_id) {
                return redirect('/');
            } else {
                return view('admin.users.edit', compact('roles', 'user', 'logged_role'));
            }
        }

    }

    public function update(UpdateUserRequest $request, User $user)
    {
        abort_unless(\Gate::allows('user_edit'), 403);

        $user->update($request->all());
        $user->roles()->sync($request->input('roles', []));

        return redirect()->route('admin.users.index');
    }

    public function show(User $user)
    {
        abort_unless(\Gate::allows('user_show'), 403);

        $user->load('roles');

        return view('admin.users.show', compact('user'));
    }

    public function destroy(User $user)
    {
        abort_unless(\Gate::allows('user_delete'), 403);

        $user->delete();

        return back();
    }

    public function massDestroy(MassDestroyUserRequest $request)
    {
        User::whereIn('id', request('ids'))->delete();

        return response(null, 204);
    }
}
