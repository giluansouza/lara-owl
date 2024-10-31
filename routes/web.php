<?php

use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\MapController;
use App\Http\Controllers\OrcrimController;
use App\Http\Controllers\OccurrenceController;
use App\Http\Controllers\PeopleController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

Route::middleware('auth')
    ->prefix('admin')
    ->group(function () {
        Route::delete('/users/{user}', [UserController::class, 'delete'])->name('users.delete');
        Route::get('/users/create', [UserController::class, 'create'])->name('users.create');
        Route::get('/users/token', [UserController::class, 'token'])->name('users.token');
        Route::get('/users/{user}', [UserController::class, 'show'])->name('users.show');
        Route::get('/users', [UserController::class, 'index'])->name('users.index');
        Route::post('/users', [UserController::class, 'store'])->name('users.store');
        Route::get('/users/{user}/edit', [UserController::class, 'edit'])->name('users.edit');
        Route::put('/users/{user}', [UserController::class, 'update'])->name('users.update');
    });

Route::middleware('auth')
    ->prefix('app')
    ->group(function () {
        Route::delete('/people/{people}', [PeopleController::class, 'destroy'])->name('people.destroy');
        Route::get('/people/create', [PeopleController::class, 'create'])->name('people.create');
        Route::get('/people/{people}', [PeopleController::class, 'show'])->name('people.show');
        Route::get('/people', [PeopleController::class, 'index'])->name('people.index');
        Route::post('/people', [PeopleController::class, 'store'])->name('people.store');
        Route::get('/people/{people}/edit', [PeopleController::class, 'edit'])->name('people.edit');
        Route::put('/people/{people}', [PeopleController::class, 'update'])->name('people.update');

        // Route::delete('/org/{people}', [OrcrimController::class, 'destroy'])->name('org.destroy');
        // Route::get('/org/create', [OrcrimController::class, 'create'])->name('org.create');
        // Route::get('/org/{people}', [OrcrimController::class, 'show'])->name('org.show');
        Route::get('/grupo-crime', [OrcrimController::class, 'index'])->name('gc.index');
        Route::get('/grupo-crime/{id}/connections', [OrcrimController::class, 'showConnections'])->name('gc.connections');
        // Route::post('/org', [OrcrimController::class, 'store'])->name('org.store');
        // Route::get('/org/{people}/edit', [OrcrimController::class, 'edit'])->name('org.edit');
        // Route::put('/org/{people}', [OrcrimController::class, 'update'])->name('org.update');

        Route::delete('/occurrences/{people}', [OccurrenceController::class, 'destroy'])->name('occurrence.destroy');
        Route::get('/occurrences/create', [OccurrenceController::class, 'create'])->name('occurrence.create');
        Route::get('/occurrences/{people}', [OccurrenceController::class, 'show'])->name('occurrence.show');
        Route::get('/occurrences', [OccurrenceController::class, 'index'])->name('occurrence.index');
        Route::post('/occurrences', [OccurrenceController::class, 'store'])->name('occurrence.store');
        Route::get('/occurrences/{people}/edit', [OccurrenceController::class, 'edit'])->name('occurrence.edit');
        Route::put('/occurrences/{people}', [OccurrenceController::class, 'update'])->name('occurrence.update');

        // Mapas
        Route::get('/mapas', [MapController::class, 'index'])->name('map.index');
    });

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
