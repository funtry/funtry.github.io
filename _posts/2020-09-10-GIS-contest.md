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
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hello, World</title>
<style type="text/css">
html{height:100%}
body{height:100%;margin:0px;padding:0px}
#container{height:100%}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=UQIbZ8RrepxcyoSARRWIrIxZNdSyt96f">
</script>
</head>

<body>
<div id="container"></div>
<script type="text/javascript">
var map = new BMap.Map("container");
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
    <script src="../echarts/echarts-gl-master/dist/echarts-gl.js"></script>
</head>
<body>
    <div id="main" style="width: 100%; height: 500px;"></div>
        <script>
            echarts.init(document.getElementById('main')).setOption({
                backgroundColor: '#000',
                globe: {
                    baseTexture: '../echarts/echarts-gl-master/test/asset/earth.jpg',
                    heightTexture: '../echarts/echarts-gl-master/test/asset/elev_bump_4k.jpg',

                    displacementScale: 0.1,

                    shading: 'realistic',
                    //shading: 'lambert',
                    displacementQuality: 'ultra',

                    environment: '../echarts/echarts-gl-master/test/asset/background.jpg',

                    light: {
                        ambient: {
                            intensity: 0.1
                        },

                        main: {
                            intensity: 1.5
                        },

                        ambientCubemap: {
                              texture: '../echarts/echarts-gl-master/test/asset/pisa.hdr',
                              exposure: 2,
                              diffuseIntensity: 0.1,
                              specularIntensity: 1
                        }
                    },

                    viewControl: {
                        autoRotate: true,
                        autoRotateSpeed: 1,
                        autoRotateAfterStill: 10,
                        targetCoord: [118.9616, 32.1124]
                    },

                    postEffect: {
                        enable: true,
                        SSAO: {
                              enable: true,
                              radius: 100
                        }
                    },

                    layers: [{
                        type: 'blend',
                        blendTo: 'emission',
                        texture: '../echarts/echarts-gl-master/test/asset/night.jpg'
                    }]
                    //
                    // , {
                    //     type: 'overlay',
                    //     texture: '../echarts/echarts-gl-master/test/asset/clouds.png',
                    //     shading: 'realistic',
                    //     distance: 6
                    // }
              },
              series: []
            });
    </script>
</body>
</html>
