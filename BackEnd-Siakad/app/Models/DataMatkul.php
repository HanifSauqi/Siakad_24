<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataMatkul extends Model
{
    use HasFactory;

    protected $table = 'data_matkul';

    protected $fillable = [
        'kode',
        'nama',
        'jumlah_sks',
        'semester_id',
        'dosen_id',
        'jenis_matkul',
    ];

    public function semester()
    {
        return $this->belongsTo('App\Models\DataSemester', 'semester_id');
    }

    public function dosen()
    {
        return $this->belongsTo('App\Models\DataDosen', 'dosen_id');
    }
}
