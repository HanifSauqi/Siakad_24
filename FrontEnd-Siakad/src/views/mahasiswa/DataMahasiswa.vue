<template>
  <section class="bg-white dark:bg-gray-900">
    <div class="text-sm font-light">Admin > Data Mahasiswa</div>
    <div class="flex justify-between items-center my-5">
      <h1 class="mb-5 text-4xl font-bold">Data Mahasiswa</h1>
      <router-link :to="{ name: 'CreatePageMahasiswa' }">
        <button
          type="button"
          class="flex items-center justify-center text-white bg-primary-950 hover:bg-primary-800 focus:ring-4 focus:ring-primary-300 font-semibold rounded-lg text-base px-7 py-3"
        >
          Tambah
          <svg
            class="w-5 h-5 ml-2"
            aria-hidden="true"
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            fill="none"
            viewBox="0 0 24 24"
          >
            <path
              stroke="#ffffff"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="3"
              d="M5 12h14m-7 7V5"
            />
          </svg>
        </button>
      </router-link>
    </div>
    <div class="mx-auto max-w-screen-xl px-4 lg:px-12">
      <!-- Start coding here -->
      <div
        class="bg-white dark:bg-blue-950 relative shadow-md sm:rounded-lg overflow-hidden"
      >
        <div
          class="flex flex-col md:flex-row items-center justify-between space-y-3 md:space-y-0 md:space-x-4 p-4"
        >
          <div class="w-full md:w-1/2">
            <form class="flex items-center">
              <label for="simple-search" class="sr-only">Search</label>
              <div class="relative w-full">
                <div
                  class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none"
                >
                  <svg
                    aria-hidden="true"
                    class="w-5 h-5 text-gray-500 dark:text-gray-400"
                    fill="currentColor"
                    viewbox="0 0 20 20"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                      clip-rule="evenodd"
                    />
                  </svg>
                </div>
                <input
                  v-model="searchQuery"
                  type="text"
                  id="simple-search"
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                  placeholder="Search"
                />
              </div>
            </form>
          </div>
          <div
            class="w-full md:w-auto flex flex-col md:flex-row space-y-2 md:space-y-0 items-stretch md:items-center justify-end md:space-x-3 flex-shrink-0"
          >
            <div class="flex items-center space-x-3 w-full md:w-auto">
              <button
                id="dropdownDefaultButton"
                data-dropdown-toggle="dropdown"
                class="text-white bg-blue-950 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                type="button"
              >
                Filter
                <svg
                  class="w-2.5 h-2.5 ms-3"
                  aria-hidden="true"
                  xmlns="http://www.w3.org/2000/svg"
                  fill="none"
                  viewBox="0 0 10 6"
                >
                  <path
                    stroke="currentColor"
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="m1 1 4 4 4-4"
                  />
                </svg>
              </button>

              <!-- Dropdown menu -->
              <div
                id="dropdown"
                class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-44 dark:bg-gray-700"
              >
                <ul
                  class="py-2 text-sm text-gray-700 dark:text-gray-200"
                  aria-labelledby="dropdownDefaultButton"
                >
                  <li>
                    <a
                      href="#"
                      class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                      >Semester</a
                    >
                  </li>
                  <li>
                    <a
                      href="#"
                      class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                      >Program Studi</a
                    >
                  </li>
                  <li>
                    <a
                      href="#"
                      class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white"
                      >Fakultas</a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="overflow-x-auto">
          <table
            class="w-full text-sm text-left text-gray-500 dark:text-gray-400"
          >
            <thead
              class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400"
            >
              <tr>
                <th scope="col" class="px-4 py-3">No</th>
                <th scope="col" class="px-4 py-3">Foto</th>
                <th scope="col" class="px-4 py-3">Nama</th>
                <th scope="col" class="px-4 py-3">Nim</th>
                <th scope="col" class="px-4 py-3">Semester</th>
                <th scope="col" class="px-4 py-3">SKS</th>
                <th scope="col" class="px-4 py-3">Angkatan</th>
                <th scope="col" class="px-4 py-3">Fakultas</th>
                <th scope="col" class="px-4 py-3">Program Studi</th>
                <th scope="col" class="px-4 py-3">Status</th>
              </tr>
            </thead>
            <tbody>
              <tr
                class="border-b dark:border-gray-700"
                v-for="(mahasiswa, index) in filteredDataMahasiswa"
                :key="mahasiswa.id"
              >
                <!-- Ubah dataMahasiswa menjadi filteredDataMahasiswa -->
                <th
                  scope="row"
                  class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  {{ index + 1 }}.
                </th>
                <td class="px-4 py-3">
                  <img
                    :src="
                      'http://127.0.0.1:8000/storage/uploads/' + mahasiswa.foto
                    "
                    alt="Foto Mahasiswa"
                    style="width: 50px; height: 50px"
                  />
                </td>
                <td class="px-4 py-3">{{ mahasiswa.nama }}</td>
                <td class="px-4 py-3">{{ mahasiswa.nim }}</td>
                <td class="px-4 py-3">{{ mahasiswa.semester }}</td>
                <td class="px-4 py-3">{{ mahasiswa.sks }}</td>
                <td class="px-4 py-3">{{ mahasiswa.angkatan }}</td>
                <td class="px-4 py-3">{{ mahasiswa.prodi.fakultas.nama }}</td>
                <!-- Mengakses nama fakultas -->
                <td class="px-4 py-3">{{ mahasiswa.prodi.nama_jurusan }}</td>
                <!-- Mengakses nama prodi -->
                <td class="px-4 py-3">{{ mahasiswa.status }}</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      dataMahasiswa: [],
      filteredDataMahasiswa: [], // Tambahkan variabel untuk menyimpan data yang sudah difilter
      searchQuery: "", // Tambahkan state untuk input pencarian
    };
  },
  async created() {
    const token = localStorage.getItem("token"); // Mengambil token dari localStorage
    const config = {
      headers: { Authorization: `Bearer ${token}` },
    };
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/mahasiswa",
        config
      ); // Menggunakan URL API yang diberikan
      this.dataMahasiswa = response.data.data; // Mengakses array 'data' dalam respons
      // Ketika komponen pertama kali dimuat, inisialisasikan filteredDataMahasiswa dengan semua data mahasiswa
      this.filteredDataMahasiswa = this.dataMahasiswa;
    } catch (error) {
      console.error(error);
    }
  },
  methods: {
    // Buat metode untuk melakukan pencarian
    searchMahasiswa() {
      // Gunakan metode filter untuk mencocokkan data dengan nilai pencarian
      this.filteredDataMahasiswa = this.dataMahasiswa.filter((mahasiswa) => {
        // Ubah semua properti yang ingin Anda periksa dalam pencarian
        // Di sini, saya asumsikan Anda ingin mencocokkan nama mahasiswa
        return mahasiswa.nama
          .toLowerCase()
          .includes(this.searchQuery.toLowerCase());
      });
    },
  },
  watch: {
    // Tambahkan watcher untuk memanggil metode pencarian ketika nilai input berubah
    searchQuery(newValue) {
      this.searchMahasiswa();
    },
  },
};
</script>
