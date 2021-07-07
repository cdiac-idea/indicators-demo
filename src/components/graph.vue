<template>
        <div id="graphContainer" class="offset-md-1 col-md-10"></div>
</template>
<script>
smport Highcharts from "highcharts";

export default {
        name: "graph",
        props: [
                "graphTitle",
                "series",
                "graphType",
                "xTitle",
                "yTitle",
                "graph_type",
                "loadData"
        ],
        data: () => {},
        updated() {
                
        },
        mounted(){
                if(this.loadData){
                        this.initgraph()
                }
        },
        methods:{
                initgraph(){
                        Highcharts.chart("graphContainer", {
                                chart: {
                                        type: this.graph_type,
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
                                        text: this.graphTitle,
                                },
                                xAxis: {
                                        title: {
                                        text: this.xTitle,
                                        },
                                },
                                yAxis: {
                                        title: {
                                        text: this.yTitle,
                                        },
                                },
                                series: this.series,
                        })
                }
        }
}
</script>

<style>
</style>
