<template>
    <v-app id="inspire">
        <the-header/>
        <v-content>
            <v-layout>
                <v-container fluid>
                    <div>{{ title }}</div>
                </v-container>
            </v-layout>
        </v-content>
    </v-app>
</template>

<script>
import TheHeader from "../src/components/organisms/TheHeader"

export default {
   name: 'app',
   components: {
       TheHeader
   },
   data () {
    return {
        title: 'This is App.vue!!'
      }
   } 
}
</script>
