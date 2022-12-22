<script setup lang="ts">
import { ref, inject } from 'vue'

type User = {
  firstName: string;
  familyName: string;
}

const $axios: any = inject('$axios')

const users = ref<User[]>([])
const newFirstName = ref<string>('')
const newFamilyName = ref<string>('')

const postUser = async (): Promise<void> => {
  await $axios.post('/api/users', {
    firstName: newFirstName.value,
    familyName: newFamilyName.value
  })
}

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

    <form class="form">
      <label class="label">First Name<input type="text" class="input" v-model="newFirstName"/></label>
      <label class="label">Family Name<input type="text" class="input" v-model="newFamilyName"/></label>
      <input type="submit" value="Submit" class="submit" @click.prevent="postUser"/>
    </form>

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

  >.list {
    margin-top: 1rem;
  }

  > .form {
    margin-top: 1rem;

    > .label {
      &:not(:first-child) { margin-left: 1rem; }

      > .input {
        background-color: white;
        border-radius: 0.5rem;
        margin-left: 0.5rem;
        padding: 0.25rem 0.5rem;
      }
    }

    > .submit {
      background-color: #fc8585;
      border-radius: 0.5rem;
      margin-left: 0.5rem;
      padding: 0.25rem 0.5rem;
    }
  }
}
</style>
