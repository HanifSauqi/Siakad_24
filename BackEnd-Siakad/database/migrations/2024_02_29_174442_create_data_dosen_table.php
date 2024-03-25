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
        Schema::create('data_dosen', function (Blueprint $table) {
            $table->id();
            $table->string('foto')->nullable();
            $table->string('nidn')->unique();
            $table->string('nama');
            $table->enum('jenis_kelamin', ['Laki-laki', 'Perempuan']);
            $table->string('email')->unique();
            $table->string('telepon')->nullable();
            $table->string('kewarganegaraan')->nullable();
            $table->string('jenjang_pendidikan');
            $table->string('prodi_diampu');
            $table->enum('status', ['Tetap', 'Tidak Tetap']);
            $table->timestamps();
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('data_dosen');
    }
};
