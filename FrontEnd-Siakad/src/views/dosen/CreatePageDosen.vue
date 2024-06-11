<template>
  <main class="mx-auto flex flex-col overscroll-y-none">
    <div class="text-sm font-light">Admin > Data Dosen > Tambah Data Dosen</div>

    <header class="my-6">
      <h2 class="font-bold text-4xl text-blue-950">
        Tambah Data Informasi Dosen
      </h2>
    </header>
    <form @submit.prevent="submit" class="w-full grid gap-5 px-4 shadow-md p-5">
      <div class="flex justify-between items-center">
        <label for="name" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Nama</label
        >
        <div class="flex-1">
          <input
            required
            placeholder="Nama Dosen"
            type="text"
            v-model="dosen.nama"
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
        <label for="nidn" class="w-32 text-right pr-4 font-bold text-gray-700"
          >NIDN</label
        >
        <input
          placeholder="NIDN"
          type="text"
          v-model="dosen.NIDN"
          id="nidn"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-between items-center">
        <label for="nip" class="w-32 text-right pr-4 font-bold text-gray-700"
          >NIP</label
        >
        <input
          placeholder="NIP"
          type="text"
          v-model="dosen.nip"
          id="nip"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-between items-center">
        <label
          for="jenis_kelamin"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Jenis Kelamin</label
        >
        <select
          id="jenis_kelamin"
          v-model="dosen.jenis_kelamin"
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
          placeholder="Alamat"
          type="text"
          v-model="dosen.alamat"
          id="alamat"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-between items-center">
        <label for="status" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Status</label
        >
        <input
          placeholder="Status"
          type="text"
          v-model="dosen.status"
          id="status"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-center">
        <router-link :to="{ name: 'DataDosen' }">
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
      dosen: {
        nama: "",
        NIDN: "",
        nip: "",
        jenis_kelamin: "",
        alamat: "",
        status: "",
      },
      foto: null,
    };
  },
  methods: {
    handleFileUpload(event) {
      this.foto = event.target.files[0];
    },
    async submit() {
      console.log(this.dosen); // Add this line

      if (
        !this.dosen.nama ||
        !this.dosen.NIDN ||
        !this.dosen.nip ||
        !this.dosen.jenis_kelamin||
        !this.dosen.alamat ||
        !this.dosen.status
      ) {
        alert("Semua field harus diisi");
        return;
      }

      const token = localStorage.getItem("token");
      const userId = localStorage.getItem("userId"); // get user id from local storage
      this.dosen.user_id = userId; // add user id to dosen object
      const config = {
        headers: {
          Authorization: `Bearer ${token}`,
          "Content-Type": "multipart/form-data",
        },
      };

      let formData = new FormData();
      for (let key in this.dosen) {
        formData.append(key, this.dosen[key]);
      }
      if (this.foto) {
        formData.append("foto", this.foto);
      }
      console.log("Data to be sent:", formData);

      try {
        await axios.post(
          "http://127.0.0.1:8000/api/data_dosen",
          formData,
          config
        );
        this.$router.push({ name: "DataDosen" });
      } catch (error) {
        console.error(error);
        alert("Gagal menyimpan data");
      }
    },
  },
};
</script>
