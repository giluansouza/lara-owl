<?php

namespace App\Http\Controllers;

use App\Models\People;
use Illuminate\Http\Request;

class PeopleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $people = People::orderBy('name', 'asc')->paginate();

        return view('app.people.index', compact('people'));
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
    public function store(Request $request) {}

    /**
     * Display the specified resource.
     */
    public function show(People $people)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(People $people)
    {
        if (!$people = People::find($people->id)) {
            return redirect()->route('people.index')->with('message', 'Pessoa não encontrada');
        }

        return view('app.people.edit', ['people' => $people]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, People $people)
    {
        if (!$people = People::find($people->id)) {
            return back()->with('message', 'Pessoa não encontrada');
        }

        $data = $request->except('_method', '_token');
        $people->update($data);

        return redirect()->route('people.index')->with('success', 'Pessoa atualizada com sucesso');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(People $people)
    {
        //
    }
}
