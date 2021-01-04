<template>
  <div class="row col-md-4 footer-info col-lg-4 col-sm-12 col-xs-4">
        <ul class=" col-md-6 col-sm border-footer flex-column nav col-sm-12 nav-1">
          <li class="item text"><b>Contacto de página web:</b></li>
          <li class="item text">  Dirección ......</li>
          <li class="item text">Edificio ......</li>
          <li class="item text"> Bogotá D.C. , Colombia</li>
          <li class="item text">(+57 1) 316 5000 Ext.</li>
        </ul>
  
        <ul class=" col-md-6 col-sm flex-column nav nav-2">
          <li class="item text">&copy; Copyright 2014</li>
          <li class="item text">Algunos derechos reservados.</li>
          <li class="item text"> <a
            title="Comuníquese con el administrador de este sitio web"
            href="mailto:EMAIL@unal.edu.co"
            class="link"
            >EMAIL@unal.edu.co</a
          ></li>
          <li class="item text"><a href="index.php#" class="link">Acerca de este sitio web</a></li>
          <li class="item text">Actualización: 15/12/20</li>
        </ul>
      </div>
   

  <div class="col-md-2 col-lg-2 col-sm-2 col-xs-12  border-footer">
    <div class="row">
      <div class="col-md-6">
        <a class="col-xs-6 col-sm-12" href="http://www.orgulloun.unal.edu.co">
          <img
            class="hidden-print img-fluid"
            alt="Orgullo UN"
            :src="require('@/assets/images/log_orgullo.png')"/>
        </a>
        <a
          class="col-xs-6 col-sm-12 imgAgencia"
          href="http://www.agenciadenoticias.unal.edu.co/inicio.html"
        >
          <img
            class="hidden-print img-fluid"
            alt="Agencia de noticias"
            :src="require('@/assets/images/log_agenc.png')"
          />
        </a>
      </div>

      <div class="col-md-6 col-sm-12">
          <a class="col-xs-6 col-sm-12" href="https://www.sivirtual.gov.co/memoficha-entidad/-/entidad/T0356">
          <img
            class="hidden-print img-fluid"
            alt="Trámites en línea"
            :src="require('@/assets/images/log_gobiern.png')"/>
        </a>
        <a
          class="col-xs-6 col-sm-12 imgAgencia"
          href="http://www.contaduria.gov.co/"
        >
          <img
            class="hidden-print img-fluid"
            alt="Contaduría General de la República"
            :src="require('@/assets/images/log_contra.png')"
          />
        </a>

      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "nav-2",
};
</script>

<style scoped>


@media(max-width: 600px){
  .nav-1{
    width: 49%;
    float: left;
    margin-left: 5%; 
  }

  .nav-2{
    width: 42%;
    float: right;
    margin-left: 4%;
  }
}

.text {
  font-size: 0.8em;
  color:#ddd;
}

.border-footer{
  border-left: solid 2px #555;
}

.item {
  background: transparent;
  align-items: left;
  list-style: none;
  text-align: left;
}
.link{
  color: white;
  font-size: 0.8em;
}

</style>