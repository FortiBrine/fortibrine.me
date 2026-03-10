<template>
  <section id="about" class="py-32 relative">
    <div class="container mx-auto px-6 max-w-6xl">
      <SectionLabel text="About Me" />

      <div class="grid lg:grid-cols-2 gap-16 items-center mt-12">
        <!-- Avatar & decorative card -->
        <div class="relative flex justify-center">
          <div class="relative w-72 h-72 sm:w-80 sm:h-80">
            <!-- Glow ring -->
            <div class="absolute inset-0 rounded-2xl bg-gradient-to-br from-violet-600 to-cyan-500 p-px">
              <div class="w-full h-full rounded-2xl bg-slate-900 flex items-center justify-center text-8xl select-none">
                👨🏼‍💻
              </div>
            </div>
            <!-- Floating badge -->
            <div class="absolute -bottom-4 -right-4 px-4 py-2 rounded-xl bg-white/5 backdrop-blur-sm border border-white/10 text-sm text-slate-300">
              <span class="text-violet-400 font-semibold">4+</span> Years Experience
            </div>
          </div>
        </div>

        <!-- Bio text -->
        <div>
          <h2 class="text-4xl sm:text-5xl font-bold text-white mb-6 leading-tight">
            Building scalable <span class="bg-gradient-to-r from-violet-400 to-cyan-400 bg-clip-text text-transparent">backend</span> systems
          </h2>
          <p class="text-slate-400 text-lg leading-relaxed mb-6">
            I'm a backend-focused developer specializing in Java, Kotlin, and Go.
            I build high-performance services, APIs, and distributed systems with a focus on reliability and clean architecture.
          </p>
          <p class="text-slate-400 text-lg leading-relaxed mb-8">
            I also develop custom Minecraft server software and plugins using Spigot, Paper, and Velocity,
            working directly with NMS, ProtocolLib, and network internals.
            Outside backend work, I enjoy building modern interfaces with React, Vue, and TypeScript.
          </p>

          <!-- Quick facts -->
          <div class="grid grid-cols-2 gap-4">
            <div v-for="fact in facts" :key="fact.label" class="flex items-center gap-3">
              <span class="text-xl">{{ fact.icon }}</span>
              <div>
                <div class="text-white text-sm font-medium">{{ fact.label }}</div>
                <div class="text-slate-500 text-xs">{{ fact.value }}</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const facts = [
  { icon: '📍', label: 'Location', value: 'Ukraine' },
  { icon: '💻', label: 'Focus', value: 'Backend & Systems' },
  { icon: '⚙️', label: 'Stack', value: 'Java / Kotlin / Go' },
  { icon: '🎮', label: 'Specialty', value: 'Minecraft Servers' },
]
</script>

