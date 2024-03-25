<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('data_matkul', function (Blueprint $table) {
            $table->id();
            $table->string('kode');
            $table->string('nama');
            $table->integer('jumlah_sks');
            $table->foreignId('semester_id')->constrained('data_semester');
            $table->foreignId('dosen_id')->constrained('data_dosen');
            $table->enum('jenis_matkul', ['Pilihan', 'Wajib']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('data_matkul');
    }
};
