<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DataDosen extends Model
{
    protected $table = 'data_dosen';
    use HasFactory;

    protected $fillable = [
        'user_id',
        'foto',
        'NIDN',
        'nama',
        'jenis_kelamin',
        'email',
        'telepon',
        'kewarganegaraan',
        'id_pendidikan',
        'status',
        'alamat',
        'tgl_lahir',
        'nip',
        'id_jabatan',
        'keahlian',
        'status_keaktifan',
        'status_pekerjaan',
    ];


    public function history_pendidikan()
    {
        return $this->hasOne('App\Models\HistoryPendidikan', 'id', 'id_pendidikan');
    }
}
