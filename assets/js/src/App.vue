<template>
    <!-- <v-app id="inspire">
        
        <the-navigation-drawer/>

        <v-toolbar/>

        <v-content>
        <v-layout>
            <v-container fluid>
                <div>{{ title }}</div>
            </v-container>
        </v-layout>
        </v-content>

    </v-app> -->
    <the-top-page/>
</template>

<script>
import TheToolbar from "../src/components/atoms/TheToolbar"
import TheNavigationDrawer from "../src/components/atoms/TheNavigationDrawer"
import TheTopPage from "../src/components/organisms/TheTopPage"

export default {
   name: 'app',
   components: {
       TheToolbar,
       TheNavigationDrawer,
       TheTopPage
   },
   data () {
    return {
        title: 'This is App.vue!!'
      }
   } 
}
</script>
