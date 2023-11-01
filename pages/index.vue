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
      innerHTML: `
        import "@rhds/elements/rh-cta/rh-cta.js";
        import "@rhds/elements/rh-card/rh-card.js";
      `
    }
  ]
})
</script>

<template>
  <section class="hero">
    <div class="container">
      <div class="row pb-5">
        <div class="col-lg-6">
          <h1>More cloud choice.<br>Less cloud management.</h1>
          <p>Build applications your way and launch on any cloud with Red Hat® OpenShift®—part of a portfolio of solutions that helps you defy constraints.</p>
          <div class="d-md-flex">
            <rh-cta class="mb-3 mb-md-0 me-md-3" variant="primary"><a href="https://www.redhat.com/en/technologies/cloud-computing/openshift/openshift-cloud-services">Explore OpenShift cloud services</a></rh-cta>
            <rh-cta variant="secondary"><a href="https://www.redhat.com/en/solutions">Discover other solutions</a></rh-cta>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-9">
          <h2>Red Hat is the leading provider of enterprise open source software solutions</h2>
          <p>Enterprises around the world trust our broad portfolio of hybrid cloud infrastructure, application services, cloud-native application development, and automation solutions to deliver IT services on any infrastructure quickly and cost effectively.</p>
        </div>
      </div>
    </div>
  </section>
  <section class="py-5">
    <div class="container">
      <h3>Build on a reliable foundation. Take your apps anywhere.</h3>
      <div class="row">
        <div class="col-lg-4 mb-3 mb-lg-0">
          <rh-card>
            <h4 slot="header">Red Hat Enterprise Linux</h4>
            <p>Support application deployments—from on premise to the cloud to the edge—in a flexible operating environment.</p>
            <rh-cta slot="footer" variant="secondary"><a href="https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux">Get product details</a></rh-cta>
          </rh-card>
        </div>
        <div class="col-lg-4 mb-3 mb-lg-0">
          <rh-card>
            <h4 slot="header">Red Hat OpenShift</h4>
            <p>Quickly build and deploy applications at scale, while you modernize the ones you already have.</p>
            <rh-cta slot="footer" variant="secondary"><a href="https://www.redhat.com/en/technologies/cloud-computing/openshift">Get product details</a></rh-cta>
          </rh-card>
        </div>
        <div class="col-lg-4 mb-3 mb-lg-0">
          <rh-card>
            <h4 slot="header">Red Hat Ansible Automation Platform</h4>
            <p>Create, manage, and dynamically scale automation across your entire enterprise.</p>
            <rh-cta slot="footer" variant="secondary"><a href="https://www.redhat.com/en/technologies/management/ansible">Get product details</a></rh-cta>
          </rh-card>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.hero {
  background-color: #feeded;
}
</style>