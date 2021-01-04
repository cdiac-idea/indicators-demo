<template>
  <div>
    <first-menu></first-menu>
    <navbar-head></navbar-head>
  </div>
</template>

<script>
import first_menuVue from "./head/first_menu.vue";
import navbarVue from "./head/navbar.vue";

export default {
  name: "head",
  components: {
    "first-menu": first_menuVue,
    "navbar-head": navbarVue,

  },
};
</script>

<style scoped>
</style>