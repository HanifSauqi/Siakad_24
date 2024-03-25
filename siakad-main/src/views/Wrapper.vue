<script setup>
import SidebarComponent from "../components/SidebarComponent.vue";
</script>

<template>
  <div class="flex flex-wrap">
    <SidebarComponent />
    <div class="w-full bg-white shadow-md h-16"></div>
    <div class="w-full h-full ml-[390px] p-10 m-1 bg-white text-blue-950">
      <router-view></router-view>
    </div>
  </div>
</template>
