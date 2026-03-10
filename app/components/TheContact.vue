<template>
  <section id="contact" class="py-32 relative">
    <!-- Bottom glow -->
    <div class="absolute bottom-0 left-1/2 -translate-x-1/2 w-[600px] h-64 bg-violet-600/10 rounded-full blur-3xl -z-10" />

    <div class="container mx-auto px-6 max-w-3xl text-center">
      <SectionLabel text="Contact" />
      <h2 class="text-4xl sm:text-5xl font-bold text-white mt-4 mb-6">
        Let's work <span class="bg-gradient-to-r from-violet-400 to-cyan-400 bg-clip-text text-transparent">together</span>
      </h2>
      <p class="text-slate-400 text-lg mb-12 leading-relaxed">
        I'm currently open to freelance projects and full-time opportunities. If you have an interesting project or a role that might be a good fit, reach out — I'd love to chat.
      </p>

      <!-- Email CTA -->
      <a
        href="mailto:contact@fortibrine.me"
        class="group inline-flex items-center gap-3 px-8 py-5 rounded-2xl bg-gradient-to-r from-violet-600 to-indigo-600 text-white font-semibold text-lg transition-all duration-300 hover:shadow-2xl hover:shadow-violet-500/25 hover:scale-105 mb-16"
      >
        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
        </svg>
        contact@fortibrine.me
      </a>

      <!-- Social links -->
      <div class="flex justify-center gap-4 flex-wrap">
        <a
          v-for="social in socials"
          :key="social.name"
          :href="social.url"
          target="_blank"
          rel="noopener noreferrer"
          class="group flex items-center gap-2.5 px-5 py-3 rounded-xl border border-white/8 bg-white/3 text-slate-400 font-medium text-sm transition-all duration-300 hover:border-white/20 hover:bg-white/8 hover:text-white hover:scale-105"
        >
          <img
            v-if="social.img"
            :src="social.img"
            :alt="social.name"
            class="w-5 h-5 object-contain invert opacity-70 group-hover:opacity-100 transition-opacity duration-300"
          />
          <span v-else class="text-lg">{{ social.icon }}</span>
          {{ social.name }}
        </a>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
interface Social {
  name: string
  url: string
  img?: string
  icon?: string
}

const socials: Social[] = [
  { name: 'GitHub', img: '/icons/github.svg', url: 'https://github.com/FortiBrine' },
]
</script>

