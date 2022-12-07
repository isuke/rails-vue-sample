<script setup lang="ts">
const msg = "Hello Home"
</script>

<template>
  <div class="home">
    <h1 class="title">{{ msg }}</h1>
  </div>
</template>

<style lang="scss" scoped>
.home {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: calc(100vh - 3rem);

  background: #c1c1ff;

  > .title {
    font-size: 2rem;
    font-weight: bold;
  }
}
</style>
