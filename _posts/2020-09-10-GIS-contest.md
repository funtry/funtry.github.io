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
            center: [114, 30],
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
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=UQIbZ8RrepxcyoSARRWIrIxZNdSyt96f"></script>
</head>
<body>
    <div id="wuhan_people" style="width: 100%; height: 640px;"></div>
    <script type="text/javascript">
    var myMap = echarts.init(document.getElementById('wuhan_people'));

    myChart.showLoading();

$.get(ROOT_PATH + 'data/asset/geo/USA.json', function (usaJson) {
    myChart.hideLoading();

    echarts.registerMap('USA', usaJson, {
        Alaska: {              // 把阿拉斯加移到美国主大陆左下方
            left: -131,
            top: 25,
            width: 15
        },
        Hawaii: {
            left: -110,        // 夏威夷
            top: 26,
            width: 5
        },
        'Puerto Rico': {       // 波多黎各
            left: -76,
            top: 26,
            width: 2
        }
    });
    option = {
        title: {
            text: 'USA Population Estimates (2012)',
            subtext: 'Data from www.census.gov',
            sublink: 'http://www.census.gov/popest/data/datasets.html',
            left: 'right'
        },
        tooltip: {
            trigger: 'item',
            showDelay: 0,
            transitionDuration: 0.2,
            formatter: function (params) {
                var value = (params.value + '').split('.');
                value = value[0].replace(/(\d{1,3})(?=(?:\d{3})+(?!\d))/g, '$1,');
                return params.seriesName + '<br/>' + params.name + ': ' + value;
            }
        },
        visualMap: {
            left: 'right',
            min: 500000,
            max: 38000000,
            inRange: {
                color: ['#313695', '#4575b4', '#74add1', '#abd9e9', '#e0f3f8', '#ffffbf', '#fee090', '#fdae61', '#f46d43', '#d73027', '#a50026']
            },
            text: ['High', 'Low'],           // 文本，默认为数值文本
            calculable: true
        },
        toolbox: {
            show: true,
            //orient: 'vertical',
            left: 'left',
            top: 'top',
            feature: {
                dataView: {readOnly: false},
                restore: {},
                saveAsImage: {}
            }
        },
        series: [
            {
                name: 'USA PopEstimates',
                type: 'map',
                roam: true,
                map: 'USA',
                emphasis: {
                    label: {
                        show: true
                    }
                },
                // 文本位置修正
                textFixed: {
                    Alaska: [20, -20]
                },
                data:[
                    {name: 'Alabama', value: 4822023},
                    {name: 'Alaska', value: 731449},
                    {name: 'Arizona', value: 6553255},
                    {name: 'Arkansas', value: 2949131},
                    {name: 'California', value: 38041430},
                    {name: 'Colorado', value: 5187582},
                    {name: 'Connecticut', value: 3590347},
                    {name: 'Delaware', value: 917092},
                    {name: 'District of Columbia', value: 632323},
                    {name: 'Florida', value: 19317568},
                    {name: 'Georgia', value: 9919945},
                    {name: 'Hawaii', value: 1392313},
                    {name: 'Idaho', value: 1595728},
                    {name: 'Illinois', value: 12875255},
                    {name: 'Indiana', value: 6537334},
                    {name: 'Iowa', value: 3074186},
                    {name: 'Kansas', value: 2885905},
                    {name: 'Kentucky', value: 4380415},
                    {name: 'Louisiana', value: 4601893},
                    {name: 'Maine', value: 1329192},
                    {name: 'Maryland', value: 5884563},
                    {name: 'Massachusetts', value: 6646144},
                    {name: 'Michigan', value: 9883360},
                    {name: 'Minnesota', value: 5379139},
                    {name: 'Mississippi', value: 2984926},
                    {name: 'Missouri', value: 6021988},
                    {name: 'Montana', value: 1005141},
                    {name: 'Nebraska', value: 1855525},
                    {name: 'Nevada', value: 2758931},
                    {name: 'New Hampshire', value: 1320718},
                    {name: 'New Jersey', value: 8864590},
                    {name: 'New Mexico', value: 2085538},
                    {name: 'New York', value: 19570261},
                    {name: 'North Carolina', value: 9752073},
                    {name: 'North Dakota', value: 699628},
                    {name: 'Ohio', value: 11544225},
                    {name: 'Oklahoma', value: 3814820},
                    {name: 'Oregon', value: 3899353},
                    {name: 'Pennsylvania', value: 12763536},
                    {name: 'Rhode Island', value: 1050292},
                    {name: 'South Carolina', value: 4723723},
                    {name: 'South Dakota', value: 833354},
                    {name: 'Tennessee', value: 6456243},
                    {name: 'Texas', value: 26059203},
                    {name: 'Utah', value: 2855287},
                    {name: 'Vermont', value: 626011},
                    {name: 'Virginia', value: 8185867},
                    {name: 'Washington', value: 6897012},
                    {name: 'West Virginia', value: 1855413},
                    {name: 'Wisconsin', value: 5726398},
                    {name: 'Wyoming', value: 576412},
                    {name: 'Puerto Rico', value: 3667084}
                ]
            }
        ]
    };

    myChart.setOption(option);
});

    myMap.setOption(option);
    </script>
</body>

</html>
