---
show_in_nav: false
layout: post
title: "2019-2020学年第2学期C语言程序设计课程"
author: "Fangli ZHANG"
categories: course
notshow: 1
tags: [course, undergraduate]
image:
  feature: course/CLanguage.png
  teaser: course/CLanguage.png
  credit: javascript
  creditlink: ""
---



# 2019-2020学年第2学期C语言程序设计课程

长江大学地球科学学院地信系

## 目录
{:.no_toc}
1. TOC
{:toc}


## 长江大学地球科学学院2019级地信（测绘）

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
            {"type": "circle", "title": "<b>湖北武汉 1</b><br/>孙睿康", "latitude": 30.35, "longitude": 114.17, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北孝感 2</b><br/>艾&#12288筝<br/>付兴宽", "latitude": 31.92, "longitude": 113.91, "scale": 0.4},
            {"type": "circle", "title": "<b>湖北黄冈 6</b><br/>陈俊宇<br/>鲁子欣<br/>吴&#12288莹<br/>王&#12288诚<br/>郭志辉<br/>张明敏", "latitude": 30.44, "longitude": 114.87, "scale": 0.5},
            {"type": "circle", "title": "<b>湖北恩施 3</b><br/>邓铭雪<br/>龙凌霄<br/>王铃淇", "latitude": 30.16, "longitude": 109.29, "scale": 0.4},
            {"type": "circle", "title": "<b>甘肃陇南 1</b><br/>侯莲霞", "latitude": 33.40, "longitude": 104.92, "scale": 0.3},
            {"type": "circle", "title": "<b>克拉玛依 1</b><br/>贾俊红", "latitude": 45.36, "longitude": 84.51, "scale": 0.3},
            {"type": "circle", "title": "<b>石河子 1</b><br/>林佳伟", "latitude": 44.18, "longitude": 86.00, "scale": 0.3},
            {"type": "circle", "title": "<b>库尔勒 1</b><br/>刘甜甜", "latitude": 41.46, "longitude": 86.07, "scale": 0.3},
            {"type": "circle", "title": "<b>河北邯郸 2</b><br/>蒋晓洁<br/>张子微", "latitude": 36.36, "longitude": 114.28, "scale": 0.4},
            {"type": "circle", "title": "<b>湖北黄石 1</b><br/>柯思琪", "latitude": 30.12, "longitude": 115.06, "scale": 0.3},
            {"type": "circle", "title": "<b>甘肃白银 1</b><br/>兰志玺", "latitude": 36.33, "longitude": 104.12, "scale": 0.3},
            {"type": "circle", "title": "<b>甘肃武威 1</b><br/>李奥杰", "latitude": 37.56, "longitude": 102.39, "scale": 0.3},
            {"type": "circle", "title": "<b>甘肃定西 1</b><br/>张金平", "latitude": 35.57, "longitude": 104.57, "scale": 0.3},
            {"type": "circle", "title": "<b>甘肃天水 1</b><br/>张婧怡", "latitude": 34.37, "longitude": 105.42, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北十堰 5</b><br/>李启意<br/>叶&#12288青<br/>陆翔宇<br/>汤文惠<br/>周庆尧", "latitude": 32.40, "longitude": 110.47, "scale": 0.5},
            {"type": "circle", "title": "<b>河南洛阳 1</b><br/>李&#12288桥", "latitude": 34.41, "longitude": 112.27, "scale": 0.3},
            {"type": "circle", "title": "<b>河北保定 1</b><br/>梁亚琦", "latitude": 38.51, "longitude": 115.30, "scale": 0.3},
            {"type": "circle", "title": "<b>河北唐山 1</b><br/>朱&#12288浩", "latitude": 39.36, "longitude": 118.11, "scale": 0.3},
            {"type": "circle", "title": "<b>天津 3</b><br/>林&#12288权<br/>王辰宇<br/>张富铭", "latitude": 39.02, "longitude": 117.12, "scale": 0.4},
            {"type": "circle", "title": "<b>湖北宜昌 2</b><br/>林思奇<br/>张彦光", "latitude": 30.45, "longitude": 111.73, "scale": 0.4},
            {"type": "circle", "title": "<b>新疆博乐 1</b><br/>刘景洁", "latitude": 44.93, "longitude": 82.10, "scale": 0.3},
            {"type": "circle", "title": "<b>山东威海 1</b><br/>刘&#12288洋", "latitude": 37.50, "longitude": 122.10, "scale": 0.3},
            {"type": "circle", "title": "<b>辽宁抚顺 1</b><br/>娄兰贝宁", "latitude": 41.97, "longitude": 123.97, "scale": 0.3},
            {"type": "circle", "title": "<b>广西桂林 2</b><br/>陆鸿彬<br/>罗覃林", "latitude": 25.29, "longitude": 110.28, "scale": 0.4},
            {"type": "circle", "title": "<b>重庆 2</b><br/>彭&#12288真<br/>胡苛榆", "latitude": 29.35, "longitude": 106.33, "scale": 0.4},
            {"type": "circle", "title": "<b>山东临沂 3</b><br/>任友志<br/>陈馨媛<br/>文中冠", "latitude": 35.05, "longitude": 118.35, "scale": 0.4},
            {"type": "circle", "title": "<b>湖北钟祥 1</b><br/>王高寒", "latitude": 31.17, "longitude": 112.58, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北咸宁 1</b><br/>黎博文", "latitude": 29.53, "longitude": 114.17, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北荆州 3</b><br/>王倩莉<br/>陈筱颖<br/>王&#12288诚", "latitude": 30.33, "longitude": 112.23, "scale": 0.4},
            {"type": "circle", "title": "<b>江苏南京 1</b><br/>魏圆圆", "latitude": 32.05, "longitude": 118.78, "scale": 0.3},
            {"type": "circle", "title": "<b>河南南阳 2</b><br/>辛&#12288果<br/>张祯志", "latitude": 33.00, "longitude": 112.32, "scale": 0.4},
            {"type": "circle", "title": "<b>河南新乡 1</b><br/>荆怡迈", "latitude": 35.18, "longitude": 113.52, "scale": 0.3},
            {"type": "circle", "title": "<b>石家庄 1</b><br/>邢佳腾", "latitude": 38.02, "longitude": 114.3, "scale": 0.3},
            {"type": "circle", "title": "<b>广东东莞 1</b><br/>徐苑珊", "latitude": 23.02, "longitude": 113.45, "scale": 0.3},
            {"type": "circle", "title": "<b>广东茂名 1</b><br/>梁春辉", "latitude": 21.40, "longitude": 110.53, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北随州 1</b><br/>杨可扬", "latitude": 31.42, "longitude": 113.22, "scale": 0.3},
            {"type": "circle", "title": "<b>云南德宏 1</b><br/>余章欧", "latitude": 24.50, "longitude": 97.80, "scale": 0.3},
            {"type": "circle", "title": "<b>山东菏泽 1</b><br/>张&#12288琼", "latitude": 35.14, "longitude": 115.26, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北襄阳 1</b><br/>常&#12288帅", "latitude": 32.02, "longitude": 112.08, "scale": 0.3}
            ]
        },

            "areasSettings": {
                "color": "#FFCC00",
                "outlineThickness": 0.5,
                "unlistedAreasColor": "#FFFFFF",
                "unlistedAreasAlpha": 0.6
            },

            "imagesSettings": {
              "color": "#0000FF",
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


## C语言程序设计授课日志
### 2020-02-06 雨课堂开课-长江大学教务处关联课程师生
地信（测绘）21901和21902两个班共61名同学绑定了课程。
### 2020-02-07 雨课堂测试-Visual Studio 2010安装教程
27/61名同学参与了测试，通信正常，院系领导旁听了测试。
### 2020-02-09 雨课堂试讲-C语言程序设计第一章绪论
36/61名同学参与了试讲，试讲了30分钟，通信正常，互动勉强。
