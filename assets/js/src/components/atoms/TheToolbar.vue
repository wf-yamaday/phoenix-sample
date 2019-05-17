<template>
  <v-toolbar
  app
  >
    <v-toolbar-side-icon @click=click></v-toolbar-side-icon>
    <v-toolbar-title>{{ title }}</v-toolbar-title>
    <slot/>
  </v-toolbar>
</template>

<script>
export default {
   name: 'TheToolbar',
   props: {
     title: {
       type: String,
       default: 'test'
     }
   },
   methods:{
     click(){
       this.$emit('click')
     }
   }
}
</script>
