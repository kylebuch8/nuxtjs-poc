<script setup lang="ts">
useHead({
  title: 'Nuxt.js POC',
  meta: [
    {
      name: 'description',
      content: 'Nuxt.js POC'
    }
  ],
  script: [
    {
      type: 'module',
      innerHTML: 'import "@rhds/elements/rh-card/rh-card.js"'
    }
  ]
})
</script>

<template>
  <h1>Nuxt.js POC</h1>
  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat vero deserunt dolor saepe ut quae atque. Dignissimos omnis illo sed voluptatem. Debitis sit deserunt quod? Placeat alias quaerat quibusdam suscipit.</p>
  <rh-card>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat alias porro obcaecati repudiandae. Perspiciatis vero magni, fugit deserunt consequatur accusamus veritatis similique reprehenderit voluptates ex exercitationem nemo nihil, harum distinctio.</p>
  </rh-card>
</template>