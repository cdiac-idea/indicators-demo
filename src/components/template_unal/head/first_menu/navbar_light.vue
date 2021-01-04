<template>
  <ul>
    <li class="item_Aspirantes">
      <a class="profiles" href="">Aspirantes</a>
    </li>
    <li class="item_Estudiantes">
      <a class="profiles" href="">Estudiantes</a>
    </li>
    <li class="item_Egresados">
      <a class="profiles" href="">Egresados</a>
    </li>
    <li class="item_Docentes"><a class="profiles" href="">Docentes</a></li>
    <li class="item_Administrativos">
      <a class="profiles" href="">Administrativos</a>
    </li>
  </ul>
</template>

<script lang="typescript">
export default {
  name: "navbar-light",
};
</script>

<style scoped>
.item_Estudiantes:hover,
.item_Estudiantes.active,
.item_Estudiantes.active:hover {
  background: #ffb600;
  border-right: 1px solid #996d00 !important;
}

.item_Aspirantes:hover,
.item_Aspirantes.active,
.item_Aspirantes.active:hover {
  background: #fd0;
  border-right: 1px solid #998400 !important;
}

.item_Egresados:hover,
.item_Egresados.active,
.item_Egresados.active:hover {
  background: #51b8be;
  border-right: 1px solid #306e71 !important;
}

.item_Administrativos:hover,
.item_Administrativos.active,
.item_Administrativos.active:hover {
  background: #ff3d30;
  border-right: 1px solid #99241d !important;
}

.item_Docentes:hover,
.item_Docentes.active,
.item_Docentes.active:hover {
  background: #008c95;
  border-right: 1px solid #005459 !important;
}

ul {
  height: auto !important;
  width: 100%;

  border-color: #222;
  padding: 0;
}

li {
  border-right: 1px solid #3d3d3d;
  height: 30px;
  padding-top: 6px;
  padding: 6px;
  -webkit-transition: background 0.5s;
  -moz-transition: background 0.5s;
  -o-transition: background 0.5s;
  transition: background 0.5s;
  display: inline;
}

li:first-child {
  border-left: 1px solid #333;
}

.profiles {
  line-height: inherit;
  color: white;
  padding: 0.2px 0, 6px;
  font-size: 0.8em;
  line-height: 1.429em;
  text-shadow: none;
  background: none;
}
</style>