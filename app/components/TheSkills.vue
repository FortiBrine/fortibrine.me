<template>
  <section id="skills" class="py-32 relative">
    <!-- Subtle background grid -->
    <div class="absolute inset-0 -z-10 bg-[linear-gradient(to_right,#ffffff06_1px,transparent_1px),linear-gradient(to_bottom,#ffffff06_1px,transparent_1px)] bg-[size:4rem_4rem]" />

    <div class="container mx-auto px-6 max-w-6xl">
      <SectionLabel text="Tech Stack" />
      <h2 class="text-4xl sm:text-5xl font-bold text-white mt-4 mb-4">
        Tools I <span class="bg-gradient-to-r from-violet-400 to-cyan-400 bg-clip-text text-transparent">work with</span>
      </h2>
      <p class="text-slate-400 text-lg mb-16 max-w-xl">
        A curated set of technologies I use to build fast, reliable, and beautiful products.
      </p>

      <!-- Category groups -->
      <div class="space-y-12">
        <div v-for="category in skillCategories" :key="category.name">
          <h3 class="text-xs font-semibold tracking-widest text-slate-500 uppercase mb-6">{{ category.name }}</h3>
          <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-4">
            <div
              v-for="skill in category.skills"
              :key="skill.name"
              class="group flex flex-col items-center gap-3 p-5 rounded-xl border border-white/5 bg-white/3 backdrop-blur-sm cursor-default transition-all duration-300 hover:border-white/15 hover:bg-white/8 hover:scale-105 hover:shadow-lg"
              :class="skill.glow"
            >
              <img
                v-if="skill.img"
                :src="skill.img"
                :alt="skill.name"
                class="w-8 h-8 object-contain transition-transform duration-300 group-hover:scale-110 invert opacity-80 group-hover:opacity-100"
              />
              <span v-else class="text-3xl transition-transform duration-300 group-hover:scale-110">{{ skill.icon }}</span>
              <span class="text-slate-300 text-sm font-medium text-center">{{ skill.name }}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
interface Skill {
  name: string
  glow: string
  img?: string
  icon?: string
}

interface SkillCategory {
  name: string
  skills: Skill[]
}

const skillCategories: SkillCategory[] = [
  {
    name: 'Backend',
    skills: [
      { name: 'Java', img: '/icons/java.svg', glow: 'hover:shadow-orange-500/10' },
      { name: 'Kotlin', img: '/icons/kotlin.svg', glow: 'hover:shadow-purple-500/10' },
      { name: 'Go', img: '/icons/go.svg', glow: 'hover:shadow-cyan-500/10' },
      { name: 'Spring Boot', img: '/icons/springboot.svg', glow: 'hover:shadow-green-500/10' },
      { name: 'PostgreSQL', img: '/icons/postgresql.svg', glow: 'hover:shadow-blue-500/10' },
      { name: 'MongoDB', img: '/icons/mongodb.svg', glow: 'hover:shadow-green-500/10' },
      { name: 'Maven', img: '/icons/apachemaven.svg', glow: 'hover:shadow-red-500/10' },
      { name: 'Gradle', img: '/icons/gradle.svg', glow: 'hover:shadow-emerald-500/10' },
    ],
  },
  {
    name: 'Frontend',
    skills: [
      { name: 'TypeScript', img: '/icons/typescript.svg', glow: 'hover:shadow-blue-500/10' },
      { name: 'React', img: '/icons/react.svg', glow: 'hover:shadow-cyan-500/10' },
      { name: 'Vue.js', img: '/icons/vuedotjs.svg', glow: 'hover:shadow-emerald-500/10' },
    ],
  },
  {
    name: 'DevOps & Tools',
    skills: [
      { name: 'Linux', img: '/icons/linux.svg', glow: 'hover:shadow-slate-400/10' },
      { name: 'Git', img: '/icons/git.svg', glow: 'hover:shadow-orange-500/10' },
      { name: 'Podman', img: '/icons/podman.svg', glow: 'hover:shadow-purple-500/10' },
      { name: 'Cloudflare Tunnel', img: '/icons/cloudflare.svg', glow: 'hover:shadow-orange-500/10' },
    ],
  },
  {
    name: 'Minecraft Development',
    skills: [
      { name: 'Spigot', icon: '🧩', glow: 'hover:shadow-orange-500/10' },
      { name: 'Paper', icon: '🧩', glow: 'hover:shadow-gray-400/10' },
      { name: 'BungeeCord', icon: '🧩', glow: 'hover:shadow-purple-500/10' },
      { name: 'Velocity', icon: '🧩', glow: 'hover:shadow-yellow-500/10' },
      { name: 'ProtocolLib', icon: '🧩', glow: 'hover:shadow-blue-500/10' },
      { name: 'PlaceholderAPI', icon: '🧩', glow: 'hover:shadow-green-500/10' },
      { name: 'NMS', icon: '🧩', glow: 'hover:shadow-red-500/10' },
      { name: 'NBT Tags', icon: '🧩', glow: 'hover:shadow-indigo-500/10' },
    ],
  },
  {
    name: 'Libraries',
    skills: [
      { name: 'Lombok', icon: '🧩', glow: 'hover:shadow-pink-500/10' },
      { name: 'Guava', icon: '🧩', glow: 'hover:shadow-green-500/10' },
      { name: 'Gson', icon: '🧩', glow: 'hover:shadow-red-500/10' },
      { name: 'Kryonetty', icon: '🧩', glow: 'hover:shadow-cyan-500/10' },
      { name: 'ORMLite', icon: '🧩', glow: 'hover:shadow-blue-500/10' },
      { name: 'Dagger', icon: '🧩', glow: 'hover:shadow-red-500/10' },
      { name: 'SnakeYAML', icon: '🧩', glow: 'hover:shadow-yellow-500/10' },
      { name: 'Kotlin Serialization', icon: '🧩', glow: 'hover:shadow-purple-500/10' },
      { name: 'Kaml', icon: '🧩', glow: 'hover:shadow-indigo-500/10' },
      { name: 'Koin', icon: '🧩', glow: 'hover:shadow-blue-500/10' },
    ],
  },
]
</script>

