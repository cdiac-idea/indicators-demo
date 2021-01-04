<template>
 <div class="container-fluid">
    <services-sidebar></services-sidebar>
     <head-template></head-template>
    <div class="app"> 
      <router-view />
    </div>
  </div>
      <foot-template></foot-template>
</template>

<script>
import footVue from './components/template_unal/foot.vue'
import headVue from './components/template_unal/head.vue'
import sidebarVue from './components/template_unal/head/sidebar.vue'
export default {
  name:  'App',
  components:{
    'head-template' : headVue,
    'foot-template' : footVue,
    'services-sidebar' : sidebarVue
  }
}
</script>

<style>



@font-face {
  font-family: "Ancizar sans";
  font-weight: bold;
  font-style: italic;
  src: url("assets/fonts/ancizarsans_bold_italic-webfont.eot"),
    url("assets/fonts/ancizarsans_bold_italic-webfont.eot?#iefix")
      format("embedded-opentype"),
    url("assets/fonts/ancizarsans_bold_italic-webfont.woff") format("woff"),
    url("assets/fonts/ancizarsans_bold_italic-webfont.ttf") format("truetype"),
    url("assets/fonts/ancizarsans_bold_italic-webfont.svg#ancizar_sansbold_italic")
      format("svg");
}

@font-face {
  font-family: "Ancizar sans";
  font-weight: bold;
  font-style: normal;
  src: url("assets/fonts/ancizarsans_bold-webfont.eot"),
    url("assets/fonts/ancizarsans_bold-webfont.eot?#iefix")
      format("embedded-opentype"),
    url("assets/fonts/ancizarsans_bold-webfont.woff") format("woff"),
    url("assets/fonts/ancizarsans_bold-webfont.ttf") format("truetype"),
    url("assets/fonts/ancizarsans_bold-webfont.svg#ancizar_sansbold_italic")
      format("svg");
}

@font-face {
  font-family: "Ancizar sans";
  font-weight: normal;
  font-style: italic;
  src: url("assets/fonts/ancizarsans_italic-webfont.eot"),
    url("assets/fonts/ancizarsans_italic-webfont.eot?#iefix")
      format("embedded-opentype"),
    url("assets/fonts/ancizarsans_italic-webfont.woff") format("woff"),
    url("assets/fonts/ancizarsans_italic-webfont.ttf") format("truetype"),
    url("assets/fonts/ancizarsans_italic-webfont.svg#ancizar_sansbold_italic")
      format("svg");
}

@font-face {
  font-family: "Ancizar sans";
  font-weight: normal;
  font-style: normal;
  src: url("assets/fonts/ancizarsans_regular-webfont.eot"),
    url("assets/fonts/ancizarsans_regular-webfont.eot?#iefix")
      format("embedded-opentype"),
    url("assets/fonts/ancizarsans_regular-webfont.woff") format("woff"),
    url("assets/fonts/ancizarsans_regular-webfont.ttf") format("truetype"),
    url("assets/fonts/ancizarsans_regular-webfont.svg#ancizar_sansbold_italic")
      format("svg");
}

@font-face {
  font-family: "Ancizar serif";
  font-weight: bold;
  font-style: italic;
  src: url("assets/fonts/ancizarserif_bold_italic-webfont.eot"),
    url("assets/fonts/ancizarserif_bold_italic-webfont.eot?#iefix")
      format("embedded-opentype"),
    url("assets/fonts/ancizarserif_bold_italic-webfont.woff") format("woff"),
    url("assets/fonts/ancizarserif_bold_italic-webfont.ttf") format("truetype"),
    url("assets/fonts/ancizarserif_bold_italic-webfont.svg#ancizar_sansbold_italic")
      format("svg");
}

@font-face {
  font-family: "Ancizar serif";
  font-weight: bold;
  font-style: normal;
  src: url("assets/fonts/ancizarserif_bold-webfont.eot"),
    url("assets/fonts/ancizarserif_bold-webfont.eot?#iefix")
      format("embedded-opentype"),
    url("assets/fonts/ancizarserif_bold-webfont.woff") format("woff"),
    url("assets/fonts/ancizarserif_bold-webfont.ttf") format("truetype"),
    url("assets/fonts/ancizarserif_bold-webfont.svg#ancizar_sansbold_italic")
      format("svg");
}

@font-face {
  font-family: "Ancizar serif";
  font-weight: normal;
  font-style: italic;
  src: url("assets/fonts/ancizarserif_italic-webfont.eot"),
    url("assets/fonts/ancizarserif_italic-webfont.eot?#iefix")
      format("embedded-opentype"),
    url("assets/fonts/ancizarserif_italic-webfont.woff") format("woff"),
    url("assets/fonts/ancizarserif_italic-webfont.ttf") format("truetype"),
    url("assets/fonts/ancizarserif_italic-webfont.svg#ancizar_sansbold_italic")
      format("svg");
}

@font-face {
  font-family: "Ancizar serif";
  font-weight: normal;
  font-style: normal;
  src: url("assets/fonts/ancizarserif_regular-webfont.eot"),
    url("assets/fonts/ancizarserif_regular-webfont.eot?#iefix")
      format("embedded-opentype"),
    url("assets/fonts/ancizarserif_regular-webfont.woff") format("woff"),
    url("assets/fonts/ancizarserif_regular-webfont.ttf") format("truetype"),
    url("assets/fonts/ancizarserif_regular-webfont.svg#ancizar_sansbold_italic")
      format("svg");
}

#app {
  background-color: white !important;
  font-family: "Ancizar serif", Tahoma, Geneva, sans-serif !important;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-flex;
  display: -ms-flexbox;
  display: flex;
  min-height: 100vh;
  -webkit-box-direction: normal;
  -webkit-box-orient: vertical;
  -webkit-flex-direction: column;
  -moz-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  overflow-y: scroll;
}
</style>
