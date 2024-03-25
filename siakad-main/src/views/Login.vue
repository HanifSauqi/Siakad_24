<template>
  <div class="flex h-screen">
    <!-- Bagian kiri dengan gambar dan logo -->
    <div class="container flex bg-blue-950 w-2/3">
      <div class="absolute flex bottom-10 bg-blue-950 w-2/3 p-5">
        <img src="../assets/Logo.svg" class="w-42 mx-5" alt="Logo" />
        <div class="mt-7">
          <p class="text-5xl my-2 text-white font-bold">
            UNIVERSITAS WIDYA DHARMA
          </p>
          <p class="text-4xl text-yellow-400 font-bold">
            TUMBUH BERSAMA MERAIH SUKSES
          </p>
        </div>
      </div>
      <img src="../assets/Snapinsta 1.png" class="h-full w-auto" alt="Pict" />
    </div>

    <!-- Bagian kanan dengan form login -->
    <div class="p-10 my-auto w-1/3 text-center items-center justify-center">
      <div>
        <h2 class="text-4xl font-bold text-blue-950">Login</h2>
        <form @submit.prevent="login" class="">
          <div class="my-5">
            <input
              type="email"
              v-model="email"
              class="form-input p-2 bg-white shadow-md rounded w-full"
              placeholder="Email"
              id="email"
              required
            />
          </div>
          <div class="my-5">
            <input
              type="password"
              v-model="password"
              class="form-input p-2 bg-white shadow-md rounded w-full"
              placeholder="Password"
              id="password"
              required
            />
          </div>
            <button
              type="submit"
              class="bg-blue-950 hover:bg-blue-900 text-white font-bold py-2 px-4 rounded"
            >
              Login
            </button>
        </form>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from "vue";
import axios from "axios";
import { useRouter } from "vue-router";

let email = ref("");
let password = ref("");
const router = useRouter();

onMounted(() => {
  const token = localStorage.getItem("token");
  const role = localStorage.getItem("role");

  if (token && role === "admin") {
    router.push({ name: "Dashboard" }); // replace 'Dashboard' with the name of your dashboard route
  }
});

const login = async () => {
  try {
    const response = await axios.post("http://127.0.0.1:8000/api/login", {
      email: email.value,
      password: password.value,
    });

    console.log("Login response:", response.data); // tambahkan baris ini

    if (response.data.success) {
      localStorage.setItem("token", response.data.token);
      localStorage.setItem("role", response.data.role);

      console.log("Login successful. Token saved to local storage.");

      // Check user role and redirect to the appropriate page
      if (response.data.role === "admin") {
        router.push({ name: "Dashboard" }); // replace 'Dashboard' with the name of your dashboard route
      } else {
        // redirect to a different page if the user is not an admin
      }
    } else {
      // Handle login failure
    }
  } catch (error) {
    // Handle error
  }
};
</script>
