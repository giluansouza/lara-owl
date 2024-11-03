<?php

namespace App\Http\Controllers;

use App\Models\Orcrim;
use App\Models\Polygon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PolygonController extends Controller
{
    public function create()
    {
        $orcrims = Orcrim::all();
        return view('app.maps.create', compact('orcrims'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'orcrim_id' => 'required|exists:orcrims,id',
            'coordinates' => 'required|json',
        ]);

        try {
            DB::beginTransaction();

            $coordinates = json_decode($request->coordinates, true);

            Polygon::create([
                'name' => $request->name,
                'orcrim_id' => $request->orcrim_id,
                'area' => DB::raw("ST_GeomFromGeoJSON('" . json_encode($coordinates) . "')")
            ]);

            DB::commit();

            return redirect()->route('maps.index')
                ->with('success', 'Polígono criado com sucesso!');
        } catch (\Exception $e) {
            DB::rollBack();
            return back()->with('error', 'Erro ao criar polígono: ' . $e->getMessage());
        }
    }

    public function edit(Polygon $polygon)
    {
        $orcrims = Orcrim::all();
        $polygonGeoJson = DB::select("SELECT ST_AsGeoJSON(area) as geojson FROM polygons WHERE id = ?", [$polygon->id])[0]->geojson;

        return view('app.maps.edit', compact('polygon', 'orcrims', 'polygonGeoJson'));
    }

    public function update(Request $request, Polygon $polygon)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'orcrim_id' => 'required|exists:orcrims,id',
            'coordinates' => 'required|json',
        ]);

        try {
            DB::beginTransaction();

            $coordinates = json_decode($request->coordinates, true);

            $polygon->update([
                'name' => $request->name,
                'orcrim_id' => $request->orcrim_id,
                'area' => DB::raw("ST_GeomFromGeoJSON('" . json_encode($coordinates) . "')")
            ]);

            DB::commit();

            return redirect()->route('maps.index')
                ->with('success', 'Polígono atualizado com sucesso!');
        } catch (\Exception $e) {
            DB::rollBack();
            return back()->with('error', 'Erro ao atualizar polígono: ' . $e->getMessage());
        }
    }
}
