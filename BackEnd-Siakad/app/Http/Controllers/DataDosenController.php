<?php

namespace App\Http\Controllers;

use App\Models\DataDosen;
use App\Http\Resources\DataDosenResource;
use Illuminate\Http\Request;

class DataDosenController extends Controller
{
    public function index()
    {
        $DataDosen = DataDosen::with(['history_pendidikan.jenjang'])->get();
        return DataDosenResource::collection($DataDosen);
    }

    public function store(Request $request)
    {
        $dosen = DataDosen::create($request->all());
        return new DataDosenResource($dosen);
    }

    public function show($id)
    {
        $dosen = DataDosen::find($id);

        if ($dosen) {
            return new DataDosenResource($dosen);
        } else {
            return response()->json(['message' => 'DataDosen not found'], 404);
        }
    }

    public function update(Request $request, $id)
    {
        $dosen = DataDosen::find($id);

        if ($dosen) {
            $dosen->update($request->all());
            return new DataDosenResource($dosen);
        } else {
            return response()->json(['message' => 'DataDosen not found'], 404);
        }
    }

    public function destroy($id)
    {
        $dosen = DataDosen::find($id);

        if ($dosen) {
            $dosen->delete();
            return response()->json(null, 204);
        } else {
            return response()->json(['message' => 'DataDosen not found'], 404);
        }
    }
}
