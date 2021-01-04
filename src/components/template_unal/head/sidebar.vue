<template>
  <div id="wrapper" class="d-none-sm">
    <nav id="sidebar"  class="d-none-sm">
      <ul>
          <service-link type="email"></service-link>
          <service-link type="dninfoa"></service-link>
          <service-link type="library"></service-link>
          <service-link type="call"></service-link>
          <service-link type="identity"></service-link>
      </ul>
    </nav>
    <div class="button-container">
      <a
        id="activate-button"
        @click="active()"
        @mouseover="hover('over')"
        @mouseout="hover('out')"
      >
        <img
          id="img-services"
          :src="require('@/assets/images/backServices1.png')"
          alt=""
        />
      </a>
    </div>
  </div>
</template>

<script>
import service_linkVue from './sidebar/service_link.vue';
export default {
  name: "sidebar",
  components:{
      'service-link': service_linkVue 
  },
  methods: {
    active() {
      const element = document.getElementById("wrapper");
      element.classList.toggle("active");
      if (element.classList.value == "active") {
        document
          .getElementById("img-services")
          .setAttribute("src", require("@/assets/images/backServices2.png"));
      } else {
        document
          .getElementById("img-services")
          .setAttribute("src", require("@/assets/images/backServices1.png"));
      }
    },
    hover(state) {
      const element = document.getElementById("wrapper");
      if (state == "over") {
        if (element.classList.value == "active") {
          document
            .getElementById("img-services")
            .setAttribute("src", require("@/assets/images/backServices3.png"));
        } else {
          document
            .getElementById("img-services")
            .setAttribute("src", require("@/assets/images/backServices4.png"));
        }
      } else {
        if (element.classList.value == "active") {
          document
            .getElementById("img-services")
            .setAttribute("src", require("@/assets/images/backServices2.png"));
        } else {
          document
            .getElementById("img-services")
            .setAttribute("src", require("@/assets/images/backServices1.png"));
        }
      }
    },
  },
};
</script>

<style scoped>
#wrapper {
  min-width: 30%;
  max-width: 30%;
  min-height: 100%;
  position: fixed;
  z-index: 3;
  margin-left: 99%;
  transition: all 0.4s;
}

#sidebar {
  background: #333;
  min-width: 30%;
  max-width: 30%;
  min-height: 100%;
  position: fixed;
  z-index: 3;
  color: white;
}

#wrapper.active {
  margin-left: 80%;
}

.button-container {
  margin-top: 100%;
}

#activate-button {
  cursor: pointer;
  height: 20%;
  left: -8.5%;
  position: absolute;
  top: 24%;
  width: 100%;
  background-color: #94b43b;
  position: absolute;
  border: none;
}

#activate-button:hover {
  background: color;
  cursor: pointer;
}

#img-services {
  height: 126px;
  background-position: 0 0;
  left: 0px;
  position: absolute;
  width: 34px;
  top: -1px;
}
</style>