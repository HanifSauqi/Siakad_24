<?php

namespace App\Http\Controllers;

use App\Models\DataDosen;
use App\Http\Resources\DataDosenResource;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;



class DataDosenController extends Controller
{
    public function index()
    {
        $DataDosen = DataDosen::with(['history_pendidikan.jenjang'])->get();
        return DataDosenResource::collection($DataDosen);
    }

    public function store(Request $request)
    {

        $data = $request->all();
    
        if ($request->hasFile('foto')) {
            $file = $request->file('foto');
            $extension = $file->getClientOriginalExtension();
            $filename = Str::random(20) . '.' . $extension;
            $path = Storage::putFileAs('public/uploads', $file, $filename);
            $data['foto'] = $filename;
        }

        $dosen = DataDosen::create($data);
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
