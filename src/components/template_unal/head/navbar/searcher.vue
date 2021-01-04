<template>
  <div class="input-group mb-1 mt-3">
    <input
      type="text"
      class="form-control searcher-input"
      placeholder="Buscar en la Universidad"
      aria-label="Buscar en la universidad"
      aria-describedby="basic-addon1"
      list="search_options"
      v-model="search_text"
      @change="search_in_options()"
    />
    <datalist id="search_options">
      <option
        v-for="option in search_options"
        :key="option.id"
        :value="option.word"
      ></option>
    </datalist>
    <div class="input-group-append">
      <a class="btn searcher-btn" type="button" target="_blank" :href="url">
        <img
          :src="require('@/assets/images/search_logo.png')"
          width="18"
          height="18"
          alt=""
        />
      </a>
    </div>
  </div>
</template>

<script>
import searcher_option from "@/assets/js/searcher_options.js";

export default {
  name: "searcher",
  data: function () {
    return {
      search_options: [],
      search_text: "",
      url: "not found",
    };
  },
  mounted: function () {
    this.search_options = searcher_option;
  },
  methods: {
    search_in_options() {
      const index = this.search_options.indexOf(
        this.search_options.find((options) => options.word == this.search_text)
      );
      this.url = index != -1 ? (this.url = this.search_options[index].url): (this.url = "not found");
    },
  },
};
</script>

<style scoped>

@media (max-width: 600px){

}


.searcher-btn {
  background: #94b43b;
  padding: 0 0 0 0;
  height: 90%;
}
.searcher-input {
  height: 90%;
  background: #777;
  border: none;
}
.searcher-input:placeholder-shown {
  background: #777;
  color: white;
}

.searcher-input::placeholder {
  color: white;
  background: #777;
  font-size: 0.95rem;
}
</style>
    
