<template>
  <header
    class="fixed top-0 left-0 right-0 z-50 transition-all duration-300"
    :class="scrolled ? 'bg-slate-950/80 backdrop-blur-md border-b border-white/5 shadow-xl shadow-black/20' : 'bg-transparent'"
  >
    <nav class="container mx-auto px-6 h-16 flex items-center justify-between max-w-6xl">
      <!-- Logo -->
      <a href="#home" class="font-bold text-xl text-white tracking-tight">
        fortibrine<span class="text-violet-400">.</span>me
      </a>

      <!-- Desktop nav -->
      <ul class="hidden md:flex items-center gap-1">
        <li v-for="item in navItems" :key="item.href">
          <a
            :href="item.href"
            class="px-4 py-2 rounded-lg text-sm text-slate-400 font-medium transition-all duration-200 hover:text-white hover:bg-white/5"
          >
            {{ item.label }}
          </a>
        </li>
      </ul>

      <!-- CTA -->
      <a
        href="#contact"
        class="hidden md:inline-flex items-center px-5 py-2 rounded-lg border border-white/10 bg-white/5 text-white text-sm font-medium transition-all duration-200 hover:bg-white/10 hover:border-white/20"
      >
        Hire me
      </a>

      <!-- Mobile menu button -->
      <button
        class="md:hidden p-2 rounded-lg text-slate-400 hover:text-white hover:bg-white/5 transition-colors"
        @click="mobileOpen = !mobileOpen"
        aria-label="Toggle menu"
      >
        <svg v-if="!mobileOpen" class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
        </svg>
        <svg v-else class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
        </svg>
      </button>
    </nav>

    <!-- Mobile menu -->
    <div
      v-if="mobileOpen"
      class="md:hidden border-t border-white/5 bg-slate-950/95 backdrop-blur-md"
    >
      <div class="container mx-auto px-6 py-4 flex flex-col gap-1">
        <a
          v-for="item in navItems"
          :key="item.href"
          :href="item.href"
          class="px-4 py-3 rounded-lg text-slate-400 font-medium text-sm hover:text-white hover:bg-white/5 transition-all"
          @click="mobileOpen = false"
        >
          {{ item.label }}
        </a>
        <a
          href="#contact"
          class="mt-2 px-4 py-3 rounded-lg border border-white/10 bg-white/5 text-white font-medium text-sm text-center hover:bg-white/10 transition-all"
          @click="mobileOpen = false"
        >
          Hire me
        </a>
      </div>
    </div>
  </header>
</template>

<script setup lang="ts">
const scrolled = ref(false)
const mobileOpen = ref(false)

const navItems = [
  { href: '#home', label: 'Home' },
  { href: '#about', label: 'About' },
  { href: '#skills', label: 'Skills' },
  { href: '#projects', label: 'Projects' },
  { href: '#contact', label: 'Contact' },
]

onMounted(() => {
  const onScroll = () => { scrolled.value = window.scrollY > 20 }
  window.addEventListener('scroll', onScroll, { passive: true })
  onUnmounted(() => window.removeEventListener('scroll', onScroll))
})
</script>

