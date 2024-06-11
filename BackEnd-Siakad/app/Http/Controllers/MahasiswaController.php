<?php

namespace App\Http\Controllers;

use App\Models\Mahasiswa;
use App\Http\Resources\MahasiswaResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
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
        $data = $request->all();
    
        if ($request->hasFile('foto')) {
            $file = $request->file('foto');
            $extension = $file->getClientOriginalExtension();
            $filename = Str::random(20) . '.' . $extension;
            $path = Storage::putFileAs('public/uploads', $file, $filename);
            $data['foto'] = $filename;
        }
    
        $mahasiswa = Mahasiswa::create($data);
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
