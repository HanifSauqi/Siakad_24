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
        Schema::create('history_pendidikan', function (Blueprint $table) {
            $table->id();
            $table->string('nama_univ');
            $table->year('tahun_lulus');
            $table->foreignId('jenjang_id')->constrained('jenjang_pendidikan');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('history_pendidikan');
    }
};
