<template>
  <v-navigation-drawer
    class="blue"
    dark
    app
    v-model="drawer"
  >
    <slot/>
  </v-navigation-drawer>
</template>

<script>
export default {
  name: 'TheNavigationDrawer',
  data() {
    return {
      drawer: false
    }
  },
  props: {
    active: {
      type: Boolean,
      default: false
    }
  },
  watch: {
    active() {
      this.drawer = this.active
    }
  }
}
</script>