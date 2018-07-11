<template>
  <div>
    <div id="main_nav">
        <h1 id="main_nav_title">Voting Block</h1>
    </div>

    <div id="main_myPolls">
        <h2 class="main_myPolls_title">MY POLLS</h2>
    </div>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#main_nav {
    background-color: #444A56;
    width:100vw;
    height:10vh;
    display: grid;
    justify-content: center;
    align-content: center;
}

#main_nav_title {
    color:#ffefdf;
    font-family: 'Kaushan Script', cursive;
}

#main_myPolls {
    padding:2%;
}

.main_myPolls_title {
    color:#ffefdf;
    font-family: 'Indie Flower', cursive;
}
</style>
