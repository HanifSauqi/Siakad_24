<template>
  <section class="bg-white dark:bg-gray-900">
    <div class="text-sm font-light">
      Admin > Data Informasi Dosen > {{ dosen.nama }}
    </div>
    <div class="flex items-center mt-10 mx-10">
      <img
        :src="'http://127.0.0.1:8000/storage/uploads/' + dosen.foto"
        alt="Foto Dosen"
        style="width: 125px; height: 125px"
        class="rounded-lg"
      />
      <h1 class="mx-16 text-4xl font-bold text-blue-950">
        {{ dosen.nama }}
      </h1>
    </div>
    <div class="overflow-x-auto m-10 text-blue-950 text-lg shadow-md p-5">
      <table
        class="table-fixed w-full h-auto text-left border-separate border-spacing-2 overflow-scroll"
      >
        <tr>
          <th>Nama</th>
          <td>{{ dosen.nama }}</td>
        </tr>
        <tr>
          <th>Foto</th>
          <td>{{ dosen.foto }}</td>
        </tr>
        <tr>
          <th>NIDN</th>
          <td>{{ dosen.NIDN }}</td>
        </tr>
        <tr>
          <th>NIP</th>
          <td>{{ dosen.nip }}</td>
        </tr>
        <tr>
          <th>Jenis Kelamin</th>
          <td>{{ dosen.jenis_kelamin }}</td>
        </tr>
        <tr>
          <th>Alamat</th>
          <td>{{ dosen.alamat }}</td>
        </tr>
        <tr>
          <th class="align-top">Jenjang Pendidikan</th>
          <td>
            <ul>
              <li v-for="jenjang in dosen.jenjang_pendidikan" :key="jenjang">
                {{ jenjang }}
              </li>
            </ul>
          </td>
        </tr>
      </table>
      <h2 class="font-bold text-blue-950 bg-slate-100 px-2">Jabatan</h2>
      <table
        class="table-fixed w-full text-left border-separate border-spacing-2 mx-5 text-base"
      >
        <tr>
          <th>Fungsional</th>
          <td>{{ dosen.fungsional }}</td>
        </tr>
        <tr>
          <th>Struktural</th>
          <td>{{ dosen.struktural }}</td>
        </tr>
      </table>
      <table
        class="table-fixed w-full text-left border-separate border-spacing-2"
      >
        <tr>
          <th>Status Pekerjaan</th>
          <td>{{ dosen.status_pekerjaan }}</td>
        </tr>
      </table>
    </div>
    <div class="flex gap-5 justify-center">
      <router-link
        :to="{ name: 'EditPageMataKuliah', params: { id: dosen.id } }"
      >
        <button
          class="bg-yellow-300 hover:bg-transparent border-2 hover:border-yellow-300 text-blue-950 font-bold py-1 px-10 rounded-lg shadow-lg"
        >
          Edit
        </button>
      </router-link>
      <button
        class="bg-transparent hover:bg-red-600 text-red-600 hover:text-white py-1 px-7 border-2 border-red-600 hover:border-transparent rounded-lg"
        @click="deleteDosen"
      >
        Hapus
      </button>
    </div>
  </section>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      dosen: null, // Store the specific dosen data
    };
  },
  methods: {
    async getDosenById(id) {
      const token = localStorage.getItem("token");
      const config = {
        headers: { Authorization: `Bearer ${token}` },
      };
      try {
        const response = await axios.get(
          `http://localhost:8000/api/data_dosen/${id}`,
          config
        );
        this.dosen = response.data.data;
      } catch (error) {
        console.error(error);
      }
    },
    async deleteDosen() {
      const token = localStorage.getItem("token");
      const config = {
        headers: { Authorization: `Bearer ${token}` },
      };
      try {
        await axios.delete(
          `http://localhost:8000/api/data_dosen/${this.dosen.id}`,
          config
        );
        // Navigate to another page after successful deletion
        this.$router.push({ name: "DataDosen" });
      } catch (error) {
        console.error(error);
      }
    },
  },
  async created() {
    const id = this.$route.params.id; // Get the ID from the route parameters
    this.getDosenById(id); // Fetch the dosen data
  },
};
</script>
