<?php

use App\Models\People;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;
use Illuminate\Validation\ValidationException;

Route::middleware('auth:sanctum')
    ->group(function () {
        Route::get('/users', function (Request $request) {
            $user = User::find(Auth::user()->id);

            return response()->json([
                'user' => $user
            ]);
        });

        Route::get('/people', function (Request $request) {
            $query = People::query();

            if ($request->has('name')) {
                $query->where('name', 'like', '%' . $request->name . '%');
            }

            if ($request->has('id')) {
                $query->where('id', $request->id);
            }

            $people = $query->paginate();

            return response()->json([
                'data' => $people->items(),
                'current_page' => $people->currentPage(),
                'last_page' => $people->lastPage(),
                'total' => $people->total(),
            ]);
        });
    });



Route::post("/login", function (Request $request) {
    // $request->validate([
    //     "email" => ["required", "email"],
    //     "password" => ["required"],
    //     'device_name' => ['required']
    // ]);

    $user = User::where("email", $request->email)->first();

    if (!$user || !Hash::check($request->password, $user->password)) {
        throw ValidationException::withMessages([
            "email" => ["E-mail ou senha incorretos, verifique seus dados."],
        ]);
    }

    return response()->json([
        'token' => $user->createToken($request->device_name)->plainTextToken
    ]);
});
