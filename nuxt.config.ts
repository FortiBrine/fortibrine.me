import tailwindcss from "@tailwindcss/vite";

export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },
  vite: {
    plugins: [
        tailwindcss(),
    ],
  },
  app: {
    head: {
      meta: [
        { name: 'theme-color', content: '#020617' },
      ],
      style: [
        { children: 'html, body { background-color: #020617; }' }
      ],
    },
  },
})
