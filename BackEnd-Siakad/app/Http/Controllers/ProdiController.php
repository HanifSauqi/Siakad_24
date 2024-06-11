<?php

namespace App\Http\Controllers;

use App\Models\Prodi;
use Illuminate\Http\Request;

class ProdiController extends Controller
{
    public function index()
    {
        $prodi = Prodi::with(['fakultas'])->get();
        return response()->json($prodi);
    }

    public function getByFakultas($fakultasId)
    {
        $prodi = Prodi::where('fakultas_id', $fakultasId)->with('fakultas')->get();
        return response()->json($prodi);
    }
    // ... method lainnya ...
}
