import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import Login from '@/components/Login'
import Polls from '@/components/Polls'
import Form from '@/components/Form'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Polls',
      component: Polls
    },
    {
      path: '/form',
      name: 'Form',
      component: Form
    }
  ]
})
