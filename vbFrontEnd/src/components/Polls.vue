<template>
  <div id="polls">
    <h2 class="title">Your Polls</h2>
    <div id="pollsList">
      <div v-for="(poll, ind) in allPolls" :key="poll+ind" class="individualPoll">
        <h3 class="question" v-bind:style="{ backgroundColor: colors[ind]}">{{poll.question}}</h3>
        <div class="results">
          <div>
            <h4>Yes:{{poll.yes}}</h4>
          </div>
          <h4>no:{{poll.no}}</h4>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Home',
  data () {
    return{
      colors:["#D40000", "#49B893", "#AB1FBB", "#D0517C","#ffcc00", "#ff66cc", "#00ccff", "#c1ffa2"]
    }
  },
  props: ['allPolls']
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.title{
  text-align: center;
  color: #ffefdf;
  font-family: 'Merienda', cursive;
}

#polls{
    padding:2%;
}

.question{
  background-color: #49B893;
  border-radius:10px 10px 0 0;
  text-align: center;
  padding:2%;
  /* color:#ffefdf; */
  font-family: 'Merienda', cursive;
}

.results{
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  justify-items: center;
  padding:2%;
  border-radius:0 0 10px 10px;
  background-color: rgba(255, 255, 255, 0.5);
  font-family: 'Merienda', cursive;
}

#pollsList{
  display: grid;
}

.individualPoll{
  /* border:2px solid white; */
  border-radius:10px;
  margin:2%;
}

@media only screen and (min-width: 480px) {
  #pollsList{
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    justify-content: center;
  }
}
</style>
