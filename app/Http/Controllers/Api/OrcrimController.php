<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Orcrim;
use Illuminate\Http\Request;

class OrcrimController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $orcrims = Orcrim::get();

        if ($orcrims->isEmpty()) {
            return response()->json([
                'message' => 'No orcrims found.',
            ], 404);
        }

        return response()->json([
            'data' => $orcrims,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $orcrim = Orcrim::with('people')->findOrFail($id);

        // Coleta de vínculos e influências
        $connections = [];
        foreach ($orcrim->people as $person) {
            $connections[$person->id] = [
                'name' => $person->name,
                'connections' => $person->relationships->count(), // Conta quantas conexões a pessoa tem
            ];
        }

        return response()->json($connections);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
