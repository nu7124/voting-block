<template>
  <div>
    <div id="main_nav">
        <h1 id="main_nav_title">Voting Block</h1>
    </div>

    <div id="main_myPolls">
        <router-link to="/"><button class="button">MY POLLS</button></router-link>
        <router-link to="/form"><button class="button">New Poll</button></router-link>
    </div>

    <div id="main_pollList">
        <!-- <Polls></Polls> -->
        <router-view></router-view>
    </div>
  </div>
</template>

<script>
import Polls from './Polls.vue'
export default {
  name: 'Home',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  },
components:{
    Polls
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

#main_pollList{
    border: 2px solid white;
    min-height: 1px;
}

#main_nav_title {
    color:#ffefdf;
    font-family: 'Kaushan Script', cursive;
}

#main_myPolls {
    padding:2%;
    display: flex;
    justify-content: space-between;
}

.main_myPolls_title {
    color:#ffefdf;
    font-family: 'Indie Flower', cursive;
}

.button {
    background-color: #ffefdf;
    border-radius: 1em;
    font-family: 'Indie Flower', cursive;
    font-size: 1.1em;
    width:30vw;
    outline:none;
}

@media only screen and (min-width: 480px) {
    .button {
        width:15vw;
    }
}
</style>
