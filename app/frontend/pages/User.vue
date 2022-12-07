<script setup lang="ts">
const msg = "User"
</script>

<template>
  <div class="user">
    <h1 class="title">{{ msg }}</h1>
  </div>
</template>

<style lang="scss" scoped>
.user {
  display: flex;
  align-items: center;
  justify-content: center;

  width: 100%;
  height: calc(100vh - 3rem);

  background: #ffd0d0;

  > .title {
    font-size: 2rem;
    font-weight: bold;
  }
}
</style>
