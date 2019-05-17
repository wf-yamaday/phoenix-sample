<template>
      <v-app id="inspire">
        <the-toolbar/> 
        <the-navigation-drawer/>
    </v-app>
</template>

<script>
import TheToolbar from "../atoms/TheToolbar"
import TheNavigationDrawer from "../atoms/TheNavigationDrawer"

export default {
   name: 'TheTopPage',
   components: {
       TheToolbar,
       TheNavigationDrawer
   },
   data () {
    return {
        title: 'This is App.vue!!'
      }
   } 
}
</script>

