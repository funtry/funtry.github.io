---
layout: page
title:
---

<html>
    <head>
        <style>
            #chartdiv {
                width: 100%;
                height: 320px;
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
    // svg path for target icon
    var targetSVG = "M9,0C4.029,0,0,4.029,0,9s4.029,9,9,9s9-4.029,9-9S13.971,0,9,0z M9,15.93 c-3.83,0-6.93-3.1-6.93-6.93S5.17,2.07,9,2.07s6.93,3.1,6.93,6.93S12.83,15.93,9,15.93 M12.5,9c0,1.933-1.567,3.5-3.5,3.5S5.5,10.933,5.5,9S7.067,5.5,9,5.5 S12.5,7.067,12.5,9z";

    var map = AmCharts.makeChart( "chartdiv", {
      "type": "map",
      "theme": "light",
      "dragMap": true,
      "projection": "miller",
      "mouseWheelZoomEnabled": true,
      "showBalloonOnSelectedObject": true,
      "backgroundAlpha": 1,
      "backgroundColor": "#000033",

      "dataProvider": {
        "map": "worldLow",
        "zoomLevel": 1,
        "zoomLongitude": 10,
        "zoomLatitude": 25,
        <!-- "getAreasFromMap": true, -->

        "lines": [{
              "latitudes": [ 25.0339698, 30.5390822 ],
              "longitudes": [ 102.704877, 114.3527662 ]
            }, {
              "latitudes": [ 30.5390822, 28 ],
              "longitudes": [ 114.3527662, 188 ]
            }, {
              "latitudes": [ 28, 21.2961421 ],
              "longitudes": [ -182, -157.8197537 ]
            }, {
              "latitudes": [ 21.2961421, 44.5637844 ],
              "longitudes": [ -157.8197537, -123.2816383 ]
        }],

        "images": [ {
          "id": "Corvallis",
          "svgPath": targetSVG,
          "title": "Corvallis",
          "latitude": 44.5637844,
          "longitude": -123.2816383,
          "scale": 0.5
        }, {
          "svgPath": targetSVG,
          "title": "Honolulu",
          "latitude": 21.2961421,
          "longitude": -157.8197537,
          "scale": 0.25
        }, {
          "svgPath": targetSVG,
          "title": "Wuhan",
          "latitude": 30.5390822,
          "longitude": 114.3527662,
          "scale": 0.25
        }, {
          "color": "#FFFF00",
          "rollOverColor": "#FF0000",
          "svgPath": targetSVG,
          <!-- "title": "Hong Kong", -->
          "latitude": 22.337857,
          "longitude": 114.181962,
          "scale": 0.5
        }, {
          "color": "#FFFFFF",
          "rollOverColor": "#FF0000",
          "type": "circle",
          "title": "Kunming",
          "latitude": 25.0339698,
          "longitude": 102.704877,
          "scale": 0.25
        } ]
      },

      "areasSettings": {
          "color": "#FFCC00",
          "outlineThickness": 0,
          "unlistedAreasColor": "#999",
          "unlistedAreasAlpha": 0.8
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
        "arrowSize": 2,
        "thickness": 0.5
      },

      "balloon": {
          "drop": true
      },

      "zoomControl": {
        "homeButtonEnabled": false,
        "zoomControlEnabled": false,
        "buttonSize": 20,
        "gridHeight": 0,
        "draggerAlpha": 0,
        "gridAlpha": 0
      },

      "backgroundZoomsToTop": true,
      "linesAboveImages": true,

      "export": {
        "enabled": true
      }
    } );

    map.addListener( "positionChanged", updateCustomMarkers );

    function updateCustomMarkers( event ) {
      var map = event.chart;

      for ( var x in map.dataProvider.images ) {
        var image = map.dataProvider.images[ x ];
        if (x == 0 || x == 3) {
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
