<?php

namespace App\Http\Controllers;

use App\Models\Orcrim;
use App\Models\Polygon;

class MapController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $orcrims = Orcrim::withCount(['people', 'occurrences'])
            ->with(['polygon' => function ($query) {
                $query->selectRaw("id, name, orcrim_id, ST_AsGeoJSON(area) as geojson");
            }])
            ->get();

        // Transformar polígonos em GeoJSON
        $maps = $orcrims->flatMap(function ($orcrim) {
            return $orcrim->polygon->map(function ($polygon) use ($orcrim) {
                // Decodificando o GeoJSON
                $geojson = json_decode($polygon->geojson, true);

                return [
                    'id' => $polygon->id,
                    'polygon_name' => $polygon->name,
                    'orcrim_name' => $orcrim->orcrim_name,
                    'geojson' => json_encode($geojson),
                    'total_people' => $orcrim->people_count,
                    'total_occurrences' => $orcrim->occurrences_count,
                ];
            })->filter();
        });

        return view('app.maps.index', compact('maps'));
    }
}
