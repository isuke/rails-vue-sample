import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
  publicDir: false,
  build: {
    outDir: 'public/dist',
    // copyPublicDir: false,
    cssCodeSplit: false,
    manifest: true,
    rollupOptions: {
      input: '/app/frontend/main.ts',
    }
  },
  plugins: [vue()],
})
