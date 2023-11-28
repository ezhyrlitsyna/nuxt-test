<template>
  <div class="flex h-screen w-full justify-center items-center relative">
    <UToggle
      v-model="isDark"
      color="blue"
      on-icon="i-heroicons-moon-20-solid"
      off-icon="i-heroicons-sun-20-solid"
      class="fixed top-4 left-4"
    />
    <Dropdown
      :items="items"
      label="Options"
      :popper="{ placement: 'bottom-start' }"
      :ui="{ item: { shortcuts: 'inline-flex' } }"
    />
  </div>
</template>

<script setup>
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

const colorMode = useColorMode();
const isDark = computed({
  get () {
    return colorMode.value === 'dark';
  },
  set (newVal) {
    colorMode.preference = newVal ? 'dark' : 'light';
  }
});
</script>
