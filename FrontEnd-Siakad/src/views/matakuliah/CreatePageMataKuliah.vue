<template>
  <main class="mx-auto flex flex-col overscroll-y-none">
    <div class="text-sm font-light">
      Admin > Data Mata Kuliah > Tambah Data Mata Kuliah
    </div>

    <header class="my-6">
      <h2 class="font-bold text-4xl text-blue-950">
        Tambah Data Informasi Mata Kuliah
      </h2>
    </header>
    <form
      @submit.prevent="submitForm"
      class="w-full grid gap-5 px-4 shadow-md p-5"
    >
      <div class="flex justify-between items-center">
        <label for="name" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Mata Kuliah</label
        >
        <div class="flex-1">
          <input
            v-model="formData.nama"
            required
            placeholder="Mata Kuliah"
            type="text"
            id="name"
            class="w-full rounded-md appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
          />
        </div>
      </div>

      <div class="flex justify-between items-center">
        <label for="kode" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Kode</label
        >
        <input
          v-model="formData.kode"
          placeholder="Kode"
          type="text"
          id="kode"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-between items-center">
        <label for="sks" class="w-32 text-right pr-4 font-bold text-gray-700"
          >SKS</label
        >
        <input
          v-model="formData.jumlah_sks"
          placeholder="SKS"
          type="text"
          id="sks"
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
          v-model="formData.semester_id"
          id="semester"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
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
          for="dosenPengampu"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Dosen Pengampu</label
        >
        <select
          v-model="formData.dosen_id"
          id="dosenPengampu"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        >
          <option v-for="dosen in dataDosen" :key="dosen.id" :value="dosen.id">
            {{ dosen.nama }}
          </option>
        </select>
      </div>
      <div class="flex justify-between items-center">
        <label
          for="jenisMatkul"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Jenis Matkul</label
        >
        <select
          v-model="formData.jenisMatkul"
          id="jenisMatkul"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        >
          <option value="Wajib">Wajib</option>
          <option value="Pilihan">Pilihan</option>
        </select>
      </div>

      <div class="flex justify-center">
        <router-link :to="{ name: 'DataMataKuliah' }">
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
      formData: {
        nama: "",
        kode: "",
        jumlah_sks: "",
        semester_id: "",
        dosen_id: "",
        jenisMatkul: "Wajib",
      },
      dataDosen: [],
      semesterList: [],
    };
  },
  async created() {
    const token = localStorage.getItem("token");
    const config = {
      headers: { Authorization: `Bearer ${token}` },
    };
    try {
      const responseDosen = await axios.get(
        "http://127.0.0.1:8000/api/data_dosen",
        config
      );
      this.dataDosen = responseDosen.data.data;

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
    async submitForm() {
      const token = localStorage.getItem("token");
      const config = {
        headers: { Authorization: `Bearer ${token}` },
      };
      try {
        const response = await axios.post(
          "http://127.0.0.1:8000/api/data_matkul",
          this.formData,
          config
        );
        console.log(response.data);
        // Handle successful response
        this.$router.push({ name: 'DataMataKuliah' });
      } catch (error) {
        console.error(error);
        // Handle error
      }
    },
  },
};
</script>
