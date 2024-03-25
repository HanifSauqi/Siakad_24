<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JenjangPendidikan extends Model
{
    use HasFactory;
    protected $table = 'jenjang_pendidikan';
    protected $fillable = ['nama'];
    public function DataDosen()
    {
        return $this->hasMany('App\Models\DataDosen');
    }
    public function HistoryPendidikan()
    {
        return $this->hasMany('App\Models\HistoryPendidikan');
    }

}
