<template>
<div id="form">
    <h1 class="text">What question would you like to ask?</h1>
    <input type="text" v-model="question" id="inputBox"/>
    <button id="create">Create</button>
</div>
</template>

<script>
export default {
  name: 'Form',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      question:""
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#form {
    padding:2%;
    display: grid;
    justify-content: center;
}

.text{
    color:#ffefdf;
}

#inputBox{
    background-color: #fff;
    opacity: .5;
    height: 5vh;
    outline: none;
    margin:4%;
    font-size:1em;
    border-radius:1em;
    margin:2%;
}

#create{
    background-color: #ffefdf;
    font-size: 1.1em;
    padding:4%;
    margin-left:auto;
    margin-right:auto;
    min-width:20vh;
    border-radius:3em;
}

@media only screen and (min-width: 480px) {
    #create{
        padding:3%;
    }
}
</style>
