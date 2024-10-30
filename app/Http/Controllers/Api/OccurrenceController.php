<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Occurrence;
use Illuminate\Http\Request;

class OccurrenceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = Occurrence::with(['people', 'orcrim', 'city']);

        if ($request->has('startDate') && $request->has('endDate')) {
            $query->whereBetween('occurred_at', [$request->startDate, $request->endDate]);
        } elseif ($request->has('startDate')) {
            $query->where('occurred_at', '>=', $request->startDate);
        } elseif ($request->has('endDate')) {
            $query->where('occurred_at', '<=', $request->endDate);
        }

        // Filtro por city_id
        if ($request->has('city_id')) {
            $query->where('cities_id', $request->city_id);
        }

        // Filtro por orcrim_id
        if ($request->has('orcrim_id')) {
            $query->where('orcrim_id', $request->orcrim_id);
        }

        // Paginação dos resultados
        $occurrences = $query->paginate();

        return response()->json([
            'data' => $occurrences->items(),
            'current_page' => $occurrences->currentPage(),
            'last_page' => $occurrences->lastPage(),
            'total' => $occurrences->total(),
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
        $occurrence = Occurrence::with(['people', 'orcrim', 'city'])->findOrFail($id);

        return response()->json(['data' => $occurrence]);
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
