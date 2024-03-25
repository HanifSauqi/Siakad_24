<template>
  <aside
    id="default-sidebar"
    class="fixed left-0 w-auto h-screen"
    aria-label="Sidenav"
  >
    <a href="" class="flex p-5 bg-blue-950 items-center">
      <img src="../assets/Logo.svg" class="mr-3 h-16" alt="Flowbite Logo" />
      <div class="bg-blue-950">
        <p class="self-center text-xl sm:text-lg font-bold text-white">
          UNIVERSITAS WIDYA DHARMA
        </p>
        <p class="self-center text-md font-semibold text-yellow-300">
          TUMBUH BERSAMA MERAIH SUKSES
        </p>
      </div>
    </a>
    <div
      class="overflow-y-auto py-5 px-3 h-full bg-blue-950 dark:bg-gray-800 dark:border-gray-700"
    >
      <ul class="space-y-7">
        <li>
          <router-link :to="{ name: 'DataDosen' }">
            <a
              href="#"
              class="flex items-center justify-between p-2 text-base font-normal text-white rounded-lg dark:text-white hover:bg-blue-900 dark:hover:bg-gray-700 group"
            >
              <div class="flex items-center">
                <img src="../assets/Lecturer.svg" class="mr-3 h-8" alt="" />
                <span class="mx-3 text-lg font-semibold"
                  >Data Informasi Dosen</span
                >
              </div>
              <svg
                class="w-6 h-6 text-gray-800 dark:text-white"
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
                  stroke-width="2"
                  d="m9 5 7 7-7 7"
                />
              </svg>
            </a>
          </router-link>
        </li>
        <li>
          <router-link :to="{ name: 'DataMahasiswa' }">
            <a
              href="#"
              class="flex items-center justify-between p-2 text-base font-normal text-white rounded-lg dark:text-white hover:bg-blue-900 dark:hover:bg-gray-700 group"
            >
              <div class="flex items-center">
                <img
                  src="../assets/Graduation Cap.svg"
                  class="mr-3 h-8"
                  alt=""
                />
                <span class="mx-3 text-lg font-semibold"
                  >Data Informasi Mahasiswa</span
                >
              </div>
              <svg
                class="w-6 h-6 text-gray-800 dark:text-white"
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
                  stroke-width="2"
                  d="m9 5 7 7-7 7"
                />
              </svg>
            </a>
          </router-link>
        </li>
        <li>
          <router-link
            :to="{ name: '' }"
            class="flex items-center justify-between p-2 text-base font-normal text-white rounded-lg dark:text-white hover:bg-blue-900 dark:hover:bg-gray-700 group"
          >
            <div class="flex items-center">
              <img src="../assets/Book.svg" class="mr-3 h-8" alt="" />
              <span class="mx-3 text-lg font-semibold"
                >Data Informasi Mata Kuliah</span
              >
            </div>
            <svg
              class="w-6 h-6 text-gray-800 dark:text-white"
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
                stroke-width="2"
                d="m9 5 7 7-7 7"
              />
            </svg>
          </router-link>
        </li>

        <li>
    <a
      href="#"
      class="flex items-center justify-between p-2 text-base font-normal text-white rounded-lg dark:text-white hover:bg-blue-900 dark:hover:bg-gray-700 group"
      @click="logout"
    >
      <div class="flex items-center">
        <img src="../assets/Logout.svg" class="mr-3 h-8" alt="" />
        <span class="mx-3 text-lg font-semibold">Logout</span>
      </div>
    </a>
  </li>
      </ul>
    </div>
  </aside>
</template>

<script setup>
import { useRouter } from 'vue-router';
import axios from 'axios';

const router = useRouter();

const logout = async () => {
  const token = localStorage.getItem('token');
  if (!token) {
    console.error('No token found in local storage.');
    return;
  }

  try {
    // Call the logout API
    await axios.get('http://127.0.0.1:8000/api/logout', {
      headers: {
        'Authorization': `Bearer ${token}`
      }
    });

    // Remove the token from local storage
    localStorage.removeItem('token');
    localStorage.removeItem('role');

    // Redirect to login page
    router.push({ name: 'Login' });
  } catch (error) {
    // Print error details to console
    console.error('Error during logout:', error.response);
  }
};
</script>