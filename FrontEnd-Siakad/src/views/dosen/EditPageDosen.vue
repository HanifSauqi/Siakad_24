import DataMahasiswa from './DataMahasiswa.vue';
<template>
  <main class="mx-auto flex flex-col overscroll-y-none">
    <div class="text-sm font-light">Admin > Data Dosen > Edit Data Dosen</div>

    <header class="my-6">
      <h2 class="font-bold text-4xl text-blue-950">
        Edit Data Informasi Dosen
      </h2>
    </header>
    <form class="w-full grid gap-5 px-4 shadow-md p-5">
      <div class="flex justify-between items-center">
        <label for="name" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Nama</label
        >
        <div class="flex-1">
          <input
            required
            placeholder="Nama Dosen"
            type="text"
            id="name"
            class="w-full rounded-md appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
          />
        </div>
      </div>
      <div class="flex justify-start items-center">
        <label for="photo" class="w-32 text-right pr-4 font-bold">Foto</label>
        <input
          type="file"
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
          id="nip"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-between items-center">
        <label for="nip" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Email</label
        >
        <input
          placeholder="Email"
          type="text"
          id="nip"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>
      <div class="flex justify-between items-center">
        <label for="nip" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Telepon</label
        >
        <input
          placeholder="Telepon"
          type="text"
          id="nip"
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
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        >
          <option selected></option>
          <option value="Laki">Laki-laki</option>
          <option value="Perempuan">Perempuan</option>
        </select>
      </div>
      <div class="flex justify-between items-center">
        <label for="alamat" class="w-32 text-right pr-4 font-bold text-gray-700"
          >Alamat</label
        >
        <input
          placeholder="Alamat"
          type="text"
          id="alamat"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>

      <div class="flex justify-between items-center">
        <label
          for="jenjang"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Jenjang Pendidikan</label
        >
        <input
          placeholder="Jenjang Pendidikan"
          type="text"
          id="jenjang"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>

      <div class="mt-10 text-xl font-bold text-blue-950">Jabatan</div>
      <div class="w-full grid gap-5 px-4 pr-0 p-5">
        <div class="flex justify-between items-center">
          <label
            for="fungsional"
            class="w-32 text-right pr-4 font-bold text-gray-700"
            >Fungsional</label
          >
          <input
            placeholder="Jabatan Fungsional"
            type="text"
            id="fungsional"
            class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
          />
        </div>
        <div class="flex justify-between items-center">
          <label
            for="struktural"
            class="w-32 text-right pr-4 font-bold text-gray-700"
            >Struktural</label
          >
          <input
            placeholder="Jabatan Struktural"
            type="text"
            id="struktural"
            class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
          />
        </div>
      </div>

      <div class="flex justify-between items-center">
        <label
          for="status-pekerjaan"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Status Pekerjaan</label
        >
        <input
          placeholder="Status Pekerjaan"
          type="text"
          id="ststus-pekerjaan"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
      </div>

      <div class="flex justify-between items-center">
        <label
          for="status-keaktifan"
          class="w-32 text-right pr-4 font-bold text-gray-700"
          >Status Keaktifan</label
        >
        <input
          placeholder="Status Keaktifan"
          type="text"
          id="status-keaktifan"
          class="w-52 rounded-md flex-1 appearance-none border border-gray-300 py-2 px-2 bg-white text-gray-700 placeholder-gray-400 shadow-sm focus:outline-none focus:ring-2 focus:ring-sky-600 focus:border-transparent"
        />
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
