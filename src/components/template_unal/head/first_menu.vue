<template>
  <div class="row background">
      <div class="col-md-6">

      </div>
      <div class="col-md-6">
      <div class="row">
        <div class="col-md-7 offset-1"  id="navbar-light">
          <navbar-light></navbar-light>
      </div>
      <div class="col-md-3" id="social_links d-inline">
          <social-links></social-links>
         
      </div>
      <div class="col-md-0 float-left"  id="language d-inline">
           <language-menu></language-menu>
      </div>
      </div>
      </div>
      </div>

</template>

<script lang="ts">
import language_menuVue from './first_menu/language_menu.vue';
import navbar_lightVue from './first_menu/navbar_light.vue';
import social_linksVue from './first_menu/social_links.vue';
export default {
  name: "first_menu",
  components : {
      'navbar-light'  : navbar_lightVue,
      'social-links'  : social_linksVue,
      'language-menu' :language_menuVue

  }
};
</script>

<style scoped>

@media (max-width: 600px){
	.background {
    display: none;
	}

}

.background {
  background-color: #666;
  height: 30px;
}

#social_links{
  margin-left: 10%;
}

#language{
  font-size:  3em;
  margin-top: -1.7%;
}
</style>