<template>
  <div>
    <div id="main_nav">
        <h1 id="main_nav_title">Voting Block</h1>
    </div>

    <div id="main_myPolls">
        <router-link to="/"><button class="button">My Polls</button></router-link>
        <router-link to="/form"><button class="button">New Poll</button></router-link>
    </div>

    <div id="main_pollList">
        <router-view :allPolls="allPolls"></router-view>
    </div>
  </div>
</template>

<script>
import Polls from './Polls.vue'
export default {
  name: 'Home',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      allPolls:[1,2,3]
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
}

.button {
    background-color: #ffefdf;
    border-radius: 1em;
    font-family: 'Merienda', cursive;
    color:#212121;
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
