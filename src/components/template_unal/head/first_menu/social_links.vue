<template>
    <ul class="list-inline d-none d-sm-block">
        <social-link social_network = "facebook"></social-link>
        <social-link social_network = "twitter"></social-link>
        <social-link social_network = "youtube"></social-link>
        <social-link social_network = "rss"></social-link>
    </ul>
</template>

<script lang="ts">
import social_linkVue from './social_link.vue'
export default {
    name:'social_links',
    components:{
        'social-link' : social_linkVue
    }
}
</script>

<style scoped>
    
</style>