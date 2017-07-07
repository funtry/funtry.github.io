---
layout: post
title: "Chinese aircraft carrier Liaoning"
author: "Fangli ZHANG"
categories: journal
tags: [life, aircraft carrier]
image:
  feature: /note/Liaoning.jpg
  teaser: /note/Liaoning_teaser.jpg
  credit: visiting hong kong
  creditlink: ""
---

## Stonecutters Island
+   The Convention of Peking (1860)
![](https://upload.wikimedia.org/wikipedia/commons/b/be/Map_of_Hong_Kong_in_First_Convention_of_Peking_in_1860.jpg)
+   The Stonecutters Island (2010)
![](https://upload.wikimedia.org/wikipedia/commons/8/86/Stonecutters_Island_2010.jpg)

## Visiting plan (6 km)
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

            "lines": [{
                  "latitudes": [ 22.337274, 22.319841 ],
                  "longitudes": [ 114.175934, 114.135016 ]
                }, {
                  "latitudes": [ 22.337857, 22.337274 ],
                  "longitudes": [ 114.181962, 114.175934 ]
                }, {
                  "latitudes": [ 22.321925, 22.337274 ],
                  "longitudes": [ 114.172735, 114.175934 ]
                }, {
                  "latitudes": [ 22.361471, 22.337274 ],
                  "longitudes": [ 114.171836, 114.175934 ]
                }, {
                  "latitudes": [ 22.319841, 22.296552 ],
                  "longitudes": [ 114.135016, 114.074463 ]
            }],

            "images": [ {
              "type": "circle",
              "title": "Hong Kong Baptist University",
              "latitude": 22.337857,
              "longitude": 114.181962,
              "scale": 0.2
            }, {
              "color": "#00FF00",
              "svgPath": targetSVG,
              "title": "Stonecutters Island",
              "latitude": 22.319841,
              "longitude": 114.135016,
              "scale": 0.6
            }, {
                  "type": "circle",
              "title": "Hen Keng",
              "latitude": 22.361471,
              "longitude": 114.171836,
              "scale": 0.2
            }, {
                "color": "#FFFF00",
                "type": "circle",
              "title": "Kowloon Tong Station",
              "latitude": 22.337274,
              "longitude": 114.175934,
              "scale": 0.5
            }, {
              "svgPath": targetSVG,
              "title": "Aircraft Carrier Liaoning",
              "latitude": 22.296552,
              "longitude": 114.074463,
              "scale": 0.8
            }, {
                  "type": "circle",
              "title": "Mong Kok East",
              "latitude": 22.321925,
              "longitude": 114.172735,
              "scale": 0.2
            } ]
        },

            "areasSettings": {
                "color": "#FFCC00",
                "outlineThickness": 0,
                "unlistedAreasColor": "#FFFFFF",
                "unlistedAreasAlpha": 0.6
            },

            "imagesSettings": {
              "color": "#FF0000",
              "rollOverColor": "#FFFF00",
              "selectedColor": "#000000"
            },

            "linesSettings": {
              "arc": -0.8,
              "arrow": "none",
              "color": "#FFFF00",
              "alpha": 1,
              "arrowAlpha": 0.9,
              "arrowSize": 0,
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
        if (x == 1 || x == 4) {
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

### Acknowledgements
Special thanks to Miss WU for her kind invitation.
