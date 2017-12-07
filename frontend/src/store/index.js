import Vue from 'vue'
import Vuex from 'vuex'
import request from '@/components/request.js'

Vue.use(Vuex)
export default new Vuex.Store({
  state: {
    index: '/index',
    islogin: false
  },
  mutations: {
    changeHead: (state, payload) => {
      state.index = payload.index
    },
    login: (state, payload) => {
      state.islogin = payload.istrue
    }
  },
  actions: {
    changeHead (context, payload) {
      context.commit('changeHead', { index: payload.index })
    },
    login (context, user) {
      console.log(user)
      return request.post('login/index', user).then((res) => {
        if (res.data.code === 20) {
          context.commit('login', { istrue: true })
          this.$router.push('/index')
        }
      })
    }
  }
})
