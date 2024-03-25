<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Factory as Faker;


class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Users
        DB::table('users')->insert([
            'email' => Str::random(10).'@gmail.com',
            'password' => bcrypt('password'),
            'role' => 'admin',
        ]);

        // Jenjang Pendidikan
        DB::table('jenjang_pendidikan')->insert([
            'nama' => 'S1',
        ]);

        // History Pendidikan
        DB::table('history_pendidikan')->insert([
            'nama_univ' => 'Universitas Contoh',
            'tahun_lulus' => 2020,
            'jenjang_id' => 1,
        ]);

        // Data Semester
        DB::table('data_semester')->insert([
            'semester' => 1,
        ]);

        // Data Kelas
        DB::table('data_kelas')->insert([
            'kode_kelas' => 'K01',
            'nama_kelas' => 'Kelas 01',
        ]);

        // Fakultas
        DB::table('fakultas')->insert([
            'nama' => 'Fakultas Teknik',
        ]);

        // Departemen
        DB::table('departemen')->insert([
            'nama_departemen' => 'Teknik Informatika',
        ]);

        // Prodi
        DB::table('prodi')->insert([
            'nama_jurusan' => 'Teknik Informatika',
            'fakultas_id' => 1,
            'departemen_id' => 1,
        ]);

        // Data Mahasiswa
        DB::table('data_mahasiswa')->insert([
            'user_id' => 1,
            'nama' => Str::random(10),
            'jenis_kelamin' => 'Laki-laki',
            'email' => Str::random(10).'@gmail.com',
            'telepon' => '081234567890',
            'foto' => 'default.jpg',
            'kewarganegaraan' => 'Indonesia',
            'angkatan' => 2020,
            'semester' => 1,
            'prodi_id' => 1,
            'status' => 'Aktif',
            'alamat' => 'Jl. Contoh, No. 1, Jakarta',
            'tgl_lahir' => '2000-01-01',
            'nim' => '1234567890',
            'jenjang_id' => 1,
            'kelas_id' => 1,
        ]);

        DB::table('jabatan_dosen')->insert([
            'jenis_jabatan' => 'Akademik',
            'nama_jabatan' => 'Dosen',
            'keterangan_jabatan' => 'Dosen Tetap',
        ]);

        DB::table('data_dosen')->insert([
            'user_id' => 1,
            'NIDN' => Str::random(10),
            'nama' => Str::random(10),
            'jenis_kelamin' => 'Laki-laki',
            'email' => Str::random(10).'@gmail.com',
            'telepon' => '081234567890',
            'kewarganegaraan' => 'Indonesia',
            'id_pendidikan' => 1,
            'status' => 'Aktif',
            'alamat' => 'Jl. Contoh, No. 1',
            'tgl_lahir' => '1990-01-01',
            'nip' => '1234567890',
            'id_jabatan' => 1,
            'keahlian' => 'Informatika',
            'status_keaktifan' => 'Aktif',
            'status_pekerjaan' => 'Dosen',
        ]);

        $faker = Faker::create();

for ($i = 0; $i < 10; $i++) {
    DB::table('data_mahasiswa')->insert([
        'user_id' => 1,
        'nama' => $faker->name,
        'jenis_kelamin' => $faker->randomElement(['Laki-laki', 'Perempuan']),
        'email' => $faker->unique()->safeEmail,
        'telepon' => $faker->phoneNumber,
        'foto' => 'default.jpg',
        'kewarganegaraan' => 'Indonesia',
        'angkatan' => $faker->numberBetween(2000, 2022),
        'semester' => 1,
        'prodi_id' => 1,
        'status' => 'Aktif',
        'alamat' => $faker->address,
        'tgl_lahir' => $faker->date($format = 'Y-m-d', $max = '2000-12-31'),
        'nim' => $faker->unique()->numerify('##########'),
        'jenjang_id' => 1,
        'kelas_id' => 1,
    ]);
}
DB::table('data_matkul')->insert([
    [
        'kode' => 'MK001',
        'nama' => 'Matematika',
        'jumlah_sks' => 3,
        'semester_id' => 1,
        'dosen_id' => 2,
        'jenis_matkul' => 'Wajib',
    ],
    [
        'kode' => 'MK002',
        'nama' => 'Fisika',
        'jumlah_sks' => 2,
        'semester_id' => 1,
        'dosen_id' => 2,
        'jenis_matkul' => 'Wajib',
    ],
    [
        'kode' => 'MK003',
        'nama' => 'Kimia',
        'jumlah_sks' => 2,
        'semester_id' => 1,
        'dosen_id' => 2,
        'jenis_matkul' => 'Pilihan',
    ],
    [
        'kode' => 'MK004',
        'nama' => 'Biologi',
        'jumlah_sks' => 3,
        'semester_id' => 1,
        'dosen_id' => 2,
        'jenis_matkul' => 'Pilihan',
    ],
    [
        'kode' => 'MK005',
        'nama' => 'Bahasa Inggris',
        'jumlah_sks' => 2,
        'semester_id' => 1,
        'dosen_id' =>2,
        'jenis_matkul' => 'Wajib',
    ],
]);
    }
}