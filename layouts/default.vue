<script setup>
import 'bootstrap/dist/css/bootstrap-grid.min.css';
import AppHeader from '../components/AppHeader.vue';
import AppFooter from '../components/AppFooter.vue';

useHead({
  link: [
    {
      rel: 'preconnect',
      href: 'https://fonts.googleapis.com'
    },
    {
      rel: 'preconnect',
      href: 'https://fonts.gstatic.com',
      crossorigin: '',
    },
    {
      rel: 'stylesheet',
      href: 'https://fonts.googleapis.com/css2?family=Red+Hat+Display:wght@400;700&family=Red+Hat+Text:wght@400;700&display=swap"'
    }
  ],
  script: [
    {
      type: 'importmap',
      innerHTML: `
{
  "imports": {
    "@patternfly/elements/": "https://ga.jspm.io/npm:@patternfly/elements@2.4.0/",
    "@rhds/elements/": "https://ga.jspm.io/npm:@rhds/elements@1.2.0/elements/",
    "@rhds/elements/rh-footer/rh-footer.js": "https://ga.jspm.io/npm:@rhds/elements@1.2.0/elements/rh-footer/rh-footer.js"
  },
  "scopes": {
    "https://ga.jspm.io/": {
      "@floating-ui/core": "https://ga.jspm.io/npm:@floating-ui/core@1.5.0/dist/floating-ui.core.mjs",
      "@floating-ui/dom": "https://ga.jspm.io/npm:@floating-ui/dom@1.5.3/dist/floating-ui.dom.mjs",
      "@floating-ui/utils": "https://ga.jspm.io/npm:@floating-ui/utils@0.1.6/dist/floating-ui.utils.mjs",
      "@floating-ui/utils/dom": "https://ga.jspm.io/npm:@floating-ui/utils@0.1.6/dom/dist/floating-ui.utils.dom.mjs",
      "@lit/reactive-element": "https://ga.jspm.io/npm:@lit/reactive-element@1.6.3/development/reactive-element.js",
      "@lit/reactive-element/decorators/": "https://ga.jspm.io/npm:@lit/reactive-element@1.6.3/development/decorators/",
      "@patternfly/pfe-core": "https://ga.jspm.io/npm:@patternfly/pfe-core@2.4.1/core.js",
      "@patternfly/pfe-core/": "https://ga.jspm.io/npm:@patternfly/pfe-core@2.4.1/",
      "@rhds/tokens/media.js": "https://ga.jspm.io/npm:@rhds/tokens@1.1.2/js/media.js",
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
*,
::after,
::before {
  box-sizing: border-box;
}

html,
body {
  margin: 0;
  font-size: 1.05rem;
  font-family: 'Red Hat Text', sans-serif;
}

h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: 'Red Hat Display', sans-serif;
  font-weight: 300;
}

h1 {
  font-size: 48px;
  line-height: 62px;
}

h2 {
  font-size: 40px;
  line-height: 48px;
}

h3 {
  font-size: 28px;
}

main {
  line-height: 30px;
}
</style>