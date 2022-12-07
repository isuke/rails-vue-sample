<script setup lang="ts">
</script>

<template>
  <header class="the-global-header">
    <div class="logo">Rails Vue Sample</div>

    <nav class="nav">
      <ul class="list">
        <li class="item"><a href="/">Home</a></li>
        <li class="item"><a href="/user">User</a></li>
      </ul>
    </nav>
  </header>
</template>

<style lang="scss" scoped>
.the-global-header {
  display: inline-flex;
  width: 100%;
  height: 3rem;
  align-items: center;
  background-color: black;
  color: white;
  padding: 0 2rem;

  > .logo {
    flex: 1;
    font-size: 1.5rem;
    font-weight: bold;
  }

  > .nav {
    > .list {
      display: inline-flex;

      > .item {
        list-style-type: none;

        &:not(:first-child) { margin-left: 1rem; }
      }
    }
  }
}
</style>
