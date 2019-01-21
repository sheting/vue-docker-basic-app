import Vue from 'vue'
import App from './App.vue'
import router from '@/permission'
import './plugins/vuetify'
import './icons'

Vue.config.productionTip = false

new Vue({
  el: '#app',
  router: router,
  render: h => h(App),
}).$mount('#app')
