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
            -webkit-animation: pulse 0s ease-out;
            -moz-animation: pulse 0s ease-out;
            animation: pulse 1s ease-out;
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
            { "latitudes": [ 30.341304, 39.9869171 ], "longitudes": [ 112.212773, 116.3036799 ]},
            { "latitudes": [ 30.341304, 31.8144125 ], "longitudes": [ 112.212773, 119.8045282 ]},
            { "latitudes": [ 30.341304, 30.6584534 ], "longitudes": [ 112.212773, 103.9354639 ]},
            { "latitudes": [ 30.341304, 23.0088158 ], "longitudes": [ 112.212773, 113.0362683 ]},
            { "latitudes": [ 30.341304, 41.7549117 ], "longitudes": [ 112.212773, 85.57708750 ]},
            { "latitudes": [ 30.341304, 26.8698524 ], "longitudes": [ 112.212773, 100.1568586 ]},
            { "latitudes": [ 30.341304, 22.8218028 ], "longitudes": [ 112.212773, 108.1459736 ]},
            { "latitudes": [ 30.341304, 31.2240453 ], "longitudes": [ 112.212773, 121.1965745 ]},
            { "latitudes": [ 30.341304, 22.5550996 ], "longitudes": [ 112.212773, 113.9137958 ], "color": "#FF0000"},
            { "latitudes": [ 30.341304, 31.3282721 ], "longitudes": [ 112.212773, 120.5042200 ]},
            { "latitudes": [ 30.341304, 30.3413040 ], "longitudes": [ 112.212773, 112.2127730 ]},
            { "latitudes": [ 30.341304, 30.5543558 ], "longitudes": [ 112.212773, 114.2882620 ]},
            { "latitudes": [ 30.341304, 30.5345180 ], "longitudes": [ 112.212773, 114.0285070 ]},
            { "latitudes": [ 30.341304, 30.7044673 ], "longitudes": [ 112.212773, 111.2269575 ]},
            { "latitudes": [ 30.341304, 28.1760581 ], "longitudes": [ 112.212773, 112.8845146 ]},
            { "latitudes": [ 30.341304, 29.5548391 ], "longitudes": [ 112.212773, 106.4084712 ]},
            { "latitudes": [ 30.341304, 34.7425316 ], "longitudes": [ 112.212773, 113.5230954 ]},
            { "latitudes": [ 30.341304, 22.7789936 ], "longitudes": [ 112.212773, 115.3473468 ]},
            { "latitudes": [ 30.341304, 23.1253503 ], "longitudes": [ 112.212773, 112.9476635 ]},
            { "latitudes": [ 30.341304, 36.1587746 ], "longitudes": [ 112.212773, 117.0661911 ]},
            { "latitudes": [ 30.341304, 26.2399582 ], "longitudes": [ 112.212773, 105.9057994 ]},
            ],

            "images": [
            {"type": "circle", "title": "北京：唐顺峰，郑觅觅", "latitude": 39.9869171, "longitude": 116.3036799, "scale": 0.4},
            {"type": "circle", "title": "常州：江波", "latitude": 31.8144125, "longitude": 119.8045282, "scale": 0.4},
            {"type": "circle", "title": "成都：张锦华，肖云", "latitude": 30.6584534, "longitude": 103.9354639, "scale": 0.4},
            {"type": "circle", "title": "佛山：韩君霞", "latitude": 23.0088158, "longitude": 113.0362683, "scale": 0.4},
            {"type": "circle", "title": "荆州：艾晓莹，蔡蓉，代元锋，方敏敏，李铃志，梁鑫，刘林，彭圣唯，孙明，卫小龙，谢楷模，熊小伟，许利刚，张舒，朱继平", "latitude": 30.341304, "longitude": 112.212773, "scale": 1, "color": "#FF0000"},
            {"type": "circle", "title": "库尔勒：朱雷", "latitude": 41.7549117, "longitude": 85.5770875, "scale": 0.4},
            {"type": "circle", "title": "丽江：邓承锦", "latitude": 26.8698524, "longitude": 100.1568586, "scale": 0.4},
            {"type": "circle", "title": "南宁：刘幸雨", "latitude": 22.8218028, "longitude": 108.1459736, "scale": 0.4},
            {"type": "circle", "title": "上海：杜小云，付庭，李绪谋，刘婷", "latitude": 31.2240453, "longitude": 121.1965745, "scale": 0.4},
            {"type": "circle", "title": "深圳：陈武妮，黄强，杨婷", "latitude": 22.5550996, "longitude": 113.9137958, "scale": 0.4},
            {"type": "circle", "title": "苏州：樊林", "latitude": 31.3282721, "longitude": 120.50422, "scale": 0.4},
            {"type": "circle", "title": "天津：蔡颖颖，朱丽", "latitude": 30.341304, "longitude": 112.212773, "scale": 0.4},
            {"type": "circle", "title": "武汉：曹盼，陈良虎，陈珊珊，陈书娟，单为，胡强，胡枭雄，孔陶，刘欢，刘洋，肖敏，熊骁，赵磊", "latitude": 30.5543558, "longitude": 114.288262, "scale": 0.4},
            {"type": "circle", "title": "蔡甸：张方利", "latitude": 30.534518, "longitude": 114.028507, "scale": 0.4},
            {"type": "circle", "title": "宜昌：杨俭，朱辉", "latitude": 30.7044673, "longitude": 111.2269575, "scale": 0.4},
            {"type": "circle", "title": "长沙：陈东旭", "latitude": 28.1760581, "longitude": 112.8845146, "scale": 0.4},
            {"type": "circle", "title": "重庆：方多，喻辉", "latitude": 29.5548391, "longitude": 106.4084712, "scale": 0.4},
            {"type": "circle", "title": "郑州：雷盼盼", "latitude": 34.7425316, "longitude": 113.5230954, "scale": 0.4},
            {"type": "circle", "title": "汕尾：胡玲玲", "latitude": 22.7789936, "longitude": 115.3473468, "scale": 0.4},
            {"type": "circle", "title": "广州：刘畅", "latitude": 23.1253503, "longitude": 112.9476635, "scale": 0.4},
            {"type": "circle", "title": "泰安：刘迪亚", "latitude": 36.1587746, "longitude": 117.0661911, "scale": 0.4},
            {"type": "circle", "title": "贵州：刘柱柱", "latitude": 26.2399582, "longitude": 105.9057994, "scale": 0.4},
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
                "drop": false
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
