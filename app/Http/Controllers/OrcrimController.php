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
}
