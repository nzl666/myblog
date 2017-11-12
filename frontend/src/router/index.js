import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/pages/index'
import App from '@/App'
import Head from '@/pages/head'
import Login from '@/pages/login'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: App,
      children: [
        {
          path: '/index',
          component: Index,
          name: 'index'
        },
        {
          path: '/head',
          component: Head,
          name: 'head'
        },
        {
          path: '/login',
          component: Login,
          name: 'login'
        }
      ]
    }
  ]
})
