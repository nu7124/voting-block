<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
* {
    margin: 0;
    padding: 0;
}

#app {
    background-color: #2C3443;
    display: grid;
    width:100vw;
    height:100vh;
}
</style>
