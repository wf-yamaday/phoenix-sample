<template>
    <div>
        <the-navigation
            :active=active
        />
        <the-toolbar
            @click="click"
        />
    </div>
</template>

<script>
import TheNavigation from "../molecules/TheNavigation"
import TheToolbar from "../atoms/TheToolbar"

export default {
    name: "TheHeader",
    components: {
        TheNavigation,
        TheToolbar
    },
    data() {
        return {
            active: false
        }
    },
    methods: {
        click(){
            this.active = !this.active
        }
    }
}
</script>
