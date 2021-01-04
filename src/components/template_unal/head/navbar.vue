<template>
  <div class="row background">
    <div class="col-md-2 col-sm-12">
      <img class="higher" :src="require('@/assets/images/escudoUnal.png')" />
      <img class="lower" :src="require('@/assets/images/sealBck.png')" />
    </div>
    <div class="col-md-2 col-sm-12">
      <h4 class="url-text">
        <a
          href="http://cdiac.manizales.unal.edu.co/"
          target="_blank"
          class="text-color text-white"
          >cdiac.manizales.unal.edu.co/</a
        >
      </h4>
    </div>
    <div class="col-md-2 offset-md-4 col-sm-12">
      <div class="row">
        <searcher></searcher>        
      </div>
      <div class="row">
       <sedes></sedes> 
    </div>
    </div>
    <div class="col-md-1 d-none d-sm-block">
      <a href="http://www.corpocaldas.gov.co/" target="_blank"
        ><img
          class=""
          :src="require('@/assets/images/logo_corpocaldas.png')"
          width="100"
          height="80"
          alt=""
      /></a>
    </div>
    <div class="col-md-1 col-sm-4 d-none d-sm-block">
      <img
        class="colombia-shield"
        :src="require('@/assets/images/sealColombia.png')"
        width="80"
        height="80"
      />
    </div>
  </div>
</template>

<script>
import searcherVue from './navbar/searcher.vue';
import sedesVue from './navbar/sedes.vue';
export default {
  name: "navbar",
  components:{
    'sedes' : sedesVue,
    'searcher' : searcherVue
  }
};
</script>

<style scoped>
@media (max-width: 600px){
	.background {
  background-color: #5b5b5b;
	}

.higher {
  z-index: 1;
  height: 70%;
  margin-left: -4%;
}

.lower {
  display: none;
}

.url-text {
  margin-top: -10%;
}
.colombia-shield {
  margin-top: 13%;
}
}
@media (min-width: 601px){
.background {
  background-color: #5b5b5b;
}
.higher {
  position: absolute;
  z-index: 1;
  margin-top: -15%;
}

.lower {
  position: absolute;
  z-index: 0;
  margin-top: -15%;
}

.url-text {
  margin-top: 15%;
  margin-left: 8%;
  margin-bottom: 15%;
}
.colombia-shield {
  margin-top: 13%;
}
}
</style>