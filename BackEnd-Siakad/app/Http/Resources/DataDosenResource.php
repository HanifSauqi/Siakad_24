<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class DataDosenResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'user_id' => $this->user_id,
            'foto' => $this->foto,
            'NIDN' => $this->NIDN,
            'nama' => $this->nama,
            'jenis_kelamin' => $this->jenis_kelamin,
            'email' => $this->email,
            'telepon' => $this->telepon,
            'kewarganegaraan' => $this->kewarganegaraan,
            'id_pendidikan' => $this->id_pendidikan,
            'history_pendidikan' => $this->history_pendidikan, // Add this line
            'status' => $this->status,
            'alamat' => $this->alamat,
            'tgl_lahir' => $this->tgl_lahir,
            'nip' => $this->nip,
            'id_jabatan' => $this->id_jabatan,
            'keahlian' => $this->keahlian,
            'status_keaktifan' => $this->status_keaktifan,
            'status_pekerjaan' => $this->status_pekerjaan,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}
