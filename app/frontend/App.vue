<script lang="ts">
import { defineComponent } from 'vue'

import Home from './pages/Home.vue'
import User from './pages/User.vue'
import TheGlobalHeader from './components/TheGlobalHeader.vue'

export default defineComponent({
  components: {
    Home,
    User,
    TheGlobalHeader,
  },
  data() {
    return {
      componentName: document.getElementById('app')?.dataset?.name
    }
  },
})
</script>

<template>
  <TheGlobalHeader />
  <component :is="componentName" />
</template>

<style lang="scss" scoped>
</style>
