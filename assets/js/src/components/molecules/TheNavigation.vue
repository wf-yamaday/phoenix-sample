<template>
    <the-navigation-drawer
        :active=active
    >
        <the-navigation-contents />
    </the-navigation-drawer>
</template>

<script>
import TheNavigationDrawer from "../atoms/TheNavigationDrawer"
import TheNavigationContents from "../atoms/TheNavigationContents"

export default {
    name: "TheNavigation",
    components: {
        TheNavigationDrawer,
        TheNavigationContents
    },
    props: {
        active: {
            type: Boolean,
            default: false
        }
    }
}
</script>
