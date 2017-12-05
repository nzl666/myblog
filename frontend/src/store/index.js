import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)
export default new Vuex.Store({
  state: {
    index: '/index'
  },
  mutations: {
    changeHead: (state, payload) => {
      state.index = payload.index
    }
  },
  actions: {
    changeHead (context, payload) {
      context.commit('changeHead', { index: payload.index })
    }
  }
})
