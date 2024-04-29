<template>
  <client-only>
  <div class="flex h-screen w-full justify-center items-center relative">
    <UToggle
      :model-value="themeToggleState"
      color="blue"
      on-icon="i-heroicons-moon-20-solid"
      off-icon="i-heroicons-sun-20-solid"
      class="fixed top-4 left-4"
      @click="theme()"
    />
    <Dropdown
      :items="items"
      label="Options111"
      :popper="{ placement: 'bottom-start' }"
      :ui="{ item: { shortcuts: 'block' } }"
    />
  </div>
</client-only>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import Dropdown from '~/components/Dropdown.vue';
const items = [
  [
    {
      label: 'Account',
      avatar: {
        src: 'https://avatars.githubusercontent.com/u/739984?v=4',
      },
    },
  ],
  [
    {
      label: 'Edit',
      icon: 'i-heroicons-pencil-square-20-solid',
      shortcuts: ['E'],
    },
    {
      label: 'Make a copy',
      icon: 'i-heroicons-document-duplicate-20-solid',
      shortcuts: ['D'],
      disabled: true,
    },
  ],
  [
    {
      label: 'Archive',
      icon: 'i-heroicons-archive-box-20-solid',
    },
    {
      label: 'Move',
      icon: 'i-heroicons-arrow-right-circle-20-solid',
    },
  ],
  [
    {
      label: 'Delete',
      icon: 'i-heroicons-trash-20-solid',
      shortcuts: ['⌘', 'D'],
    },
  ],
];

const themeToggleState = ref(false);
function theme() {
  themeToggleState.value = !themeToggleState.value;
  debugger
  document.documentElement.classList.toggle('dark');
}

onMounted(() => {
  if(process.client) {
    themeToggleState.value = document.documentElement.classList?.[0] === 'dark'
  }
})
</script>
<style>
html.dark {
  --tw-bg-opacity: 1;
  background-color: rgba(31, 41, 55 var(--tw-bg-opacity));
}

html.dark .dark\:ml-6 {
  margin-left: 1.5rem;
}

html.dark .dark\:bg-blue-500 {
  --tw-bg-opacity: 1;
  background-color: rgba(59, 130, 246, var(--tw-bg-opacity));
}
</style>
