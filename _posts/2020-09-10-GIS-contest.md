---
show_in_nav: false
layout: post
title: "2020年第十二届全国高校GIS技能大赛"
author: "Fangli ZHANG"
categories: thesis
notshow: 1
tags: [contest, undergraduate]
image:
    feature: contest/GIS_contest_2020.png
    teaser: contest/GIS_contest_2020.png
    credit: javascript
    creditlink: ""
---

# 2020年第十二届全国高校GIS技能大赛

长江大学地球科学学院地理信息系

## 目录
{:.no_toc}
1. TOC
{:toc}

## 2020526 组建参赛队伍

<html>
<style type="text/css">
.anchorBL{
    display:none
}
</style>
<head>
    <meta charset="utf-8">
    <title>方小地</title>
    <script src="../echarts/echarts-master/dist/echarts.js"></script>
    <script src="../echarts/echarts-master/dist/extension/bmap.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=UQIbZ8RrepxcyoSARRWIrIxZNdSyt96f"></script>
</head>
<body>
    <div id="main" style="width: 100%; height: 960px;"></div>
    <script type="text/javascript">
    var myMap = echarts.init(document.getElementById('main'));

    var data = [
        {name: '陈冬如', value: 1},
        {name: '李晓文', value: 1},
        {name: '宋卓敏', value: 1},
        {name: '方小地', value: 1}
    ];

    var geoCoordMap = {
        '陈冬如':[125.19, 43.48],
        '李晓文':[116.87,38.3],
        '宋卓敏':[111.14125,37.525415],
        '方小地':[114.035351,30.538824]
    };

    var convertData = function (data) {
        var res = [];
        for (var i = 0; i < data.length; i++) {
            var geoCoord = geoCoordMap[data[i].name];
            if (geoCoord) {
                res.push({
                    name: data[i].name,
                    value: geoCoord.concat(data[i].value)
                });
            }
        }
        return res;
    };

    var option = {
        backgroundColor: '#ffffff',
        title: {
            text: '',
            subtext: '',
            sublink: '',
            left: 'center',
            textStyle: {
                color: '#ffffff'
            }
        },
        tooltip : {
            trigger: 'item',
            formatter: function(data) {
                return data.name;
            }
        },
        bmap: {
            center: [114, 31],
            zoom: 5,
            roam: true,
            mapStyle: {
                styleJson: [
                    {
                        "featureType": "water",
                        "elementType": "all",
                        "stylers": {
                            "color": "#b8cefa"
                        }
                    },
                    {
                        "featureType": "land",
                        "elementType": "all",
                        "stylers": {
                            "color": "#f3f3f3"
                        }
                    },
                    {
                        "featureType": "boundary",
                        "elementType": "geometry",
                        "stylers": {
                            "color": "#7f7f7f"
                        }
                    },
                    {
                        "featureType": "railway",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "highway",
                        "elementType": "geometry",
                        "stylers": {
                            "color": "#004981",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "highway",
                        "elementType": "geometry.fill",
                        "stylers": {
                            "color": "#005b96",
                            "lightness": 1,
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "highway",
                        "elementType": "labels",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "arterial",
                        "elementType": "geometry",
                        "stylers": {
                            "color": "#004981",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "arterial",
                        "elementType": "geometry.fill",
                        "stylers": {
                            "color": "#00508b",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "poi",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "green",
                        "elementType": "all",
                        "stylers": {
                            "color": "#056197",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "subway",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "manmade",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "local",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "arterial",
                        "elementType": "labels",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "building",
                        "elementType": "all",
                        "stylers": {
                            "color": "#1a5787",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "label",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    }
                ]
            }
        },
        series : [
            {
                name: '队员',
                type: 'effectScatter',
                coordinateSystem: 'bmap',
                data: convertData(data.slice(0, 3)),
                symbolSize: function (val) {
                    return val[2] *20;
                },
                encode: {
                    value: 2
                },
                showEffectOn: 'render',
                rippleEffect: {
                    brushType: 'stroke'
                },
                hoverAnimation: true,
                label: {
                    color: 'black',
                    formatter: '{b}',
                    position: 'top',
                    show: true
                },
                itemStyle: {
                    color: 'magenta',
                    shadowBlur: 10,
                    shadowColor: '#333'
                },
                zlevel: 1
            },
            {
                name: '指导',
                type: 'effectScatter',
                coordinateSystem: 'bmap',
                data: convertData(data.slice(3, 4)),
                symbolSize: function (val) {
                    return val[2] *12;
                },
                encode: {
                    value: 2
                },
                showEffectOn: 'render',
                rippleEffect: {
                    brushType: 'stroke'
                },
                hoverAnimation: true,
                label: {
                    color: 'black',
                    formatter: '{b}',
                    position: 'bottom',
                    show: true
                },
                itemStyle: {
                    color: 'blue',
                    shadowBlur: 10,
                    shadowColor: '#333'
                },
                zlevel: 1
            }
        ]
    };

    myMap.setOption(option);
    </script>
</body>
</html>


## 2020614 确定参赛主题
武汉人物

<html>
<style type="text/css">
.anchorBL{
    display:none
}
</style>
<head>
    <meta charset="utf-8">
    <title>武汉人物</title>
    <script src="../echarts/echarts-master/dist/echarts.js"></script>
    <script src="../echarts/echarts-master/dist/extension/bmap.js"></script>
    <script src="../echarts/echarts-master/map/js/china.js"></script>
    <script src="../echarts/echarts-master/map/js/province/hubei.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=UQIbZ8RrepxcyoSARRWIrIxZNdSyt96f"></script>
</head>
<body>
    <div id="wuhan_people" style="width: 100%; height: 640px;"></div>
    <script type="text/javascript">

    var data11 = [
            {name:"武汉市",value:"1"},
            {name:"荆州市",value:"0"},
            {name:"仙桃市",value:"0"},
            {name:"黄冈市",value:"0"},
            {name:"天门市",value:"0"},
            {name:"潜江市",value:"0"},
            {name:"咸宁市",value:"0"}
        ];

    $.getJSON('../echarts/echarts-master/map/json/province/hubei.json', function (data) {
        echarts.registerMap('hubei', data);
        var chart = echarts.init(document.getElementById('wuhan_people'));
        var option = {
            backgroundColor: '#404a59',
            title: {
                text: '武汉地图',
                color:"#fff"
            },
            visualMap: {
                show:false,
                left: 'right',
                categories: ['1',],
                inRange: {
                    color: ['#f46d43']
                },
                text:['High','Low'],
                calculable: true
            },
            series: [{
                type: 'map',
                map: 'hubei',
                data:data11,
                aspectScale:1,
                roam: true,
                label: {
                    show:true,
                    normal: {
                        show: true,
                        color:"#fff",
                    },
                    emphasis: {
                        show: true,
                        fontSize:16,
                        color:"#fff"

                    }
                },
                itemStyle: {
                    normal: {
                        areaColor: '#323c48',
                        borderColor: '#111'
                    },
                    emphasis: {
                        areaColor: '#f46d43'
                    }
                }

            }]
        };
        chart.setOption(option);
        chart.on('click', function(params){
            console.log(params);
            for(var i=0;i<data11.length;i++){
                data11[i].value="0";
                if(params.name == data11[i].name){
                    data11[i].value="1";
                }
            }
            chart.setOption(option);


        });
    });
    </script>
</body>

</html>
