<template>
  <div class="min-h-screen bg-slate-950 text-white antialiased">
    <TheNavbar />
    <main>
      <TheHero />
      <TheAbout />
      <TheSkills />
      <TheProjects />
      <TheContact />
    </main>
    <TheFooter />
  </div>
</template>

<style>
@import "tailwindcss";

/* Smooth scroll */
html {
  scroll-behavior: smooth;
  overflow-x: hidden;
  background-color: #020617;
}

body {
  overflow-x: hidden;
  background-color: #020617;
  min-height: 100%;
}

/* Custom scrollbar */
::-webkit-scrollbar { width: 6px; }
::-webkit-scrollbar-track { background: #020617; }
::-webkit-scrollbar-thumb { background: #334155; border-radius: 3px; }
::-webkit-scrollbar-thumb:hover { background: #475569; }

/* Selection color */
::selection { background: rgb(139 92 246 / 0.35); color: #fff; }

/* Subtle dot grid on body */
body {
  background-image: radial-gradient(rgb(255 255 255 / 0.035) 1px, transparent 1px);
  background-size: 28px 28px;
}
</style>