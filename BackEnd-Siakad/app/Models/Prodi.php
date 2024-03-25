<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prodi extends Model
{
    use HasFactory;

    protected $table = 'prodi';

    protected $fillable = ['nama_jurusan', 'fakultas_id', 'departmen_id'];

    public function mahasiswa()
    {
        return $this->hasMany('App\Models\Mahasiswa');
    }
    
    public function fakultas()
    {
        return $this->belongsTo('App\Models\Fakultas');
    }
}
