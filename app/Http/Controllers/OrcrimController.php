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
        $orcrim = Orcrim::withCount('people')->paginate();

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

        return view('app.orcrim.connections', [
            'connections' => json_encode($connections),
            'links' => json_encode($links),
        ]);
    }
}
