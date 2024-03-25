<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use App\Http\Resources\MahasiswaResource;
use Illuminate\Http\Request;

class MahasiswaController extends Controller
{
    public function index()
    {
        $mahasiswa = Mahasiswa::with(['prodi', 'prodi.fakultas'])->get();
        return MahasiswaResource::collection($mahasiswa);
    }

    public function store(Request $request)
    {
        $mahasiswa = Mahasiswa::create($request->all());
        return new MahasiswaResource($mahasiswa);
    }

    public function show(Mahasiswa $mahasiswa)
    {
        return new MahasiswaResource($mahasiswa);
    }

    public function update(Request $request, Mahasiswa $mahasiswa)
    {
        $mahasiswa->update($request->all());
        return new MahasiswaResource($mahasiswa);
    }

    public function destroy(Mahasiswa $mahasiswa)
    {
        $mahasiswa->delete();
        return response()->json(null, 204);
    }
}
