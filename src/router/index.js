import { createRouter, createWebHistory } from 'vue-router'
import Index from '../views/IndexView.vue'
const routes = [
  {
    path: '/',
    name: 'home',
    component: Index
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
