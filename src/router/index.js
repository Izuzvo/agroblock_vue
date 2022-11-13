import { createRouter, createWebHistory } from 'vue-router'
import Index from '../views/IndexView.vue'
import User from '../views/UserView.vue'
import Tiempo from '../components/forms/TiemporComponent.vue'
import Login from '../views/LoginView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: Index
  },
  {
    path: '/login',
    name: 'login',
    component: Login
  },
  {
    path: '/user',
    name: 'user',
    component: User
  },
  {
    path: '/user/tiempo',
    name: 'tiempo',
    component: Tiempo
  },
]


const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
