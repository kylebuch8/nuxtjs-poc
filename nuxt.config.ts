// https://nuxt.com/docs/api/configuration/nuxt-config

export default defineNuxtConfig({
  devtools: { enabled: true },
  app: {
    head: {
      htmlAttrs: {
        lang: 'en'
      },
      meta: [
        {
          name: "viewport",
          content: "width=device-width, initial-scale=1"
        },
        {
          charset: "utf-8"
        }
      ]
    }
  },
  vue: {
    compilerOptions: {
      isCustomElement: tag => tag.includes('-'),
    }
  },
  vite: {
    build: {
      rollupOptions: {
        external: [
          '@rhds/elements/rh-card/rh-card.js',
        ]
      }
    }
  }
})
