<script setup>
import AppHeader from '../components/AppHeader.vue';
import AppFooter from '../components/AppFooter.vue';

useHead({
  script: [
    {
      type: 'importmap',
      innerHTML: `
{
  "imports": {
    "@patternfly/elements/": "https://ga.jspm.io/npm:@patternfly/elements@2.4.0/elements/",
    "@rhds/elements/": "https://ga.jspm.io/npm:@rhds/elements@1.2.0/elements/"
  },
  "scopes": {
    "https://ga.jspm.io/": {
      "@floating-ui/core": "https://ga.jspm.io/npm:@floating-ui/core@1.5.0/dist/floating-ui.core.mjs",
      "@floating-ui/dom": "https://ga.jspm.io/npm:@floating-ui/dom@1.5.3/dist/floating-ui.dom.mjs",
      "@floating-ui/utils": "https://ga.jspm.io/npm:@floating-ui/utils@0.1.6/dist/floating-ui.utils.mjs",
      "@floating-ui/utils/dom": "https://ga.jspm.io/npm:@floating-ui/utils@0.1.6/dom/dist/floating-ui.utils.dom.mjs",
      "@lit/reactive-element": "https://ga.jspm.io/npm:@lit/reactive-element@1.6.3/development/reactive-element.js",
      "@lit/reactive-element/decorators/": "https://ga.jspm.io/npm:@lit/reactive-element@1.6.3/development/decorators/",
      "@patternfly/pfe-core/": "https://ga.jspm.io/npm:@patternfly/pfe-core@2.4.1/",
      "lit": "https://ga.jspm.io/npm:lit@2.6.1/index.js",
      "lit-element/lit-element.js": "https://ga.jspm.io/npm:lit-element@3.3.3/development/lit-element.js",
      "lit-html": "https://ga.jspm.io/npm:lit-html@2.8.0/development/lit-html.js",
      "lit-html/": "https://ga.jspm.io/npm:lit-html@2.8.0/development/",
      "lit/": "https://ga.jspm.io/npm:lit@2.6.1/",
      "tslib": "https://ga.jspm.io/npm:tslib@2.6.2/tslib.es6.mjs"
    }
  }
}
`
    }
  ]
})
</script>
<template>
  <div>
    <AppHeader />
    <main>
      <slot></slot>
    </main>
    <AppFooter />
  </div>
</template>

<style>
html,
body {
  margin: 0;
}
</style>