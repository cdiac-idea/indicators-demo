<template>
  <div class="footer container-fluid">
    <div class="row">
        <nav-foot></nav-foot>
        <nav-2-foot></nav-2-foot>
    </div>
  </div>
</template>

<script>
import nav2Vue from './foot/nav-2.vue';
import navVue from './foot/nav.vue';
export default {
    name: 'foot',
    components: {
        'nav-foot' : navVue,
        'nav-2-foot' : nav2Vue
    }
};
</script>

<style Scoped>

.footer{
  position: relative;
  left: 0;
  bottom: 0;
  width: 100%;
  height: auto;
  background-color: #5b5b5b;
  color: white;
  text-align: center;
  padding: 15px 0 10px 0;;
}
</style>