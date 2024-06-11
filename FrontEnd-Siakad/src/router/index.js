import { createRouter, createWebHistory } from "vue-router";

import Login from "../views/Login.vue";
import Wrapper from "../views/Wrapper.vue";
import DataMahasiswa from "../views/mahasiswa/DataMahasiswa.vue";
import DataDosen from "../views/dosen/DataDosen.vue";
import CreatePageMahasiswa from "../views/mahasiswa/CreatePageMahasiswa.vue";
import CreatePageDosen from "../views/dosen/CreatePageDosen.vue";
import DataMataKuliah from "../views/matakuliah/DataMataKuliah.vue"
import CreatePageMataKuliah from "../views/matakuliah/CreatePageMataKuliah.vue";
import DetailPageDosen from "../views/dosen/DetailPageDosen.vue";
import DetailPageMahasiswa from "../views/mahasiswa/DetailPageMahasiswa.vue";
import EditPageDosen from "../views/dosen/EditPageDosen.vue";

const routes = [
  {
    name: "Login",
    path: "/",
    component: Login,
  },
  {
    name: "Dashboard",
    path: "/dashboard",
    component: Wrapper,
    children: [
      {
        name: "DataMahasiswa",
        path: "/data_mahasiswa",
        component: DataMahasiswa,
      },
      {
        name: "DataDosen",
        path: "/data_dosen",
        component: DataDosen,
      },
      {
        name: "DataMataKuliah",
        path: "/data_mata_kuliah",
        component: DataMataKuliah,
      },
      {
        name: "CreatePageMahasiswa",
        path: "/tambah_data_mahasiswa",
        component: CreatePageMahasiswa,
      },
      {
        name: "CreatePageDosen",
        path: "/tambah_data_dosen",
        component: CreatePageDosen,
      },
      {
        name: "CreatePageMataKuliah",
        path: "/tambah_data_mata_kuliah",
        component: CreatePageMataKuliah,
      },
      {
        name: "DetailPageDosen",
        path: "/detail_dosen/:id", // Menambahkan path dinamis untuk ID dosen
        component: DetailPageDosen,
        props: true, // atau props: { id: true } jika menggunakan props
      },
      {
        name: "DetailPageMahasiswa",
        path: "/detail_mahasiswa/:id", // Menambahkan path dinamis untuk ID mahasiswa
        component: DetailPageMahasiswa,
        props: true, // atau props: { id: true } jika menggunakan props
      },
      {
        name: "EditPageMataKuliah",
        path: "/edit_data_mata_kuliah",
        component: EditPageDosen,
      },
    ],
  },
];
const router = Router();
export default router;
function Router() {
  const router = new createRouter({
    history: createWebHistory(),
    routes,
  });
  return router;
}
