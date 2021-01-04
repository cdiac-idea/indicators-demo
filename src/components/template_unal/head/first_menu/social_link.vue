<template>
  <li class="list-inline-item social-images" v-if="social_network == 'facebook'" @mouseleave="normal_icon()" @mouseover="hover_icon()">
        <a href="https://www.facebook.com/UNColombia" target="_blank" title="Página oficial en Facebook">
            <img id="facebook_img" :src="require('@/assets/images/facebook.png')" alt=""/>
        </a>
  </li>
  <li class="list-inline-item social-images" v-else-if="social_network == 'twitter'" @mouseleave="normal_icon()" @mouseover="hover_icon()">
        <a href="https://twitter.com/UNColombia" target="_blank" title="Cuenta oficial en Twitter"><img id="twitter_img" :src="require('@/assets/images/twitter.png')" alt=""/></a>
  </li>
  <li class="list-inline-item social-images" v-else-if="social_network == 'youtube'" @mouseleave="normal_icon()" @mouseover="hover_icon()">
        <a href="https://www.youtube.com/channel/UCnE6Zj2llVxcvL5I38B0Ceg" target="_blank" title="Canal oficial de Youtube"><img id="youtube_img" :src="require('@/assets/images/youtube.png')" alt=""/></a>  
  </li>
  <li class="list-inline-item social-images" v-else-if="social_network == 'rss'" @mouseleave="normal_icon()" @mouseover="hover_icon()">
      <a href="http://agenciadenoticias.unal.edu.co/nc/sus/type/rss2.html" target="_blank" title="Suscripción a canales de información RSS"><img id="rss_img" :src="require('@/assets/images/rss.png')" alt=""/></a>
  </li>
</template>

<script lang="ts">
export default {
  name: "social_link",
  props: {
    social_network: String,
  },
  methods:{
      normal_icon: function () {
          if(this.social_network == 'facebook'){
                document.getElementById("facebook_img").src = require('@/assets/images/facebook.png');
                }
              else if(this.social_network == 'twitter'){
                 document.getElementById("twitter_img").src = require('@/assets/images/twitter.png');
                }
              else if(this.social_network == 'youtube'){
                 document.getElementById("youtube_img").src = require('@/assets/images/youtube.png');
                }
              else if(this.social_network == 'rss'){
                 document.getElementById("rss_img").src = require('@/assets/images/rss.png');
                }
      } 
      ,
    hover_icon: function () {
      if(this.social_network == 'facebook'){
                document.getElementById("facebook_img").src = require('@/assets/images/facebook_hover.png');
                }
              else if(this.social_network == 'twitter'){
                 document.getElementById("twitter_img").src = require('@/assets/images/twitter_hover.png');
                }
              else if(this.social_network == 'youtube'){
                 document.getElementById("youtube_img").src = require('@/assets/images/youtube_hover.png');
                }
              else if(this.social_network == 'rss'){
                 document.getElementById("rss_img").src = require('@/assets/images/rss_hover.png');
                }
    }
  }
};
</script>

<style scoped>
.social-images {
  border: none;
  background-color: #666;
  margin-left: -4%;
  margin-top: 2%;
}
</style>