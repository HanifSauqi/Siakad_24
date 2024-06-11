<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class DataMatkulResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'kode' => $this->kode,
            'nama' => $this->nama,
            'jumlah_sks' => $this->jumlah_sks,
            'semester_id' => $this->semester_id,
            'dosen_id' => $this->dosen_id,
            'jenis_matkul' => $this->jenis_matkul,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'nama_dosen' => $this->whenLoaded('dosen', function () {
                return $this->dosen->nama;
            }),
        ];
    }
}