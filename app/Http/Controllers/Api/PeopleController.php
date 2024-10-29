<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\People;
use Illuminate\Http\Request;

class PeopleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = People::query();

        if ($request->has('name')) {
            $query->where('name', 'like', '%' . $request->name . '%');
        }

        if ($request->has('orcrimId')) {
            $query->where('orcrim_id', $request->orcrimId);
        }

        if ($request->has('cityId')) {
            $query->where('city_id', $request->cityId);
        }

        $people = $query->paginate();

        return response()->json([
            'data' => $people->items(),
            'current_page' => $people->currentPage(),
            'last_page' => $people->lastPage(),
            'total' => $people->total(),
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
        $person = People::findOrFail($id);

        return response()->json(['data' => $person]);
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
