<?php

use App\Http\Controllers\AuthenticationController;
use App\Http\Controllers\DataDosenController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\DataMatkulController;
use App\Http\Controllers\FakultasController;
use App\Http\Controllers\ProdiController;
use App\Http\Controllers\SemesterController;



Route::post('/login', [AuthenticationController::class, 'login']);
Route::get('/logout', [AuthenticationController::class, 'logout'])->middleware(['auth:sanctum']);

Route::middleware('auth:sanctum')->group(function () {
    // Data Dosen routes
    Route::get('/data_dosen', [DataDosenController::class, 'index'])->name('data_dosen.index');
    Route::post('/data_dosen', [DataDosenController::class, 'store'])->name('data_dosen.store');
    Route::get('/data_dosen/{id}', [DataDosenController::class, 'show'])->name('data_dosen.show');
    Route::put('/data_dosen/{id}', [DataDosenController::class, 'update'])->name('data_dosen.update');
    Route::delete('/data_dosen/{id}', [DataDosenController::class, 'destroy'])->name('data_dosen.destroy');

    // Mahasiswa routes
    Route::get('/mahasiswa', [MahasiswaController::class, 'index']);
    Route::post('/mahasiswa', [MahasiswaController::class, 'store']);
    Route::get('/mahasiswa/{mahasiswa}', [MahasiswaController::class, 'show']);
    Route::put('/mahasiswa/{mahasiswa}', [MahasiswaController::class, 'update']);
    Route::delete('/mahasiswa/{mahasiswa}', [MahasiswaController::class, 'destroy']);

    // Data Matkul routes
    Route::get('/data_matkul', [DataMatkulController::class, 'index']);
    Route::post('/data_matkul', [DataMatkulController::class, 'store']);
    Route::get('/data_matkul/{dataMatkul}', [DataMatkulController::class, 'show']);
    Route::put('/data_matkul/{dataMatkul}', [DataMatkulController::class, 'update']);
    Route::delete('/data_matkul/{dataMatkul}', [DataMatkulController::class, 'destroy']);

    
    Route::get('/fakultas', [FakultasController::class, 'index']);

    Route::get('/prodi', [ProdiController::class, 'index']);
    Route::get('/prodi/fakultas/{fakultasId}', [ProdiController::class, 'getByFakultas']);

    Route::get('/semester', [SemesterController::class, 'index']);
});
