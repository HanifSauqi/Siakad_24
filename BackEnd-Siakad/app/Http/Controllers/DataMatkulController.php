<?php

namespace App\Http\Controllers;

use App\Models\DataMatkul;
use App\Http\Resources\DataMatkulResource;
use Illuminate\Http\Request;

class DataMatkulController extends Controller
{
    public function index()
    {
        $dataMatkul = DataMatkul::with('dosen')->get();
        return DataMatkulResource::collection($dataMatkul);
    }

    public function store(Request $request)
    {
        $dataMatkul = DataMatkul::create($request->all());
        return response()->json($dataMatkul, 201);
    }

    public function show(DataMatkul $dataMatkul)
    {
        return response()->json($dataMatkul);
    }

    public function update(Request $request, DataMatkul $dataMatkul)
    {
        $dataMatkul->update($request->all());
        return response()->json($dataMatkul);
    }

    public function destroy(DataMatkul $dataMatkul)
    {
        $dataMatkul->delete();
        return response()->json(null, 204);
    }
}
