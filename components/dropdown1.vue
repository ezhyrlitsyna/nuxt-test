<template>
  <UDropdown
    :items="items"
    :popper="popper"
    :ui="ui"
  >
    <UButton
      color="white"
      :label="label"
      trailing-icon="i-heroicons-chevron-down-20-solid"
    />
  </UDropdown>
</template>
<script setup>
const props = defineProps({
	items: {
		type: Array,
		required: true,
	},
	popper: {
		type: Object,
		default: () => ({}),
	},
	label: {
		type: String,
		default: '',
	},
	ui: {
		type: Object,
		default: () => ({}),
	},
});
</script>
