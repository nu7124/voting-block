<template>
  <div id="app">
    <Home></Home>
  </div>
</template>

<script>
import getWeb3 from './utils/web3.js'
import Home from './components/Home.vue'

getWeb3
  .then(results => {
    console.log('FOUND WEB3.JS', results.web3.currentProvider)
  })
  .catch(() => {
    console.log('Error finding web3.')
  })
export default {
  name: 'App',
  data(){
    return{}
  },
  components:{
    Home
  }
}
</script>

<style>
* {
    margin: 0;
    padding: 0;
}

#app {
    background-color: #2C3443;
    width:100vw;
    height:100vh;
}
</style>
