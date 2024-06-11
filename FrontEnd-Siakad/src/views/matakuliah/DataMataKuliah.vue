<template>
  <section class="bg-white dark:bg-gray-900">
    <div class="text-sm font-light">Admin > Data Mata Kuliah</div>
    <div class="flex justify-between items-center my-5">
      <h1 class="mb-5 text-4xl font-bold">Data Mata Kuliah</h1>
      <router-link :to="{ name: 'CreatePageMataKuliah' }">
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
                    viewBox="0 0 20 20"
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
                  type="text"
                  id="simple-search"
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-primary-500 focus:border-primary-500 block w-full pl-10 p-2 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                  placeholder="Search"
                  v-model="searchTerm"
                />
              </div>
            </form>
          </div>
          <div class="w-full md:w-auto flex items-center space-x-3">
            <div class="relative">
              <button
                @click="dropdownOpen = !dropdownOpen"
                class="text-white bg-blue-950 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                type="button"
                id="options-menu"
                aria-haspopup="true"
                aria-expanded="true"
              >
                Filter
                <svg
                  class="w-2.5 h-2.5 ml-2"
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

              <div
                v-if="dropdownOpen"
                class="origin-top-right absolute right-0 mt-2 w-44 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 focus:outline-none"
                role="menu"
                aria-orientation="vertical"
                aria-labelledby="options-menu"
              >
                <div class="py-1" role="none">
                  <a
                    @click.prevent="setFilterBy('semester_id')"
                    href="#"
                    class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 hover:text-gray-900"
                    role="menuitem"
                  >
                    Filter by Semester
                  </a>
                  <a
                    @click.prevent="setFilterBy('semester_id', '1')"
                    href="#"
                    class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 hover:text-gray-900"
                    role="menuitem"
                  >
                    Filter by Semester 1
                  </a>
                  <a
                    @click.prevent="setFilterBy('program_studi')"
                    href="#"
                    class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 hover:text-gray-900"
                    role="menuitem"
                  >
                    Filter by Program Studi
                  </a>
                  <a
                    @click.prevent="setFilterBy('fakultas')"
                    href="#"
                    class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 hover:text-gray-900"
                    role="menuitem"
                  >
                    Filter by Fakultas
                  </a>
                </div>
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
                <th scope="col" class="px-4 py-3">Kode</th>
                <th scope="col" class="px-4 py-3">Mata Kuliah</th>
                <th scope="col" class="px-4 py-3">SKS</th>
                <th scope="col" class="px-4 py-3">Semester</th>
                <th scope="col" class="px-4 py-3">Dosen</th>
                <th scope="col" class="px-4 py-3">Jadwal</th>
                <th scope="col" class="px-4 py-3">Jenis</th>
              </tr>
            </thead>
            <tbody>
              <tr
                class="border-b dark:border-gray-700"
                v-for="(matkul, index) in filteredMatkul"
                :key="matkul.id"
              >
                <th
                  scope="row"
                  class="px-4 py-3 font-medium text-gray-900 whitespace-nowrap dark:text-white"
                >
                  {{ index + 1 }}.
                </th>
                <td class="px-4 py-3">{{ matkul.kode }}</td>
                <td class="px-4 py-3">{{ matkul.nama }}</td>
                <td class="px-4 py-3">{{ matkul.jumlah_sks }}</td>
                <td class="px-4 py-3">{{ matkul.semester_id }}</td>
                <td class="px-4 py-3">{{ matkul.nama_dosen }}</td>
                <td class="px-4 py-3">{{}}</td>
                <!-- Tambahkan sesuai dengan properti jadwal -->
                <td class="px-4 py-3">{{ matkul.jenis_matkul }}</td>
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
      dataMatkul: [],
      searchTerm: "",
      filterType: "", // Variabel untuk menyimpan jenis filter
      filterValue: "", // Variabel untuk menyimpan nilai filter
      dropdownOpen: false,
    };
  },
  computed: {
    filteredMatkul() {
      return this.dataMatkul.filter(
        (matkul) =>
          matkul.nama.toLowerCase().includes(this.searchTerm.toLowerCase()) &&
          (this.filterType === "" ||
            matkul[this.filterType] === this.filterValue)
      );
    },
  },
  methods: {
    setFilterBy(filterType, filterValue) {
      this.filterType = filterType;
      this.filterValue = filterValue;
      this.dropdownOpen = false;
    },
  },
  async created() {
    const token = localStorage.getItem("token");
    const config = {
      headers: { Authorization: `Bearer ${token}` },
    };
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/data_matkul",
        config
      );
      this.dataMatkul = response.data.data;
    } catch (error) {
      console.error(error);
    }
  },
};
</script>
