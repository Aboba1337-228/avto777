import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/catalog',
    name: 'catalog',
    component: () => import('../views/CatalogView.vue')
  },
  {
    path: '/about',
    name: 'about',
    component: () => import('../views/AboutView.vue')
  },
  {
    path: '/conf',
    name: 'conf',
    component: () => import('../views/ConfView.vue')
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router
