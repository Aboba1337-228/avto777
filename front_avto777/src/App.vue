<template>
  <vHeader />
  <vHeaderNav />
  <router-view/>
  <vFooter />
</template>

<script>
import vFooter from './components/Footer/v-footer.vue';
import vHeaderNav from './components/Header/v-header-nav.vue';
import vHeader from './components/Header/v-header.vue'

export default {
  components: {
    vHeader,
    vHeaderNav,
    vFooter
  }
}

</script>

<style>

* {
  padding: 0;
  margin: 0;
  font-family:'Courier New', Courier, monospace;
}

.v-container {
  max-width: 1300px;
  margin: 0 auto;
}

.v-inner {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

h1,h2,h3,h4,h5,h6 {
  margin: 15px 0px;
  line-height: 15px;
}

</style>
