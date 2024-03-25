import { createRouter, createWebHistory } from "vue-router";

import Login from "../views/Login.vue";
import Wrapper from "../views/Wrapper.vue";
import DataMahasiswa from "../views/mahasiswa/DataMahasiswa.vue";
import DataDosen from "../views/dosen/DataDosen.vue";

const routes = [
  {
    path: '/',
    redirect: '/login'
  },
  {
    name: "Login",
    path: "/login",
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
    ],
  },
];

function Router() {
  const router = createRouter({
    history: createWebHistory(),
    routes,
  });

  router.beforeEach((to, from, next) => {
    const publicPages = ['/login'];
    const authRequired = !publicPages.includes(to.path);
    const loggedIn = localStorage.getItem('token');

    if (authRequired && !loggedIn) {
      return next('/login');
    }

    next();
  });

  return router;
}

const router = Router();
export default router;
