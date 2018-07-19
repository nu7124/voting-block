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
      allPolls:[
          {question:"Vue better than React?",
          yes:29,
          no:41},
          {question:"Kanye a genius?",
          yes:20,
          no:12},
          {question:"Pineapple on Pizza?",
          yes:54,
          no:34},
          {question:"Light themed editors?",
          yes:0,
          no:100},
          {question:"iOS better than Android?",
          yes:9,
          no:15},
          {question:"Burrito better than bowl?",
          yes:20,
          no:20},
          {question:"BBQ sauce on pizza?",
          yes:54,
          no:42},
          {question:"Linux is best for devs?",
          yes:30,
          no:18},
          
      ]
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
