<template>
  <section id="projects" class="py-32 relative">
    <div class="container mx-auto px-6 max-w-6xl">
      <SectionLabel text="Projects" />
      <div class="flex flex-col sm:flex-row sm:items-end sm:justify-between mt-4 mb-16 gap-4">
        <div>
          <h2 class="text-4xl sm:text-5xl font-bold text-white mb-3">
            Things I've <span class="bg-gradient-to-r from-violet-400 to-cyan-400 bg-clip-text text-transparent">built</span>
          </h2>
          <p class="text-slate-400 text-lg max-w-lg">
            A selection of projects I'm proud of — ranging from Minecraft plugins to open-source tools and libraries.
          </p>
        </div>
        <a
          href="https://github.com/FortiBrine"
          target="_blank"
          rel="noopener noreferrer"
          class="inline-flex items-center gap-2 text-slate-400 text-sm hover:text-white transition-colors shrink-0"
        >
          View all on GitHub
          <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
          </svg>
        </a>
      </div>

      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
        <ProjectCard v-for="project in projects" :key="project.title" :project="project" />
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const projects = [
  {
    emoji: '🎬',
    title: 'ClipHarborBot - Video Downloader Telegram Bot',
    description: 'A Telegram bot that downloads videos from TikTok, YouTube, Instagram and more directly into your chat. Features webhook architecture, multi-language support, and PostgreSQL persistence.',
    technologies: ['Go', 'Telegram Bot API', 'PostgreSQL', 'Docker', 'yt-dlp', 'Cloudflare Tunnel'],
    github: 'https://github.com/FortiBrine/ClipHarborBot',
  },
  {
    emoji: '💰',
    title: 'CryptoVault - Cryptocurrency Trading Plugin',
    description: 'A Minecraft plugin that brings cryptocurrency trading to your server. Buy, sell, and manage virtual cryptocurrencies with real-time prices, integrated with Vault economy and PlaceholderAPI support.',
    technologies: ['Java', 'Paper/Spigot', 'Gradle', 'ORMLite', 'Vault API', 'PlaceholderAPI'],
    github: 'https://github.com/FortiBrine/CryptoVault',
  },
  {
    emoji: '📚',
    title: 'LearningApp - Education Platform',
    description: 'A cross-platform mobile learning application connecting teachers and students. Schedule lessons, rate tutors, chat in real-time, and manage multiple subjects with an intuitive interface.',
    technologies: ['React Native', 'TypeScript', 'Expo', 'Spring Boot', 'Kotlin', 'WebSocket', 'i18n', 'PostgreSQL'],
    github: 'https://github.com/FortiBrine/learning-app',
  }
]
</script>

