<template>
  <section id="about" class="py-32 relative">
    <div class="container mx-auto px-6 max-w-6xl">
      <SectionLabel text="About Me" />

      <div class="grid lg:grid-cols-2 gap-16 items-center mt-12">
        <!-- Terminal card -->
        <div class="relative flex justify-center">
          <div class="relative w-72 sm:w-80">
            <!-- Glow border -->
            <div class="rounded-2xl bg-gradient-to-br from-violet-600 to-cyan-500 p-px shadow-2xl shadow-violet-500/20">
              <div class="rounded-2xl bg-slate-950 overflow-hidden">
                <!-- Terminal titlebar -->
                <div class="flex items-center gap-2 px-4 py-3 bg-white/5 border-b border-white/5">
                  <span class="w-3 h-3 rounded-full bg-red-500/70" />
                  <span class="w-3 h-3 rounded-full bg-yellow-500/70" />
                  <span class="w-3 h-3 rounded-full bg-emerald-500/70" />
                  <span class="ml-2 text-xs text-slate-500 font-mono">~/fortibrine</span>
                </div>
                <!-- Terminal body -->
                <div class="p-5 font-mono text-xs sm:text-sm space-y-2 select-none">
                  <div>
                    <span class="text-violet-400">❯</span>
                    <span class="text-slate-300"> whoami</span>
                  </div>
                  <div class="text-cyan-400 pl-3">FortiBrine</div>
                  <div class="mt-1">
                    <span class="text-violet-400">❯</span>
                    <span class="text-slate-300"> cat stack.txt</span>
                  </div>
                  <div class="pl-3 space-y-1 text-slate-400">
                    <div><span class="text-emerald-400">lang</span>: Java, Kotlin, Go</div>
                    <div><span class="text-emerald-400">api</span>: REST, gRPC</div>
                    <div><span class="text-emerald-400">db</span>: PostgreSQL, MongoDB</div>
                    <div><span class="text-emerald-400">mc</span>: Paper, Velocity, NMS</div>
                  </div>
                  <div class="mt-1">
                    <span class="text-violet-400">❯</span>
                    <span class="text-slate-300"> uptime</span>
                  </div>
                  <div class="pl-3 text-cyan-400">4+ years experience</div>
                  <div class="flex items-center gap-1 mt-1">
                    <span class="text-violet-400">❯</span>
                    <span class="w-2 h-4 bg-violet-400 animate-pulse ml-1 rounded-sm" />
                  </div>
                </div>
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

