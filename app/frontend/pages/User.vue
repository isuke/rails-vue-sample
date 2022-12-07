<script setup lang="ts">
import { ref, inject } from 'vue'

type User = {
  firstName: string;
  familyName: string;
}

const $axios: any = inject('$axios')

const users = ref<User[]>([])

$axios.get('/api/users')
  .then((response: { data: User[] }) => {
    users.value = response.data
  })
</script>

<template>
  <div class="user">
    <h1 class="title">Users</h1>

    <ul class="list">
      <li class="item" v-for="user in users" :key="user.firstName">
        {{ user.firstName }} {{ user.familyName }}
      </li>
    </ul>
  </div>
</template>

<style lang="scss" scoped>
.user {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;

  width: 100%;
  height: calc(100vh - 3rem);

  background: #ffd0d0;

  > .title {
    font-size: 2rem;
    font-weight: bold;
  }

  > .list {
    margin-top: 1rem;
  }
}
</style>
