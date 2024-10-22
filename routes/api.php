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
                $person = $query->find($request->id);

                if (!$person) {
                    return response()->json(['message' => 'Pessoa não encontrada.'], 404);
                }

                return response()->json(['data' => $person]);
            } else {
                $people = $query->paginate();

                return response()->json([
                    'data' => $people->items(),
                    'current_page' => $people->currentPage(),
                    'last_page' => $people->lastPage(),
                    'total' => $people->total(),
                ]);
            }
        });

        Route::get('/people/{people}', function (Request $request, $people) {
            $person = People::findOrFail($people);

            return response()->json(['data' => $person]);
        });
    });



Route::post("/login", function (Request $request) {
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
