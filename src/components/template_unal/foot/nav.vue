<template>
  <div class="col-md-3 col-sm-12 ">
    <div class="row">
        <ul class="col-md-6 d-flex flex-column nav-1">
          <li class="item">
            <a
              class="text-white text"
              href="http://www.legal.unal.edu.co"
              target="_top"
              >Régimen Legal</a
            >
          </li>

          <li class="item">
            <a
              class="text-white text"
              href="http://contratacion.unal.edu.co"
              target="_top"
              >Contratación</a
            >
          </li>

          <li class="item">
            <a
              class="text-white text"
              href="http://rendiciondecuentas.unal.edu.co/"
              target="_top"
              >Rendición de cuentas</a
            >
          </li>

          <li class="item ">
            <a
              class="text-white text"
              href="http://www.pagovirtual.unal.edu.co/"
              target="_top"
              >Pago Virtual</a
            >
          </li>

          <li class="item">
            <a
              class="text-white text"
              href="http://siga.unal.edu.co"
              target="_top"
              >Calidad</a
            >
          </li>
        </ul>
        <ul class="col-md-6 d-flex flex-column col-sm-6 nav-2">
          <li class="item nav-item">
            <a
              class="text-white text"
              href="http://personal.unal.edu.co"
              target="_top"
              >Talento humano</a
            >
          </li>
          <li class="item nav-item">
            <a
              class="text-white text"
              href="http://personal.unal.edu.co"
              target="_top"
              >Ofertas de empleo</a
            >
          </li>
          <li class="item nav-item">
            <a
              class="text-white text"
              href="http://docentes.unal.edu.co/concurso-profesoral/"
              target="_top"
              >Concurso docente</a
            >
          </li>
          <li class="item nav-item">
            <a
              class="text-white text"
              href="http://controlinterno.unal.edu.co/"
              target="_top"
              >Control interno</a
            >
          </li>
          <li class="item nav-item">
            <a
              class="text-white text"
              href="http://unal.edu.co/buzon-de-notificaciones/"
              target="_self"
              >Buzón de notificaciones</a
            >
          </li>
        </ul>
    </div>
  </div>
  <div class="col-md-3 col-sm-12">
    <div class="row">
        <ul class="col-md-6 d-flex flex-column nav-2">
          <li class="item">
            <a
              class="text-white text"
              href="http://correo.unal.edu.co"
              target="_top"
              >Correo institucional</a
            >
          </li>
          <li class="item">
            <a
              class="text-white text"
              href="http://redessociales.unal.edu.co"
              target="_top"
              >Redes Sociales</a
            >
          </li>
          <li class="item">
            <a
              class="text-white text"
              href="http://unal.edu.co/quejas-y-reclamos/"
              target="_top"
              >Quejas y reclamos</a
            >
          </li>

          <li class="item">
            <a
            class="text-white text"
              href="http://unal.edu.co/encuesta/"
              target="_top"
              >Encuesta</a
            >
          </li>

          <li class="item">
            <a
              class="text-white text"
              href="http://www.onp.unal.edu.co"
              target="_top"
              >Estadísticas</a
            >
          </li>
        </ul>

        <ul class="col-md-6 d-inline-flex flex-column nav-2">
          <li class="item">
            <a class="text-white text" href="#" target="_top">Mapa del sitio</a>
          </li>
          <li class="item">
            <a class="text-white text" href="#" target="_top">FAQ</a>
          </li>
          <li class="item">
            <a
              class="text-white text"
              href="http://unal.edu.co/atencion-en-linea/"
              target="_top"
              >Atención en línea</a
            >
          </li>
          <li class="item">
            <a class="text-white text" href="#" target="_top">Contáctenos</a>
          </li>
          
          <li class="item">
            <a class="text-white text" href="#" target="_self">Glosario</a>
          </li>
        </ul>
  
    </div>
  </div>
</template>

<script>
export default {
  name: "nav",
};
</script>

<style scoped>
@media(max-width: 600px){
  .nav-1{
    width: 50%;
    float: left;
  
  }

  .nav-2{
    width: 50%;
    float: right;
  }
}

.text {
  font-size: 0.8em;
  color: white;
}

.item {
  float: left;
  background: transparent;
  align-items: left;
  list-style: none;
  text-align: left;
  margin-bottom: -4%;
}

</style>