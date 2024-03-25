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
            $table->unsignedBigInteger('user_id');
            $table->string('foto')->nullable();
            $table->string('NIDN');
            $table->string('nama');
            $table->string('jenis_kelamin');
            $table->string('email');
            $table->string('telepon');
            $table->string('kewarganegaraan');
            $table->unsignedBigInteger('id_pendidikan');
            $table->string('status');
            $table->string('alamat');
            $table->date('tgl_lahir');
            $table->string('nip');
            $table->unsignedBigInteger('id_jabatan');
            $table->string('keahlian');
            $table->string('status_keaktifan');
            $table->string('status_pekerjaan');
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('id_pendidikan')->references('id')->on('history_pendidikan')->onDelete('cascade');
            $table->foreign('id_jabatan')->references('id')->on('jabatan_dosen')->onDelete('cascade');
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
