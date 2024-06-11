<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Semester;


class SemesterController extends Controller
{
    public function index()
    {
        $semester = Semester::all();
        return response()->json($semester);
    }
}
