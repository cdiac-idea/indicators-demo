<template>
<li class="service-link" v-if="type == 'email'"><a target="_blank" href="http://correo.unal.edu.co"><img :src="require('@/assets/images/icnServEmail.png')" width="32" height="32" alt="Correo Electrónico">Correo Electrónico </a></li>    

<li class="service-link" v-if="type == 'dninfoa'"><a target="_blank" href="https://dninfoa.unal.edu.co"><img :src="require('@/assets/images/icnServSia.png')" width="32" height="32" alt="Dirección Nacional de Información Académica">DNINFOA - SIA</a></li>    

<li class="service-link" v-if="type == 'library'"><a target="_blank" href="http://bibliotecas.unal.edu.co"><img :src="require('@/assets/images/icnServLibrary.png')" width="32" height="32" alt="Biblioteca">Bibliotecas</a></li>    

<li class="service-link" v-if="type == 'call'"><a target="_blank" href="http://personal.unal.edu.co"><img :src="require('@/assets/images/icnServCall.png')" width="32" height="32" alt="Convocatorias">Convocatorias</a></li>    

<li class="service-link" v-if="type == 'identity'"><a target="_blank" href="http://identidad.unal.edu.co"><img :src="require('@/assets/images/icnServIdentidad.png')" width="32" height="32" alt="Indentidad U.N.">Identidad U.N.</a></li>    

</template>

<script>
export default {
   name: 'service_link',
   props:{
       type: String
   } 
}
</script>

<style scoped>
   .service-link{
      list-style: none;
   } 
   li:first-child {
    border-top: 0;
}
li {
    border-bottom: 1px solid #222;
    border-top: 1px solid #444;
    width: 100%;
    padding: 3% 0 ;
    margin-left: -8%;
    font-size: 0.8rem;
}

li:hover{
    background-color: #444;
}

img{
    margin-left: 2%;
    margin-right: 2%;
}


a, a:hover{
    color: white;
}
</style>