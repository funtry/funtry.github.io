---
layout: post
title: "Rong's Journey in Hong Kong"
author: "Fangli ZHANG"
categories: private
tags: [life, summer vacation]
image:
  feature: /note/Ting_Kau_Bridge.jpg
  teaser: /note/Ting_Kau_Bridge_teaser.jpg
  credit: visiting hong kong
  creditlink: ""
---
## Past Visits
-   2012 from Kunming (08.06) to
    -   Beijing (08.06)
    -   Honolulu (08.06)
-   2013 from Honolulu (05.12) to
    -   Shanghai (05.13)
    -   Wuhan (05.13)
    -   Kunming (05.22)
    -   Taiyuan (07.07)
    -   Beijing (07.08)
    -   Shenzhen (07.17)
    -   Hong Kong (07.17)
    -   Xiamen (07.22)
    -   Hailar (07.27)
    -   Beijing (07.31)
    -   Honolulu (08.07)
-   2015 from Honolulu (06.03) to
    -   Hong Kong (06.04)
    -   Shenzhen (06.10)
    -   Kunming (06.11)
    -   Shenzhen (09.07)
    -   Zhuhai (09.08)
    -   (Macau) (09.08)
    -   Shenzhen (09.09)
    -   Hong Kong (09.10)
    -   Corvallis (09.10)
-   2015 from Corvallis (12.13) to
    -   Hong Kong (12.14)
    -   Shenzhen (12.14)
    -   Kunming (12.17)
    -   Shenzhen (12.30)
    -   Hong Kong (12.31)
    -   Macau (12.31)
    -   Zhuhai (12.31)
    -   Shenzhen (2016.01.01)
    -   Hong Kong (2016.01.03)
    -   Corvallis (2016.01.04)
-   2016 from Corvallis (12.16) to
    -   Hong Kong (12.16)
    -   Kunming (12.19)
    -   Hong Kong (2017.01.04)
    -   Corvallis (2017.01.05)
-   2017 from Corvallis (07.03) to
    -   Denver (07.03)
    -   Hong Kong (07.13)
    -   Shenzhen (07.20)
    -   Kunming (07.23)

<html>
    <head>
    <style>
        #chartdiv {
            width: 100%;
            height: 400px;
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
    var planeSVG = "m2,106h28l24,30h72l-44,-133h35l80,132h98c21,0 21,34 0,34l-98,0 -80,134h-35l43,-133h-71l-24,30h-28l15,-47";

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
            "mapURL": "/assets/map/hongKongHigh.svg",

            "zoomLevel": 0.9,
            "zoomLatitude": 22.38,
            "zoomLongitude": 114.15,

            "lines": [
            { "color": "#00FF00", "id": "line1", "arc": -0.89, "latitudes": [ 22.315547, 22.368413, 22.292533 ], "longitudes": [ 113.93539, 114.078033, 114.200764]},
            { "id": "line2", "arc": -0.6, "latitudes": [ 22.315547, 22.329893], "longitudes": [ 113.93539, 114.192996]},
            { "id": "line3", "arc": -0.6, "latitudes": [ 22.315547, 22.287591], "longitudes": [ 113.93539, 114.147563]},
            { "id": "line4", "arc": -0.6, "latitudes": [ 22.315547, 22.249687], "longitudes": [ 113.93539, 114.169053]}
            ],

            "images": [
{"color": "#00FF00", "svgPath": targetSVG, "title": "Hong Kong International Airport", "latitude": 22.315547, "longitude": 113.93539, "scale": 0.8},
{"color": "#FF0000", "svgPath": targetSVG, "title": "Royal View Hotel", "latitude": 22.368413, "longitude": 114.078033, "scale": 0.8},
{"color": "#FF0000", "svgPath": targetSVG, "title": "Ibis North Point", "latitude": 22.292533, "longitude": 114.200764, "scale": 0.8},
{"type": "circle", "title": "Hong Kong Baptist University", "latitude": 22.337857, "longitude": 114.181962, "scale": 0.5},
{"type": "circle", "title": "Regal Oriental Hotel", "latitude": 22.329893, "longitude": 114.192996, "scale": 0.5},
{"type": "circle", "title": "ibis Central and Sheung Wan", "latitude": 22.287591, "longitude": 114.147563, "scale": 0.5},
{"type": "circle", "title": "Ovolo Southside", "latitude": 22.249687, "longitude": 114.169053, "scale": 0.5},
{"type": "circle", "title": "Repulse Bay", "latitude": 22.23672, "longitude": 114.196825, "scale": 0.5},
{"type": "circle", "title": "Shek O Bay", "latitude": 22.228653, "longitude": 114.250842, "scale": 0.5},
{"type": "circle", "title": "Stanley Promenade", "latitude": 22.218514, "longitude": 114.210928, "scale": 0.5},
{"type": "circle", "title": "Siu Sai Wan Promenade ", "latitude": 22.265762, "longitude": 114.252166, "scale": 0.5},
{"type": "circle", "title": "Ap Lei Chau", "latitude": 22.244854, "longitude": 114.152796, "scale": 0.5},
{"type": "circle", "title": "Sok Kwu Wan", "latitude": 22.205452, "longitude": 114.131675, "scale": 0.5},
{"type": "circle", "title": "Hung Shing Ye Beach", "latitude": 22.218764, "longitude": 114.119576, "scale": 0.5},
{"type": "circle", "title": "Yung Shue Wan", "latitude": 22.226131, "longitude": 114.108486, "scale": 0.5},
{"type": "circle", "title": "Aberdeen Promenade", "latitude": 22.247719, "longitude": 114.152486, "scale": 0.5},
{"type": "circle", "title": "Shau Kei Wan", "latitude": 22.282827, "longitude": 114.228369, "scale": 0.5},
{"type": "circle", "title": "Quarry Bay", "latitude": 22.288968, "longitude": 114.219832, "scale": 0.5},
{"type": "circle", "title": "Causeway Bay", "latitude": 22.287718, "longitude": 114.191775, "scale": 0.5},
{"type": "circle", "title": "Wan Chai", "latitude": 22.277997, "longitude": 114.173484, "scale": 0.5},
{"type": "circle", "title": "Victoria Peak", "latitude": 22.275675, "longitude": 114.145511, "scale": 0.5},
{"type": "circle", "title": "North Point", "latitude": 22.293293, "longitude": 114.201295, "scale": 0.5},
{"type": "circle", "title": "Kowloon Bay", "latitude": 22.317758, "longitude": 114.193661, "scale": 0.5},
{"type": "circle", "title": "Tsim Sha Tsui", "latitude": 22.293233, "longitude": 114.171463, "scale": 0.5},
{"type": "circle", "title": "China Hong Kong Ferry Terminal", "latitude": 22.299447, "longitude": 114.167288, "scale": 0.5},
{"type": "circle", "title": "Tian Tan Buddha", "latitude": 22.254412, "longitude": 113.905166, "scale": 0.5},
{"type": "circle", "title": "Kowloon Walled City", "latitude": 22.331835, "longitude": 114.190229, "scale": 0.5},
{"type": "circle", "title": "Sai Wan War Cemetery", "latitude": 22.259283, "longitude": 114.234398, "scale": 0.5},
{"type": "circle", "title": "Sai Wan War Cemetery", "latitude": 22.259283, "longitude": 114.234398, "scale": 0.5},
{"color": "#FFFF00", "type": "circle", "title": "Hen Keng", "latitude": 22.361471, "longitude": 114.171836, "scale": 0.5},
{"color": "#FFFF00", "type": "circle", "title": "Hong Kong Heritage Museum", "latitude": 22.377524, "longitude": 114.186285, "scale": 0.5},
{"color": "#FFFF00", "type": "circle", "title": "Sham Shui Po", "latitude": 22.329071, "longitude": 114.163497, "scale": 0.5},
{"color": "#FFFF00", "type": "circle", "title": "Sha Tin Racecourse", "latitude": 22.40037, "longitude": 114.206189, "scale": 0.5},
{"color": "#FFFF00", "type": "circle", "title": "Hong Kong Gold Coast", "latitude": 22.371098, "longitude": 113.989288, "scale": 0.5},
{"color": "#FFFF00", "type": "circle", "title": "Butterfly Beach", "latitude": 22.373539, "longitude": 113.958817, "scale": 0.5},
{"color": "#FFFF00", "type": "circle", "title": "Sai Kung", "latitude": 22.380377, "longitude": 114.272727, "scale": 0.5},
{"color": "#FFFF00", "type": "circle", "title": "Silverstrand Beach", "latitude": 22.322392, "longitude": 114.270947, "scale": 0.5},  
            {
              "svgPath": planeSVG,
              "positionOnLine": 0,
              "color": "#FFFFFF",
              "animateAlongLine": true,
              "lineId": "line1",
              "flipDirection": false,
              "loop": true,
              "scale": 0.08,
              "positionScale": 1
            }
            ]
        },

            "areasSettings": {
                "color": "#FFCC00",
                "outlineThickness": 0.2,
                "unlistedAreasColor": "#FFFFFF",
                "unlistedAreasAlpha": 0.6
            },

            "imagesSettings": {
              "color": "#FFFF00",
              "rollOverColor": "#00FF00",
              "selectedColor": "#000000",
              "pauseDuration": 0.3,
              "animationDuration": 5,
              "adjustAnimationSpeed": true,
              "scale": 0.2
            },

            "linesSettings": {
              "arc": -0.6,
              "color": "#FFFF00",
              "alpha": 1,
              "thickness": 0.5
            },

            "balloon": {
                "drop": true
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
            "linesAboveImages": true
    } );
    map.addListener( "positionChanged", updateCustomMarkers );

    function updateCustomMarkers( event ) {
      var map = event.chart;

      for ( var x in map.dataProvider.images ) {
        var image = map.dataProvider.images[ x ];
        if (x == 1) {
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

## Coming Visits
+   荃灣 Tsuen Wan
    +   [機場核心計劃展覽中心]()
+   沙田 Sha Tin
    +   [香港文化博物館 Hong Kong Heritage Museum](https://www.douban.com/event/28945753/)
    +   [沙田馬場 Sha Tin Racecourse](http://entertainment.hkjc.com/entertainment/chinese/go-racing/sha-tin-racecourse.aspx)
    +   [大圍顯徑 Hen Keng]()
+   屯門 Tuen Mun
    +   [香港黃金海岸 Hong Kong Gold Coast]()
    +   [蝴蝶灣 Butterfly Beach]()
+   西貢 Sai Kung
    +   [銀線灣 Silverstrand Beach]()

## Dining
+   荃灣 Tsuen Wan
    +   帝景酒店 Royal View Hotel
        +   空中花園 Roof Top Garden
    +   荃灣 Tsuen Wan
        +   海連茶樓 (福來邨永嘉樓地下15-16號舖)
        +   常滿雞煲火鍋專門店 (二陂坊25號地下)
        +   正宗山西刀削麵皇 (沙咀道245號坤德樓地下)
        +   老闆娘雲南米線 (曹公街8號香車街熟食中心)
+   九龍塘 Kowloon Tong
    +   香港城市大學 City University of Hong Kong
        +   Bistro (7樓，Academic 3)
        +   城大中菜廳 (8樓，康樂樓)
+   沙田 Sha Tin
    +   城門河 Shing Mun River
        +   陳根記 Chan Kun Kee (禾輋邨街市大牌檔)
+   中環 Central
    +   上環站A2出口
        +   九記牛腩 Kau Kee Restaurant (歌賦街21號地舖)
        +   PMQ元創方 Police Married Quarters
+   西貢 Sai Kung
    +   Tui Min Hoi
        +   滿記甜品 (普通道10號地下)
        +   西貢松記車仔麵 (福民路高勝樓)
