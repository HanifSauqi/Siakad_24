<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HistoryPendidikan extends Model
{
    use HasFactory;
    protected $table = 'history_pendidikan';
    protected $fillable = ['nama_univ', 'tahun_lulus', 'jenjang_id',];

    public function data_dosen()
    {
        return $this->hasMany('App\Models\DataDosen');
    }

    public function jenjang()
    {
        return $this->belongsTo('App\Models\JenjangPendidikan');
    }
}
