import DataMahasiswa from './DataMahasiswa.vue';
<template>
  <main class="mx-auto flex flex-col overscroll-y-none">
    <div class="text-sm font-light">
      Admin > Data Mahasiswa > Tambah Data Mahasiswa
    </div>

    <header class="my-6">
      <h2 class="font-bold text-4xl text-blue-950">
        Tambah Data Informasi Mahasiswa
      </h2>
    </header>
    <form class="w-full grid gap-5 px-4 shadow-md p-5" @submit.prevent="submit">
      <div class="flex justify-between items-center">
        <label for="name" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Nama</label
        >
        <div class="flex-1">
          <input
            v-model="mahasiswa.nama"
            required
            placeholder="Nama Mahasiswa"
            type="text"
            id="nama"
            class="w-full rounded-md appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
          />
        </div>
      </div>
      <div class="flex justify-start items-center">
        <label for="photo" class="w-32 text-right pr-4 font-bold">Foto</label>
        <input
          type="file"
          @change="handleFileUpload"
          class="text-sm text-gray-400 file:mr-2 file:py-1 file:px-1 file:rounded-md file:border-solid file:border file:border-gray-200 file:text-sm file:bg-white hover:file:bg-gray-100"
        />
      </div>
      <div class="flex justify-between items-center">
        <label for="ttl" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Tempat, Tanggal Lahir</label
        >
        <input
          v-model="mahasiswa.tgl_lahir"
          placeholder="Tempat, Tanggal Lahir"
          type="date"
          id="ttl"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>

      <div class="flex justify-between items-center">
        <label
          for="jenis-kelamin"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Jenis Kelamin</label
        >
        <select
          id="jenis-kelamin"
          v-model="mahasiswa.jenis_kelamin"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        >
          <option value="laki-laki">Laki-laki</option>
          <option value="perempuan">Perempuan</option>
        </select>
      </div>
      <div class="flex justify-between items-center">
        <label for="alamat" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Alamat</label
        >
        <input
          v-model="mahasiswa.alamat"
          placeholder="Alamat"
          type="text"
          id="alamat"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-between items-center">
        <label for="nim" class="w-32 text-right pr-4 font-bold text-gray-700"
          >NIM</label
        >
        <input
          v-model="mahasiswa.nim"
          placeholder="NIM"
          type="text"
          id="nim"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-between items-center">
        <label
          for="angkatan"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Angkatan</label
        >
        <input
          v-model="mahasiswa.angkatan"
          placeholder="Angkatan"
          type="text"
          id="angkatan"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-between items-center">
        <label
          for="semester"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Semester</label
        >
        <select
          id="semester"
          v-model="mahasiswa.semester"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        >
          <option
            v-for="semester in semesterList"
            :key="semester.id"
            :value="semester.id"
          >
            {{ semester.semester }}
          </option>
        </select>
      </div>
      <div class="flex justify-between items-center">
        <label
          for="fakultas"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Fakultas</label
        >
        <select
          v-model="fakultas"
          id="fakultas"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        >
          <option
            v-for="fakultas in fakultasList"
            :key="fakultas.id"
            :value="fakultas.id"
          >
            {{ fakultas.nama }}
          </option>
        </select>
      </div>
      <div class="flex justify-between items-center">
        <label for="prodi" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Program Studi</label
        >
        <select
          id="prodi"
          v-model="mahasiswa.prodi_id"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        >
          <option v-for="prodi in prodiList" :key="prodi.id" :value="prodi.id">
            {{ prodi.nama_jurusan }}
          </option>
        </select>
      </div>
      <div class="flex justify-between items-center">
        <label for="sks" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Jumlah SKS</label
        >
        <input
          v-model="mahasiswa.sks"
          placeholder="Jumlah SKS"
          type="number"
          id="sks"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>

      <div class="flex justify-between items-center">
        <label for="status" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Status</label
        >
        <select
          v-model="mahasiswa.status"
          id="status"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        >
          <option value="aktif">Aktif</option>
          <option value="tidak aktif">Tidak Aktif</option>
        </select>
      </div>

      <div class="flex justify-center">
        <router-link :to="{ name: 'DataMahasiswa' }">
          <button
            type="button"
            class="bg-white py-2 px-2 border border-red-700 rounded-md shadow-sm font-bold text-red-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-sky-600"
          >
            Batal
          </button>
        </router-link>
        <button
          type="submit"
          class="ml-3 inline-flex justify-center py-2 px-2 border border-transparent shadow-sm font-bold rounded-md text-white bg-blue-950 hover:bg-blue-900 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-sky-600"
        >
          Simpan
        </button>
      </div>
    </form>
  </main>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      mahasiswa: {
        nama: "",
        tgl_lahir: "", // Added tgl_lahir field
        alamat: "",
        nim: "",
        angkatan: "",
        sks: "",
        status: "",
        jenisKelamin: "",
        semester: "", // Added semester field
        prodi_id: "", // Added prodi_id field
      },
      fakultas: "",
      fakultasList: [],
      prodiList: [],
      semesterList: [],
    };
  },
  watch: {
    async fakultas(newFakultas) {
      const token = localStorage.getItem("token");
      const config = {
        headers: { Authorization: `Bearer ${token}` },
      };
      try {
        const responseProdi = await axios.get(
          `http://127.0.0.1:8000/api/prodi/fakultas/${newFakultas}`,
          config
        );
        this.prodiList = responseProdi.data;
      } catch (error) {
        console.error(error);
      }
    },
  },
  async created() {
    const token = localStorage.getItem("token");
    const config = {
      headers: { Authorization: `Bearer ${token}` },
    };
    try {
      const responseFakultas = await axios.get(
        "http://127.0.0.1:8000/api/fakultas",
        config
      );
      this.fakultasList = responseFakultas.data;

      const responseSemester = await axios.get(
        "http://127.0.0.1:8000/api/semester",
        config
      );
      this.semesterList = responseSemester.data;
    } catch (error) {
      console.error(error);
    }
  },
  methods: {
    handleFileUpload(event) {
      this.mahasiswa.foto = event.target.files[0];
    },
    async submit() {
      if (!this.mahasiswa.tgl_lahir) {
        alert('Tanggal lahir harus diisi');
        return;
      }

      console.log(this.mahasiswa);

      const token = localStorage.getItem("token");
      const userId = localStorage.getItem("userId"); // get user id from local storage
      this.mahasiswa.user_id = userId; // add user id to mahasiswa object

      const config = {
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "multipart/form-data",
        },
      };

      let formData = new FormData();
      for (let key in this.mahasiswa) {
        formData.append(key, this.mahasiswa[key]);
      }

      try {
        await axios.post(
          "http://127.0.0.1:8000/api/mahasiswa",
          formData,
          config
        );
        this.$router.push({ name: "DataMahasiswa" });
        // Redirect to the DataMahasiswa page or show a success message here
      } catch (error) {
        console.error(error);
        // Show an error message here
      }
    },
  },
};
</script>
