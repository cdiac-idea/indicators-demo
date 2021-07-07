<template>
        <button @click="getStationData(7,'Quebrada Olivares - El Popal')">Quebrada Olivares - El Popal.</button>
        <button @click="getStationData(193, 'Río Chinchiná - El Bosque')">Río Chinchiná - El Bosque</button>
        <button @click="getStationData(209,'Quebrada Guayabal - Recinto del pensamiento')">
                Quebrada Guayabal - Recinto del pensamiento
        </button>
        <div class="row">
                <div class="col-md-8 offset-md-2">
                        <div id="graphContainer">
                        </div>
                        <br>
                        <table class="display table-bordered table-hover table">
                                <thead>
                                        <tr>
                                                <th>Valor IRH</th>
                                                <th>Comentario</th>
                                        </tr>
                                </thead>
                                <tbody>
                                        <tr>
                                                <td>{{ this.irhData.irh }}</td>
                                                <td>{{ this.irhData.result }}</td>
                                        </tr>
                                </tbody>
                        </table>
                        <br>
                        <table class="display table-bordered table-hover table">
                                <thead>
                                        <tr>
                                                <th>Porcentaje de excedencia</th>
                                                <th>Caudal [l/s]</th>
                                        </tr>
                                </thead>
                                <tbody>
                                        <tr v-for="(data, index) in tableData" :key="index">
                                                <td>{{ data.perc }}%</td>
                                                <td>{{ data.val }}</td>
                                        </tr>
                                </tbody>
                        </table>
                </div>
        </div>        
</template>

<script>
import axios from 'axios'
import Highcharts from "highcharts";


export default {
        name: 'Home',
        components: {
        },
        data(){
                return {
                        serie:[{
                                name: "hola",
                                data:[]       
                        }],
                        loadData: true,
                        tableData: [],
                        irhData: {}
                }
        },
        methods:{
                async getStationData(station_id, station_name){
                        try{
                                await this.getIrhData(station_id)
                                await this.getDCData(station_name,station_id)
                        } catch(err){
                                console.log("this is the error: "+ err)
                        }
                },
                async getIrhData(station_id){
                        const data = await axios.
                                post('http://cdiac.manizales.unal.edu.co/etl-cdiac/api/apiIndicators/getIrhByStation/'+station_id);
                        const request = data.data
                        this.irhData.irh = request.irh.toFixed(2)
                        this.irhData.result = request.result
                },

                async getDCData(station_name, station_id){
                        const data = await axios.
                                post('http://cdiac.manizales.unal.edu.co/etl-cdiac/api/apiIndicators/getCurvDurationByStation/'
                                                +station_id)
                        const request = data.data
                        const perc = [1,5,10,20,30,40,50,60,70,75,80,85,90,95,99]
                        this.tableData=[]
                        perc.forEach((element,index) => {
                                this.tableData.push({'perc': element, 'val': request[0].qi[index]})
                                        })
                        let converted_values = []
                        request[1].qunico.forEach(element => {converted_values.push(parseFloat(element))}) 
                        let serie= [{
                                name: "",
                                data: converted_values       
                        }]
                        this.loadData = true
                        this.initgraph("line", "Curva de duración diaria para la estación "+station_name,
                                        "Porcentaje de excedencia [%]","Q[l/s]", serie)
                },
                initgraph(graph_type, graphTitle, xTitle, yTitle, series){
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
