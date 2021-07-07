<template>
        <div class="row">
                <div class="col-md-8 offset-md-2">
                        <button @click="getData">Chec-Uribe</button>
                        <div id="graphContainer"></div>
                        <div class="custom-table">
                                <table class="display table-bordered table-hover table">
                                        <thead>
                                                <tr>
                                                        <th>Año</th>
                                                        <th>Mes</th>
                                                        <th colspan="2" class="text-center">IA</th>
                                                </tr>
                                        </thead>
                                        <tbody>
                                                <tr v-for="(data, index) in tableData" :key="index">
                                                        <td>{{ data.year }}</td>
                                                        <td>{{ data.month }}</td>
                                                        <td :class="data.color">{{ data.value }}</td>
                                                        <td :class="data.color">{{ data.clase }}</td>
                                                </tr>
                                        </tbody>
                                </table>
                        </div>
                </div>
        </div>
</template>

<script>
import axios from "axios"
import Highcharts from 'highcharts'

export default {
        name: 'Aridez',
        data(){
                return {
                        tableData:[],
                }
        },
        methods:{
                async getData(){
                        const request = await axios.
                        post('http://cdiac.manizales.unal.edu.co/etl-cdiac/api/apiIndicators/getIAridezByStation/21/2017/2020')
                        const aridez = request.data.aridez 
                        const clase = request.data.resultado 
                        const colorsclas = {
                                'Altos excedentes':'altos-excedentes',
                                'Excedentes': 'excedentes',
                                'Moderado a excedentes': 'moderado-excedentes',
                                'Moderado': 'moderado',
                                'Moderado a deficitario': 'moderado-deficitario',
                                'Deficitario': 'deficitario',
                                'Altamente deficitario': 'altamente-deficitario'
                        }
                        const graphcolor = {
                                'Altos excedentes':'#20548e',
                                'Excedentes': '#01b1ec',
                                'Moderado a excedentes': '#3ea434',
                                'Moderado': '#f2e72d',
                                'Moderado a deficitario': '#f2e72d',
                                'Deficitario': '#e98d08',
                                'Altamente deficitario': '#c60c0f'
                        }
                        let series = [{data:[]}]
                        let categories = []
                        for(let i = 0; i < request.data.aridez.length;i++){ 
                                this.tableData.push({ 
                                        'year': aridez[i].year,
                                        'month': aridez[i].month,
                                        'value': (aridez[i].value != null)?aridez[i].value.toFixed(2):'',
                                        'clase': clase[i].value,
                                        'color': colorsclas[clase[i].value]
                                })        
                                series[0].data.push({
                                        name: aridez[i].year+'-'+aridez[i].month,
                                        color: graphcolor[clase[i].value],
                                        y: aridez[i].value
                                })        
                                categories.push(aridez[i].year+'-'+aridez[i].month)
                        }
                        console.log(categories)        
                        this.initgraph('column', 'Estacion Chec-Uribe', 'xTitle', 'yTitle', series, categories)
                },
                initgraph(graph_type, graphTitle, xTitle, yTitle, series, categories){
                        Highcharts.chart("graphContainer", {
                                chart: {
                                        type: graph_type,
                                },
                                rangeSelector: {
                                        buttons: [
                                                {
                                                type: "day",
                                                count: 3,
                                                text: "3d",
                                                },
                                                {
                                                type: "week",
                                                count: 1,
                                                text: "1w",
                                                },
                                                {
                                                type: "month",
                                                count: 1,
                                                text: "1m",
                                                },
                                                {
                                                type: "month",
                                                count: 6,
                                                text: "6m",
                                                },
                                                {
                                                type: "year",
                                                count: 1,
                                                text: "1y",
                                                },
                                                {
                                                type: "all",
                                                text: "All",
                                                },
                                        ],
                                        selected: 3,
                                },
                                title: {
                                        text: graphTitle,
                                },
                                xAxis: {
                                        title: {
                                        text: xTitle,
                                        },
                                        categories: categories,
                                },
                                yAxis: {
                                        title: {
                                        text: yTitle,
                                        },
                                },
                                series: series,
                        })
                }       


        } 
}
</script>

<style>
.custom-table{
        height: 460px;        
        overflow: scroll; 
}

.altos-excedentes{
        background-color: #20548e;
        color: white;
}

.excedentes{
        background-color: #01b1ec;
        color: white;
}

.moderado-excedentes{
        background-color: #3ea434;
        color: white;
}

.moderado{
        background-color: #94c22e;
        color: white;
}

.moderado-deficitario{
        background-color: #f2e72d;
        color: white;
}

.deficitario{
        background-color: #e98d08;
        color: white;

}

.altamente-deficitario{
        background-color: #c60c0f;
        color: white;
}
</style>
