<template>
  <button
    @click="theme()"
    class="mt-4 w-12 h-6 rounded-full p-1 bg-gray-400 dark:bg-gray-600 relative transition-colors duration-500 ease-in focus:outline-none focus:ring-2 focus:ring-blue-700 dark:focus:ring-blue-600 focus:border-transparent"
  >
    <div
      id="toggle"
      class="rounded-full w-4 h-4 bg-blue-600 dark:bg-blue-500 relative ml-0 dark:ml-6 pointer-events-none transition-all duration-300 ease-out"
    />
  </button>
  <div class="flex h-screen w-full justify-center items-center">
    <Dropdown
      :items="items"
      label="Options"
      :popper="{ placement: 'bottom-start' }"
      :ui="{ item: { shortcuts: 'block' } }"
    />
  </div>
</template>

<script setup>
import Dropdown from '~/components/Dropdown.vue'
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

function theme() {
  document.documentElement.classList.toggle('dark');
}
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
