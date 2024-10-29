<?php

use App\Http\Controllers\Api\CityController;
use App\Http\Controllers\Api\OrcrimController;
use App\Http\Controllers\Api\PeopleController;
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

        Route::apiResource('/people', PeopleController::class);
        Route::apiResource('/orcrims', OrcrimController::class);
        Route::apiResource('/cities', CityController::class);
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
