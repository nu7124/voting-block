<template>
  <div id="polls">
    <ul v-for="poll in allPolls" :key="poll">
      <h1>{{ poll }}</h1>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Home',
  data () {

  },
  props: ['allPolls']
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#polls{
    padding:2%;
}
</style>
