<template>
  <div class="inline-flex items-center gap-2">
    <div class="h-px w-8 bg-gradient-to-r from-violet-500 to-transparent" />
    <span class="text-xs font-semibold tracking-widest text-violet-400 uppercase">{{ text }}</span>
  </div>
</template>

<script setup lang="ts">
defineProps<{ text: string }>()
</script>

