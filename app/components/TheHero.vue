<template>
  <section id="home" class="relative min-h-screen flex items-center justify-center overflow-hidden">
    <!-- Background gradient blobs -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-1/4 left-1/4 w-96 h-96 bg-violet-600/20 rounded-full blur-3xl animate-pulse" />
      <div class="absolute bottom-1/4 right-1/4 w-80 h-80 bg-cyan-500/15 rounded-full blur-3xl animate-pulse delay-1000" />
      <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[600px] bg-indigo-600/10 rounded-full blur-3xl" />
    </div>

    <div class="container mx-auto px-6 text-center">
      <!-- Availability badge -->
      <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full border border-white/10 bg-white/5 backdrop-blur-sm mb-8 text-sm text-slate-400">
        <span class="w-2 h-2 rounded-full bg-emerald-400 animate-pulse" />
        Available for freelance work
      </div>

      <!-- Name -->
      <h1 class="text-5xl sm:text-7xl lg:text-8xl font-bold tracking-tight mb-6">
        <span class="text-white">Hi, I'm </span>
        <span class="bg-gradient-to-r from-violet-400 via-cyan-400 to-indigo-400 bg-clip-text text-transparent">
          FortiBrine
        </span>
      </h1>

      <!-- Tagline -->
      <p class="text-xl sm:text-2xl text-slate-400 max-w-2xl mx-auto mb-4 leading-relaxed">
        Backend Developer
      </p>
      <p class="text-base sm:text-lg text-slate-500 max-w-xl mx-auto mb-12">
        I build high-performance backend services, scalable APIs, and custom Minecraft server software.
      </p>

      <!-- CTA Buttons -->
      <div class="flex flex-col sm:flex-row gap-4 justify-center items-center">
        <a
          href="#projects"
          class="group relative inline-flex items-center gap-2 px-8 py-4 rounded-xl bg-gradient-to-r from-violet-600 to-indigo-600 text-white font-semibold text-base transition-all duration-300 hover:shadow-lg hover:shadow-violet-500/30 hover:scale-105"
        >
          View Projects
          <svg class="w-4 h-4 transition-transform group-hover:translate-x-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8l4 4m0 0l-4 4m4-4H3" />
          </svg>
        </a>
        <a
          href="#contact"
          class="inline-flex items-center gap-2 px-8 py-4 rounded-xl border border-white/10 bg-white/5 backdrop-blur-sm text-white font-semibold text-base transition-all duration-300 hover:bg-white/10 hover:border-white/20 hover:scale-105"
        >
          Contact Me
        </a>
      </div>

      <!-- Scroll indicator -->
      <div class="absolute bottom-10 left-1/2 -translate-x-1/2 flex flex-col items-center gap-2 text-slate-600">
        <span class="text-xs tracking-widest uppercase">Scroll</span>
        <div class="w-px h-12 bg-gradient-to-b from-slate-600 to-transparent animate-bounce" />
      </div>
    </div>
  </section>
</template>

