<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class MahasiswaResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'nama' => $this->nama,
            'jenis_kelamin' => $this->jenis_kelamin,
            'email' => $this->email,
            'telepon' => $this->telepon,
            'foto' => $this->foto,
            'kewarganegaraan' => $this->kewarganegaraan,
            'angkatan' => $this->angkatan,
            'semester' => $this->semester,
            'prodi_id' => $this->prodi_id,
            'prodi' => $this->prodi, // Add this line
            'status' => $this->status,
            'alamat' => $this->alamat,
            'tgl_lahir' => $this->tgl_lahir,
            'nim' => $this->nim,
            'jenjang_id' => $this->jenjang_id,
            'kelas_id' => $this->kelas_id,
        ];
    }
}
