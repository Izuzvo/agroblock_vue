<template>
  <Header />
  <Footer />
  <router-view/>
</template>

<!-- Importando el header -->
<script>
import Header from './components/layouts/HeaderComponent.vue'
import Footer from './components/layouts/FooterComponent.vue'

export default ({
  components: {
    Header,
    Footer
  }
})
</script>


<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>
