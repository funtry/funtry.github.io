---
show_in_nav: false
layout: post
title: "GIS大赛"
author: "Fangli ZHANG"
categories: thesis
notshow: 1
tags: [contest, undergraduate]
image:
feature: contest/0-0.png
teaser: contest/0-0.png
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
地信21701 陈冬如

地信21702 李晓文

2020级硕士 宋卓敏

<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="../echarts/echarts-master/dist/echarts.js"></script>
    <script src="../echarts/echarts-master/dist/extension/bmap.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=UQIbZ8RrepxcyoSARRWIrIxZNdSyt96f"></script>
</head>
<body>
    <div id="main1" style="width: 100%; height: 500px;"></div>
    <script type="text/javascript">
        var map = new BMap.Map("main1");
        var point = new BMap.Point(116.404, 39.915);
        map.centerAndZoom(point, 15);
    </script>
</body>
</html>

## 2020614 确定参赛主题
武汉人物

<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="../echarts/echarts-master/dist/echarts.js"></script>
    <script src="../echarts/echarts-master/dist/extension/bmap.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=UQIbZ8RrepxcyoSARRWIrIxZNdSyt96f"></script>
</head>
<body>
    <div id="main" style="width: 100%; height: 500px;"></div>
    <script type="text/javascript">
            echarts.init(document.getElementById('main')).setOption({
                backgroundColor: '#000',
                title: {
                        text: '全国主要城市空气质量 - 百度地图',
                        subtext: 'data from PM25.in',
                        sublink: 'http://www.pm25.in',
                        left: 'center'
                    },
                    tooltip : {
                        trigger: 'item'
                    },
                    bmap: {
                        center: [104.114129, 37.550339],
                        zoom: 5,
                        roam: true,
                        mapStyle: {
                            styleJson: [{
                                'featureType': 'water',
                                'elementType': 'all',
                                'stylers': {
                                    'color': '#d1d1d1'
                                }
                            }, {
                                'featureType': 'land',
                                'elementType': 'all',
                                'stylers': {
                                    'color': '#f3f3f3'
                                }
                            }, {
                                'featureType': 'railway',
                                'elementType': 'all',
                                'stylers': {
                                    'visibility': 'off'
                                }
                            }, {
                                'featureType': 'highway',
                                'elementType': 'all',
                                'stylers': {
                                    'color': '#fdfdfd'
                                }
                            }, {
                                'featureType': 'highway',
                                'elementType': 'labels',
                                'stylers': {
                                    'visibility': 'off'
                                }
                            }, {
                                'featureType': 'arterial',
                                'elementType': 'geometry',
                                'stylers': {
                                    'color': '#fefefe'
                                }
                            }, {
                                'featureType': 'arterial',
                                'elementType': 'geometry.fill',
                                'stylers': {
                                    'color': '#fefefe'
                                }
                            }, {
                                'featureType': 'poi',
                                'elementType': 'all',
                                'stylers': {
                                    'visibility': 'off'
                                }
                            }, {
                                'featureType': 'green',
                                'elementType': 'all',
                                'stylers': {
                                    'visibility': 'off'
                                }
                            }, {
                                'featureType': 'subway',
                                'elementType': 'all',
                                'stylers': {
                                    'visibility': 'off'
                                }
                            }, {
                                'featureType': 'manmade',
                                'elementType': 'all',
                                'stylers': {
                                    'color': '#d1d1d1'
                                }
                            }, {
                                'featureType': 'local',
                                'elementType': 'all',
                                'stylers': {
                                    'color': '#d1d1d1'
                                }
                            }, {
                                'featureType': 'arterial',
                                'elementType': 'labels',
                                'stylers': {
                                    'visibility': 'off'
                                }
                            }, {
                                'featureType': 'boundary',
                                'elementType': 'all',
                                'stylers': {
                                    'color': '#fefefe'
                                }
                            }, {
                                'featureType': 'building',
                                'elementType': 'all',
                                'stylers': {
                                    'color': '#d1d1d1'
                                }
                            }, {
                                'featureType': 'label',
                                'elementType': 'labels.text.fill',
                                'stylers': {
                                    'color': '#999999'
                                }
                            }]
                        }
                    },
                    series : []
            });
    </script>
</body>
</html>
