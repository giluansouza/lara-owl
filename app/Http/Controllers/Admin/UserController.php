<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function index()
    {
        $users = User::paginate();

        return view('admin.users.index', compact('users'));
    }

    public function create()
    {
        return view('admin.users.create');
    }

    public function store(StoreUserRequest $request)
    {
        User::create($request->validated());

        return redirect()->route('users.index')
            ->with('success', 'User created successfully');
    }

    public function edit(string $id)
    {
        if (!$user = User::find($id)) {
            return redirect()->route('users.index')->with('message', 'User not found');
        }

        return view('admin.users.edit', compact('user'));
    }

    public function update(UpdateUserRequest $request, string $id)
    {
        if (!$user = User::find($id)) {
            return back()->with('message', 'User not found');
        }

        $user->update($request->only(['name', 'email']));

        return redirect()->route('users.index')
            ->with('success', 'User updated successfully');
    }

    public function show(string $id)
    {
        if (!$user = User::find($id)) {
            return redirect()->route('users.index')->with('message', 'User not found');
        }

        return view('admin.users.show', compact('user'));
    }

    public function delete(string $id)
    {
        if (!$user = User::find($id)) {
            return back()->with('message', 'User not found');
        }

        if (Auth::user()->id === $user->id) {
            return back()->with('message', 'You cannot delete yourself');
        }

        $user->delete();

        return redirect()->route('users.index')->with('success', 'User deleted successfully');
    }

    public function token()
    {
        $user = User::find(Auth::user()->id);
        $token = $user->createToken('api-token')->plainTextToken;

        return view('admin.users.token', compact('token'));
    }
}
