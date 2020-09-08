---
show_in_nav: false
layout: post
title: "2020-2021学年第1学期地理信息科学概论课程"
author: "Fangli ZHANG"
categories: course
notshow: 1
tags: [course, undergraduate]
image:
  feature: course/GIS-Intro-2020/GIS-Intro-0.jpg
  teaser: course/GIS-Intro-2020/GIS-Intro-0.jpg
  credit: javascript
  creditlink: ""
---

# 2020-2021学年第1学期地理信息科学概论课程

长江大学地球科学学院地信系

## 目录
{:.no_toc}
1. TOC
{:toc}


## 方小地和他的小伙伴们

地信21901 33人

地信21902 32人


## 课程Q&A
### 作业一：中国地理信息产业协会
<html>
    <head>
    <style>
        #chartdiv {
            width: 100%;
            height: 480px;
        }
        .map-marker {
            margin-left: -5px;
            margin-top: -5px;
        }
        .map-marker.map-clickable {
            cursor: pointer;
        }
        .pulse {
            width: 0px;
            height: 0px;
            border: 0px solid #f7f14c;
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;
            background-color: #716f42;
            z-index: 10;
            position: absolute;
      }
      .map-marker .dot {
            border: 10px solid #FFFFFF;
            background: transparent;
            -webkit-border-radius: 100px;
            -moz-border-radius: 100px;
            border-radius: 100px;
            height: 40px;
            width: 40px;
            -webkit-animation: pulse 0.5s ease-out;
            -moz-animation: pulse 1s ease-out;
            animation: pulse 1.5s ease-out;
            -webkit-animation-iteration-count: infinite;
            -moz-animation-iteration-count: infinite;
            animation-iteration-count: infinite;
            position: absolute;
            top: -25px;
            left: -25px;
            z-index: 1;
            opacity: 0;
    }
    @-moz-keyframes pulse {
           0% {
              -moz-transform: scale(0);
              opacity: 0.0;
           }
           25% {
              -moz-transform: scale(0);
              opacity: 0.1;
           }
           50% {
              -moz-transform: scale(0.1);
              opacity: 0.3;
           }
           75% {
              -moz-transform: scale(0.5);
              opacity: 0.5;
           }
           100% {
              -moz-transform: scale(1);
              opacity: 0.0;
           }
    }
    @-webkit-keyframes "pulse" {
           0% {
              -webkit-transform: scale(0);
              opacity: 0.0;
           }
           25% {
              -webkit-transform: scale(0);
              opacity: 0.1;
           }
           50% {
              -webkit-transform: scale(0.1);
              opacity: 0.3;
           }
           75% {
              -webkit-transform: scale(0.5);
              opacity: 0.5;
           }
           100% {
              -webkit-transform: scale(1);
              opacity: 0.0;
           }
       }
    </style>
    </head>
    <body>
    <script src="https://www.amcharts.com/lib/3/ammap.js"></script>
    <script src="https://www.amcharts.com/lib/3/maps/js/worldLow.js"></script>
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <script>
    var targetSVG = "M9,0C4.029,0,0,4.029,0,9s4.029,9,9,9s9-4.029,9-9S13.971,0,9,0z M9,15.93 c-3.83,0-6.93-3.1-6.93-6.93S5.17,2.07,9,2.07s6.93,3.1,6.93,6.93S12.83,15.93,9,15.93 M12.5,9c0,1.933-1.567,3.5-3.5,3.5S5.5,10.933,5.5,9S7.067,5.5,9,5.5 S12.5,7.067,12.5,9z";

    <!-- var targetSVG = "{{site.baseurl}}/assets/svg/taxi.svg"; -->

    var map = AmCharts.makeChart( "chartdiv", {
        "type": "map",
        "theme": "light",
        "dragMap": true,
        "projection": "miller",
        "mouseWheelZoomEnabled": true,
        "showBalloonOnSelectedObject": true,
        "backgroundAlpha": 1,
        "backgroundColor": "#000",

        "dataProvider": {
            "mapURL": "/assets/map/chinaHigh.svg",

            "zoomLevel": 1,
            "zoomLatitude": 36.7,
            "zoomLongitude": 104.2,

            "lines": [
            ],

            "images": [
                {"type": "circle", "title": "<b>廖小罕<br/>中国科学院地理科学与资源研究所", "latitude": 40.008842, "longitude": 116.391435, "scale": 0.5},
                {"type": "circle", "title": "<b>李英成<br/>中测新图（北京）遥感技术有限责任公司", "latitude": 39.90969, "longitude": 116.267731, "scale": 0.5},
                {"type": "circle", "title": "<b>刘永<br/>武汉中地数码科技有限公司", "latitude": 30.480708, "longitude": 114.412103, "scale": 0.5},
                {"type": "circle", "title": "<b>程承旗<br/>北京大学", "latitude": 39.998877, "longitude": 116.316833, "scale": 0.5},
                {"type": "circle", "title": "<b>王宝民<br/>中国地图出版集团", "latitude": 38.888106, "longitude": 121.531261, "scale": 0.5},
                {"type": "circle", "title": "<b>程鹏飞<br/>中国测绘科学研究院", "latitude": 39.902882, "longitude": 116.302654, "scale": 0.5},
                {"type": "circle", "title": "<b>陆洁中<br/>上海市测绘地理信息产业协会", "latitude": 31.194908, "longitude": 121.515188, "scale": 0.5},
                {"type": "circle", "title": "<b>朱敦尧<br/>武汉光庭信息技术股份有限公司", "latitude": 30.481717, "longitude": 114.40856, "scale": 0.5},
                {"type": "circle", "title": "<b>宫辉力<br/>首都师范大学", "latitude": 39.936212, "longitude": 116.312068, "scale": 0.5},
                {"type": "circle", "title": "<b>崔亚军<br/>四川空间信息产业发展有限公司", "latitude": 30.634885, "longitude": 103.979575, "scale": 0.5},
                {"type": "circle", "title": "<b>谭永杰<br/>中国地质调查局发展研究中心", "latitude": 39.929323, "longitude": 116.34309, "scale": 0.5},
                {"type": "circle", "title": "<b>史廷玉<br/>天津市测绘院", "latitude": 39.06744, "longitude": 117.191558, "scale": 0.5},
                {"type": "circle", "title": "<b>刘永<br/>深圳新中地教育有限公司", "latitude": 22.24, "longitude": 113.53, "scale": 0.5},
                {"type": "circle", "title": "<b>王增宁<br/>中国地理信息产业协会", "latitude": 39.884267, "longitude": 116.366775, "scale": 0.5},
                {"type": "circle", "title": "<b>刘玉璋<br/>北京盛世泰伯网络技术有限公司", "latitude": 39.927273, "longitude": 116.440156, "scale": 0.5},
                {"type": "circle", "title": "<b>冯仲科<br/>北京林业大学", "latitude": 40.00819, "longitude": 116.35146, "scale": 0.5},
                {"type": "circle", "title": "<b>王卫红<br/>西南科技大学环境与资源学院", "latitude": 31.467895, "longitude": 104.742836, "scale": 0.5},
                {"type": "circle", "title": "<b>孙玉国<br/>北京四维图新科技股份有限公司", "latitude": 40.07868, "longitude": 116.252122, "scale": 0.5},
                {"type": "circle", "title": "<b>胥燕婴<br/>国家测绘地理信息局", "latitude": 39.902882, "longitude": 116.302654, "scale": 0.5},
                {"type": "circle", "title": "<b>郭凯天<br/>深圳市腾讯计算机系统有限公司", "latitude": 22.561116, "longitude": 113.958226, "scale": 0.5},
                {"type": "circle", "title": "<b>曹天景<br/>中国四维测绘技术有限公司", "latitude": 39.982969, "longitude": 116.335135, "scale": 0.5},
                {"type": "circle", "title": "<b>王长科<br/>中国兵器工业北方勘察设计研究院有限公司", "latitude": 38.042718, "longitude": 114.518801, "scale": 0.5},
                {"type": "circle", "title": "<b>姜德荣<br/>高德软件 有限公司", "latitude": 31.207776, "longitude": 121.440775, "scale": 0.5},
                {"type": "circle", "title": "<b>刘奕夫<br/>武大吉奥信息技术有限公司", "latitude": 30.462392, "longitude": 114.415055, "scale": 0.5},
                {"type": "circle", "title": "<b>李国鹏<br/>自然资源部", "latitude": 34.2304, "longitude": 108.93426, "scale": 0.5},
                {"type": "circle", "title": "<b>王东<br/>北京数字政通科技股份有限公司", "latitude": 39.806, "longitude": 116.479, "scale": 0.5},
                {"type": "circle", "title": "<b>邓克寰<br/>中治集团武汉勘察研究院有限公司", "latitude": 30.632443, "longitude": 114.394796, "scale": 0.5},
                {"type": "circle", "title": "<b>杨洪涛<br/>北京搜狗科技发展有限公司", "latitude": 39.999586, "longitude": 116.338779, "scale": 0.5},
                {"type": "circle", "title": "<b>马小计<br/>北京中色测绘院有限公司", "latitude": 40.042131, "longitude": 116.428025, "scale": 0.5},
                {"type": "circle", "title": "<b>汤国安<br/>南京师范大学", "latitude": 32.112189, "longitude": 118.916683, "scale": 0.5},
                {"type": "circle", "title": "<b>杨震澎<br/>广东南方数码科技股份有限公司", "latitude": 23.129587, "longitude": 113.380433, "scale": 0.5},
                {"type": "circle", "title": "<b>赖百炼<br/>中煤航测遥感集团有限公司", "latitude": 34.168497, "longitude": 108.988433, "scale": 0.5},
                {"type": "circle", "title": "<b>王继业<br/>国家电网公司", "latitude": 39.948387, "longitude": 116.455712, "scale": 0.5},
                {"type": "circle", "title": "<b>江春华<br/>北京恒华伟业科技股份有限公司", "latitude": 39.956312, "longitude": 116.389148, "scale": 0.5},
                {"type": "circle", "title": "<b>李满春<br/>南京大学", "latitude": 32.125421, "longitude": 118.964891, "scale": 0.5},
                {"type": "circle", "title": "<b>张扬<br/>北京吉威时代软件股份有限公司", "latitude": 39.911938, "longitude": 116.225806, "scale": 0.5},
                {"type": "circle", "title": "<b>汤海<br/>中国地理信息产业协会", "latitude": 39.884267, "longitude": 116.366775, "scale": 0.5},
                {"type": "circle", "title": "<b>左建章<br/>北京四维远见信息技术有限公司", "latitude": 39.826963, "longitude": 116.289182, "scale": 0.5},
                {"type": "circle", "title": "<b>孙冰<br/>北京东方道迩信息技术股份有限公司", "latitude": 40.039824, "longitude": 116.303044, "scale": 0.5},
                {"type": "circle", "title": "<b>王东<br/>北京数字政通科技股份有限公司", "latitude": 39.959609, "longitude": 116.36266, "scale": 0.5},
                {"type": "circle", "title": "<b>白正玄<br/>北京博乾国际会展服务有限公司", "latitude": 39.902924, "longitude": 116.386381, "scale": 0.5},
                {"type": "circle", "title": "<b>程鹏飞<br/>中国测绘科学院", "latitude": 39.902882, "longitude": 116.302654, "scale": 0.5},
                {"type": "circle", "title": "<b>谭永杰<br/>中国地质调查局发展研究中心", "latitude": 39.929323, "longitude": 116.34309, "scale": 0.5},
                {"type": "circle", "title": "<b>廖定海<br/>广州中海达卫星导航技术股份有限公司", "latitude": 22.986854, "longitude": 113.379684, "scale": 0.5},
                {"type": "circle", "title": "<b>于国强<br/>山东省圣达地理信息测绘工程有限公司", "latitude": 37.508532, "longitude": 122.132538, "scale": 0.5},
                {"type": "circle", "title": "<b>徐文中<br/>苍穹数码技术股份有限公司", "latitude": 39.813497, "longitude": 116.544586, "scale": 0.5},
                {"type": "circle", "title": "<b>马小计<br/>北京中色测绘院有限公司", "latitude": 40.042131, "longitude": 116.428025, "scale": 0.5},
                {"type": "circle", "title": "<b>李清泉<br/>深圳大学", "latitude": 22.532206, "longitude": 113.940343, "scale": 0.5},
                {"type": "circle", "title": "<b>边馥苓<br/>武汉大学", "latitude": 30.533404, "longitude": 114.363058, "scale": 0.5},
                {"type": "circle", "title": "<b>王有弢<br/>甘肃省测绘地理信息学会", "latitude": 36.05227, "longitude": 103.84625, "scale": 0.5},
                {"type": "circle", "title": "<b>宋关福<br/>北京超图软件股份有限公司", "latitude": 39.991818, "longitude": 116.512186, "scale": 0.5},
                {"type": "circle", "title": "<b>杨槐<br/>厦门亿联网络技术股份有限公司", "latitude": 24.538145, "longitude": 118.161035, "scale": 0.5},
                {"type": "circle", "title": "<b>郭晟<br/>立得空间信息技术股份有限公司", "latitude": 39.956793, "longitude": 116.283903, "scale": 0.5},
                {"type": "circle", "title": "<b>徐文<br/>中国资源卫星应用中心", "latitude": 40.086778, "longitude": 116.252936, "scale": 0.5},
                {"type": "circle", "title": "<b>余国珊<br/>四川省地理信息产业协会", "latitude": 30.628311, "longitude": 104.042204, "scale": 0.5},
                {"type": "circle", "title": "<b>王继业<br/>国家电网公司", "latitude": 39.912541, "longitude": 116.383689, "scale": 0.5},
                {"type": "circle", "title": "<b>冯先光<br/>国家基础地理信息中心", "latitude": 39.902236, "longitude": 116.302829, "scale": 0.5},
                {"type": "circle", "title": "<b>刘沛<br/>贵州大学资源与环境工程学院", "latitude": 26.495623, "longitude": 106.748509, "scale": 0.5}
            ]
        },

            "areasSettings": {
                "color": "#FFCC00",
                "outlineThickness": 0.3,
                "unlistedAreasColor": "#FFFFFF",
                "unlistedAreasAlpha": 0.6
            },

            "imagesSettings": {
              "color": "#FF8003",
              "rollOverColor": "#FFFF00",
              "selectedColor": "#000000"
            },

            "linesSettings": {
              "arc": -0.75,
              "arrow": "middle",
              "color": "#FFFF00",
              "alpha": 1,
              "arrowAlpha": 1,
              "arrowSize": 3,
              "thickness": 1
            },

            "balloon": {
                "drop": false,
                "fixedPosition": false
            },

            "zoomControl": {
              "homeButtonEnabled": false,
              "zoomControlEnabled": false,
              "buttonSize": 10,
              "gridHeight": 0,
              "draggerAlpha": 0,
              "gridAlpha": 0
            },

            "backgroundZoomsToTop": true,
            "linesAboveImages": false,

           "export": {
             "enabled": false
           }
    } );

    map.addListener( "positionChanged", updateCustomMarkers );

    function updateCustomMarkers( event ) {
      var map = event.chart;

      for ( var x in map.dataProvider.images ) {
        var image = map.dataProvider.images[ x ];
        if (x == 4) {
            if ( 'undefined' == typeof image.externalElement )
            image.externalElement = createCustomMarker( image );
            var xy = map.coordinatesToStageXY( image.longitude, image.latitude );
            image.externalElement.style.top = xy.y + 'px';
            image.externalElement.style.left = xy.x + 'px';
        } else {
            if ( 'undefined' == typeof image.externalElement )
            image.externalElement = createCustomMarker( image );
            var xy = map.coordinatesToStageXY( image.longitude, image.latitude );
            image.externalElement.style.top = xy.y + 'px';
            image.externalElement.style.left = xy.x + 'px';
        }
      }
    }

    function createCustomMarker( image ) {
      var holder = document.createElement( 'div' );
      holder.className = 'map-marker';
      holder.title = image.title;
      holder.style.position = 'absolute';

      if ( undefined != image.url ) {
        holder.onclick = function() {
          window.location.href = image.url;
        };
        holder.className += ' map-clickable';
      }

      var dot = document.createElement( 'div' );
      dot.className = 'dot';
      holder.appendChild( dot );

      var pulse = document.createElement( 'div' );
      pulse.className = 'pulse';
      holder.appendChild( pulse );

      image.chart.chartDiv.appendChild( holder );

      return holder;
    }


    </script>
    </body>
    <div id="chartdiv"></div>
</html>
