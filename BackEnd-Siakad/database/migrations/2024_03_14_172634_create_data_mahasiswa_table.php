<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('data_mahasiswa', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained('users');
            $table->string('nama');
            $table->string('jenis_kelamin');
            $table->string('email');
            $table->string('telepon');
            $table->string('foto');
            $table->string('kewarganegaraan');
            $table->year('angkatan');
            $table->foreignId('semester')->constrained('data_semester');
            $table->foreignId('prodi_id')->constrained('prodi');
            $table->string('status');
            $table->text('alamat');
            $table->date('tgl_lahir');
            $table->string('nim');
            $table->foreignId('jenjang_id')->constrained('jenjang_pendidikan');
            $table->foreignId('kelas_id')->constrained('data_kelas');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('data_mahasiswa');
    }
};
