---
layout: post
title: "Those flowers"
author: "Fangli ZHANG"
categories: blogs
tags: [friends, dears]
image:
  feature: note/Ximen_HighSchool.jpg
  teaser: note/Ximen_HighSchool_teaser.png
  credit: javascript
  creditlink: ""
---

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

            "zoomLevel": 0.8,
            "zoomLatitude": 35,
            "zoomLongitude": 112,

            "lines": [
            { "latitudes": [ 30.341304, 39.9869171 ], "longitudes": [ 112.212773, 116.3036799 ],"title": "<b>北京</b><br/>唐顺峰<br/>郑觅觅"},
            { "latitudes": [ 30.341304, 31.8144125 ], "longitudes": [ 112.212773, 119.8045282 ], "title": "<b>常州</b><br/>江&#12288波"},
            { "latitudes": [ 30.341304, 30.6584534 ], "longitudes": [ 112.212773, 103.9354639 ], "title": "<b>成都</b><br/>张锦华<br/>肖&#12288云"},
            { "latitudes": [ 30.341304, 23.0088158 ], "longitudes": [ 112.212773, 113.0362683 ], "title": "<b>佛山</b><br/>韩君霞"},
            { "latitudes": [ 30.341304, 41.7549117 ], "longitudes": [ 112.212773, 85.57708750 ], "title": "<b>新疆</b><br/>朱&#12288雷"},
            { "latitudes": [ 30.341304, 26.8698524 ], "longitudes": [ 112.212773, 100.1568586 ], "title": "<b>丽江</b><br/>邓承锦"},
            { "latitudes": [ 30.341304, 22.8218028 ], "longitudes": [ 112.212773, 108.1459736 ], "title": "<b>南宁</b><br/>刘幸雨"},
            { "latitudes": [ 30.341304, 31.2240453 ], "longitudes": [ 112.212773, 121.1965745 ], "title": "<b>上海</b><br/>杜小云<br/>付&#12288庭<br/>李绪谋<br/>刘&#12288婷"},
            { "latitudes": [ 30.341304, 22.5550996 ], "longitudes": [ 112.212773, 113.9137958 ], "title": "<b>深圳</b><br/>陈武妮<br/>黄&#12288强<br/>杨&#12288婷", "color": "#FF0000"},
            { "latitudes": [ 30.341304, 31.3282721 ], "longitudes": [ 112.212773, 120.5042200 ], "title": "<b>苏州</b><br/>樊&#12288林"},
            { "latitudes": [ 30.341304, 30.3413040 ], "longitudes": [ 112.212773, 112.2127730 ], "title": "<b>天津</b><br/>蔡颖颖<br/>朱&#12288丽"},
            { "latitudes": [ 30.341304, 30.5543558 ], "longitudes": [ 112.212773, 114.2882620 ], "title": "<b>武汉</b><br/>曹&#12288盼&#12288陈良虎&#12288陈珊珊<br/>陈书娟&#12288胡&#12288强&#12288胡枭雄<br/>孔&#12288陶&#12288刘&#12288欢&#12288刘&#12288洋<br/>倪菲菲&#12288单&#12288为&#12288肖&#12288敏<br/>熊&#12288骁&#12288赵&#12288磊&#12288&#12288&#12288&#12288&#12288"},
            { "latitudes": [ 30.341304, 30.5345180 ], "longitudes": [ 112.212773, 114.0285070 ], "title": "<b>蔡甸</b><br/>张方利"},
            { "latitudes": [ 30.341304, 30.7044673 ], "longitudes": [ 112.212773, 111.2269575 ], "title": "<b>宜昌</b><br/>杨&#12288俭<br/>朱&#12288辉"},
            { "latitudes": [ 30.341304, 28.1760581 ], "longitudes": [ 112.212773, 112.8845146 ], "title": "<b>长沙</b><br/>陈东旭"},
            { "latitudes": [ 30.341304, 29.5548391 ], "longitudes": [ 112.212773, 106.4084712 ], "title": "<b>重庆</b><br/>方&#12288多<br/>喻&#12288辉"},
            { "latitudes": [ 30.341304, 34.7425316 ], "longitudes": [ 112.212773, 113.5230954 ], "title": "<b>郑州</b><br/>雷盼盼"},
            { "latitudes": [ 30.341304, 22.7789936 ], "longitudes": [ 112.212773, 115.3473468 ], "title": "<b>汕尾</b><br/>胡玲玲"},
            { "latitudes": [ 30.341304, 23.1253503 ], "longitudes": [ 112.212773, 112.9476635 ], "title": "<b>广州</b><br/>刘&#12288畅"},
            { "latitudes": [ 30.341304, 36.1587746 ], "longitudes": [ 112.212773, 117.0661911 ], "title": "<b>泰安</b><br/>刘迪亚"},
            { "latitudes": [ 30.341304, 26.2399582 ], "longitudes": [ 112.212773, 105.9057994 ], "title": "<b>贵州</b><br/>刘柱柱"},
            ],

            "images": [
            {"type": "circle", "title": "<b>北京</b><br/>唐顺峰<br/>郑觅觅", "latitude": 39.9869171, "longitude": 116.3036799, "scale": 0.4},
            {"type": "circle", "title": "<b>常州</b><br/>江&#12288波", "latitude": 31.8144125, "longitude": 119.8045282, "scale": 0.4},
            {"type": "circle", "title": "<b>成都</b><br/>张锦华<br/>肖&#12288云", "latitude": 30.6584534, "longitude": 103.9354639, "scale": 0.4},
            {"type": "circle", "title": "<b>佛山</b><br/>韩君霞", "latitude": 23.0088158, "longitude": 113.0362683, "scale": 0.4},
            {"svgPath": targetSVG, "title": "<b>荆州</b><br/>艾晓莹&#12288蔡&#12288蓉&#12288代元锋<br/>方敏敏&#12288李铃志&#12288梁&#12288鑫<br/>刘&#12288林&#12288彭圣唯&#12288孙&#12288明<br/>卫小龙&#12288谢楷模&#12288熊小伟<br/>许利刚&#12288张&#12288舒&#12288朱继平", "latitude": 30.341304, "longitude": 112.212773, "scale": 0.5, "color": "#FF0000"},
            {"type": "circle", "title": "<b>新疆</b><br/>朱&#12288雷", "latitude": 41.7549117, "longitude": 85.5770875, "scale": 0.4},
            {"type": "circle", "title": "<b>丽江</b><br/>邓承锦", "latitude": 26.8698524, "longitude": 100.1568586, "scale": 0.4},
            {"type": "circle", "title": "<b>南宁</b><br/>刘幸雨", "latitude": 22.8218028, "longitude": 108.1459736, "scale": 0.4},
            {"type": "circle", "title": "<b>上海</b><br/>杜小云<br/>付&#12288庭<br/>李绪谋<br/>刘&#12288婷", "latitude": 31.2240453, "longitude": 121.1965745, "scale": 0.4},
            {"type": "circle", "title": "<b>深圳</b><br/>陈武妮<br/>黄&#12288强<br/>杨&#12288婷", "latitude": 22.5550996, "longitude": 113.9137958, "scale": 0.4},
            {"type": "circle", "title": "<b>苏州</b><br/>樊&#12288林", "latitude": 31.3282721, "longitude": 120.50422, "scale": 0.4},
            {"type": "circle", "title": "<b>天津</b><br/>蔡颖颖<br/>朱&#12288丽", "latitude": 30.341304, "longitude": 112.212773, "scale": 0.4},
            {"type": "circle", "title": "<b>武汉</b><br/>曹&#12288盼&#12288陈良虎&#12288陈珊珊<br/>陈书娟&#12288胡&#12288强&#12288胡枭雄<br/>孔&#12288陶&#12288刘&#12288欢&#12288刘&#12288洋<br/>倪菲菲&#12288单&#12288为&#12288肖&#12288敏<br/>熊&#12288骁&#12288赵&#12288磊&#12288&#12288&#12288&#12288", "latitude": 30.5543558, "longitude": 114.288262, "scale": 0.4},
            {"type": "circle", "title": "<b>蔡甸</b><br/>张方利", "latitude": 30.534518, "longitude": 114.028507, "scale": 0.4},
            {"type": "circle", "title": "<b>宜昌</b><br/>杨&#12288俭<br/>朱&#12288辉", "latitude": 30.7044673, "longitude": 111.2269575, "scale": 0.4},
            {"type": "circle", "title": "<b>长沙</b><br/>陈东旭", "latitude": 28.1760581, "longitude": 112.8845146, "scale": 0.4},
            {"type": "circle", "title": "<b>重庆</b><br/>方&#12288多<br/>喻&#12288辉", "latitude": 29.5548391, "longitude": 106.4084712, "scale": 0.4},
            {"type": "circle", "title": "<b>郑州</b><br/>雷盼盼", "latitude": 34.7425316, "longitude": 113.5230954, "scale": 0.4},
            {"type": "circle", "title": "<b>汕尾</b><br/>胡玲玲", "latitude": 22.7789936, "longitude": 115.3473468, "scale": 0.4},
            {"type": "circle", "title": "<b>广州</b><br/>刘&#12288畅", "latitude": 23.1253503, "longitude": 112.9476635, "scale": 0.4},
            {"type": "circle", "title": "<b>泰安</b><br/>刘迪亚", "latitude": 36.1587746, "longitude": 117.0661911, "scale": 0.4},
            {"type": "circle", "title": "<b>贵州</b><br/>刘柱柱", "latitude": 26.2399582, "longitude": 105.9057994, "scale": 0.4},
            ]
        },

            "areasSettings": {
                "color": "#FFCC00",
                "outlineThickness": 0.2,
                "unlistedAreasColor": "#FFFFFF",
                "unlistedAreasAlpha": 0.6
            },

            "imagesSettings": {
              "color": "#00FF00",
              "rollOverColor": "#FFFF00",
              "selectedColor": "#000000"
            },

            "linesSettings": {
              "arc": -0.8,
              "arrow": "middle",
              "color": "#FFFF00",
              "alpha": 1,
              "arrowAlpha": 1,
              "arrowSize": 2,
              "thickness": 0.5
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
             "enabled": true
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
