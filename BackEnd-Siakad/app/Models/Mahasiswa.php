<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Mahasiswa extends Model
{
    use HasFactory;

    protected $table = 'data_mahasiswa';

    protected $fillable = [
        'user_id',
        'nama',
        'jenis_kelamin',
        'email',
        'telepon',
        'foto',
        'kewarganegaraan',
        'angkatan',
        'semester',
        'prodi_id',
        'status',
        'alamat',
        'tgl_lahir',
        'nim',
        'jenjang_id',
        'kelas_id',
        'prodi_id',
    ];

    public function prodi()
{
    return $this->belongsTo('App\Models\Prodi');
}
}
