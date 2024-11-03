<?php

namespace App\Http\Controllers;

use App\Models\Orcrim;
use Illuminate\Http\Request;

class OrcrimController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $orcrim = Orcrim::withCount(['people', 'occurrences'])->paginate();

        return view('app.orcrim.index', compact('orcrim'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
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
    public function show(Orcrim $organization)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Orcrim $organization)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Orcrim $organization)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Orcrim $organization)
    {
        //
    }

    public function showConnections($id)
    {
        $orcrim = Orcrim::with('people')->find($id);

        $connections = [];
        $links = [];

        foreach ($orcrim->people as $person) {
            $connections[$person->id] = [
                'name' => $person->name,
                'image' => $person->image,
                'connections' => $person->relationships->count(),
            ];

            // Adiciona cada relacionamento como um link entre nós
            foreach ($person->relationships as $relatedPerson) {
                // Verifica se já existe um link entre esses IDs para evitar duplicação
                $links[] = [
                    'source' => $person->id,
                    'target' => $relatedPerson->id,
                ];
            }
        }

        return response()->json([
            'nodes' => $connections,
            'links' => $links,
        ]);
    }

    public function showMaps($id)
    {
        $orcrim = Orcrim::withCount(['people', 'occurrences'])
            ->with(['polygon' => function ($query) {
                $query->selectRaw("id, name, orcrim_id, ST_AsGeoJSON(area) as geojson");
            }])
            ->find($id);

        if (!$orcrim) {
            return response()->json(['error' => 'Orcrim não encontrado.'], 404);
        }

        // Transformar polígonos em GeoJSON
        $maps = $orcrim->polygon->map(function ($polygon) use ($orcrim) {
            // Decodificando o GeoJSON
            $geojson = json_decode($polygon->geojson, true);

            return [
                'orcrim_name' => $orcrim->orcrim_name,
                'geojson' => json_encode($geojson),
                'total_people' => $orcrim->people_count,
                'total_occurrences' => $orcrim->occurrences_count,
            ];
        })->filter(); // Remover elementos nulos

        return response()->json($maps);
    }
}
