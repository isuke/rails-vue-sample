import 'vite/modulepreload-polyfill'

//
// Styles
//
import 'destyle.css'

//
// Scripts
//
import { createApp } from 'vue'

import App from './App.vue'

import axios from 'axios'
import VueAxios from 'vue-axios'

const csrfToken = document.querySelector('meta[name="csrf-token"]')?.getAttribute('content')
const $axios = axios.create({
  headers: {
    'X-CSRF-Token': csrfToken
  }
})

const app = createApp(App)
app.use(VueAxios, $axios)
app.provide('$axios', app.config.globalProperties.axios)
app.mount('#app')
