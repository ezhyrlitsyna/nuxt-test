<template>
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
</script>
