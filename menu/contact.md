---
layout: page
title: Contact me
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
      "backgroundColor": "#000",

      "dataProvider": {
        "map": "worldLow",
        "zoomLevel": 1,
        "zoomLongitude": 10.685223,
        "zoomLatitude": 25.0,
        <!-- "getAreasFromMap": true, -->

        "images": [
        <!-- resident -->
        {"svgPath": targetSVG, "title": "Xinguancun", "latitude": 29.9948936, "longitude": 112.660802, "scale": 0.2, "color": "#FF0000"},
        {"type": "circle", "title": "Jingzhou", "latitude": 30.341304, "longitude": 112.212773, "scale": 0.2},
        {"type": "circle", "title": "Wuhan", "latitude": 30.5390822, "longitude": 114.3527662, "scale": 0.2},
        {"type": "circle", "title": "Beijing", "latitude": 39.9869171, "longitude": 116.3036799, "scale": 0.2},
        {"type": "circle", "title": "Hong Kong", "latitude": 22.337857, "longitude": 114.181962, "scale": 0.2},
        {"type": "circle", "title": "Nanjing", "latitude": 32.110798, "longitude": 118.9626781, "scale": 0.2},
        {"svgPath": targetSVG, "title": "Yangtze University", "latitude": 30.532630, "longitude": 114.028565, "scale": 0.3, "color": "#FF0000"},
        {"type": "circle", "title": "Chiasso", "latitude": 45.833905, "longitude": 9.032748, "scale": 0.2},
        {"type": "circle", "title": "Como", "latitude": 45.818056, "longitude": 9.066017, "scale": 0.2},
        {"type": "circle", "title": "Venice", "latitude": 45.43086, "longitude": 12.334162, "scale": 0.2},
        {"type": "circle", "title": "Florence", "latitude": 43.768844, "longitude": 11.25357, "scale": 0.2},
        {"type": "circle", "title": "Milan", "latitude": 45.462403, "longitude": 9.186216, "scale": 0.2},
        {"type": "circle", "title": "Prague", "latitude": 50.0598054, "longitude": 14.3251976, "scale": 0.2},
        {"type": "circle", "title": "Karlovy Vary", "latitude": 50.23022, "longitude": 12.867841, "scale": 0.2},
        {"type": "circle", "title": "Český Krumlov", "latitude": 48.973443, "longitude": 14.472547, "scale": 0.2},
        {"type": "circle", "title": "Ceske Budejovice", "latitude": 48.809801, "longitude": 14.314063, "scale": 0.2},
        {"type": "circle", "title": "Yichang", "latitude": 30.685358, "longitude": 111.267151, "scale": 0.2},
        {"type": "circle", "title": "Xiangyang", "latitude": 31.931969, "longitude": 112.929498, "scale": 0.2},
        {"type": "circle", "title": "Chengdu", "latitude": 30.584186, "longitude": 104.056221, "scale": 0.2},
        {"type": "circle", "title": "Shenyang", "latitude": 41.795374, "longitude": 123.429275, "scale": 0.2},
        {"type": "circle", "title": "Chongming Island", "latitude": 31.623527, "longitude": 121.396618, "scale": 0.2},
        {"type": "circle", "title": "Shanghai", "latitude": 31.227287, "longitude": 121.459633, "scale": 0.2},
        {"type": "circle", "title": "Heaven Lake", "latitude": 42.021411, "longitude": 128.060149, "scale": 0.2},
        {"type": "circle", "title": "Changchun", "latitude": 43.822262, "longitude": 125.324109, "scale": 0.2},
        {"type": "circle", "title": "Yanbian Antu", "latitude": 43.10331, "longitude": 128.865288, "scale": 0.2},
        {"type": "circle", "title": "Shaoxing", "latitude": 29.996625, "longitude": 120.58591, "scale": 0.2},
        {"type": "circle", "title": "Hangzhou", "latitude": 30.268311, "longitude": 120.153467, "scale": 0.2},
        {"type": "circle", "title": "Xiangtan", "latitude": 27.827308, "longitude": 112.940775, "scale": 0.2},
        {"type": "circle", "title": "Yueyang", "latitude": 29.363103, "longitude": 113.114635, "scale": 0.2},
        {"type": "circle", "title": "Changsha", "latitude": 28.216436, "longitude": 112.940859, "scale": 0.2},
        {"type": "circle", "title": "Changzhou", "latitude": 31.808967, "longitude": 119.974338, "scale": 0.2},

        <!--{"type": "circle", "title": "Jianshui", "latitude": 23.633042, "longitude": 102.82543, "scale": 0.2},
        {"type": "circle", "title": "Mojiang", "latitude": 23.427488, "longitude": 101.686784, "scale": 0.2},
        {"type": "circle", "title": "Pu'er", "latitude": 22.782715, "longitude": 100.967927, "scale": 0.2},
        {"type": "circle", "title": "Xishuangbanna", "latitude": 22.006043, "longitude": 100.802042, "scale": 0.2},
        {"type": "circle", "title": "Dali", "latitude": 25.61027, "longitude": 100.270071, "scale": 0.2},
        {"type": "circle", "title": "Lijiang", "latitude": 26.853597, "longitude": 100.227114, "scale": 0.2},
        {"type": "circle", "title": "Puzhehei", "latitude": 24.131957, "longitude": 104.119156, "scale": 0.2},
        {"type": "circle", "title": "Gejiu", "latitude": 23.357424, "longitude": 103.155472, "scale": 0.2},
        {"type": "circle", "title": "Mengzi", "latitude": 23.363066, "longitude": 103.398048, "scale": 0.2},
        {"type": "circle", "title": "Soeul", "latitude": 37.56171, "longitude": 126.969821, "scale": 0.2},
        {"type": "circle", "title": "Honolulu", "latitude": 21.2961421, "longitude": -157.8197537, "scale": 0.2},
        {"type": "circle", "title": "Corvallis", "latitude": 44.5637844, "longitude": -123.2816383, "scale": 0.2},-->

        <!--湖北-->
        {"type": "circle", "title": "襄阳", "latitude": 32.02, "longitude": 112.08, "scale": 0.2},
        {"type": "circle", "title": "随州", "latitude": 31.42, "longitude": 113.22, "scale": 0.2},
        {"type": "circle", "title": "孝感", "latitude": 30.56, "longitude": 113.54, "scale": 0.2},
        {"type": "circle", "title": "广水", "latitude": 31.62, "longitude": 113.83, "scale": 0.2},
        {"type": "circle", "title": "宣化店", "latitude": 31.68, "longitude": 114.50, "scale": 0.2},
        {"type": "circle", "title": "仙桃", "latitude": 30.22, "longitude": 113.27, "scale": 0.2},

        <!--河南-->
        {"type": "circle", "title": "项城", "latitude": 33.45, "longitude": 114.90, "scale": 0.2},
        {"type": "circle", "title": "周口", "latitude": 33.37, "longitude": 114.38, "scale": 0.2},
        {"type": "circle", "title": "开封", "latitude": 34.47, "longitude": 114.21, "scale": 0.2},
        {"type": "circle", "title": "郑州", "latitude": 34.77, "longitude": 113.65, "scale": 0.2},
        {"type": "circle", "title": "洛阳", "latitude": 34.42, "longitude": 112.27, "scale": 0.2},
        {"type": "circle", "title": "南阳", "latitude": 33.00, "longitude": 112.32, "scale": 0.2},

        <!--山东-->
        {"type": "circle", "title": "枣庄", "latitude": 34.52, "longitude": 117.33, "scale": 0.2},
        {"type": "circle", "title": "临沂", "latitude": 38.55, "longitude": 121.36, "scale": 0.2},
        {"type": "circle", "title": "青岛", "latitude": 36.06, "longitude": 120.36, "scale": 0.2},
        {"type": "circle", "title": "济南", "latitude": 36.64, "longitude": 117.12, "scale": 0.2},

        <!--辽宁-->
        {"type": "circle", "title": "大连", "latitude": 38.55, "longitude": 121.36, "scale": 0.2},

        <!--甘肃-->
        {"type": "circle", "title": "兰州", "latitude": 36.04, "longitude": 103.51, "scale": 0.2},

        <!--江苏-->
        {"type": "circle", "title": "镇江", "latitude": 32.11, "longitude": 119.27, "scale": 0.2},
        {"type": "circle", "title": "扬州", "latitude": 32.23, "longitude": 119.26, "scale": 0.2},
        {"type": "circle", "title": "无锡", "latitude": 31.34, "longitude": 120.18, "scale": 0.2},
        {"type": "circle", "title": "江阴", "latitude": 31.83, "longitude": 120.43, "scale": 0.2},

        <!--江西-->
        {"type": "circle", "title": "井冈山", "latitude": 38.55, "longitude": 121.36, "scale": 0.2},
        {"type": "circle", "title": "庐山", "latitude": 29.56, "longitude": 116.01, "scale": 0.2},
        {"type": "circle", "title": "南昌", "latitude": 28.68, "longitude": 115.86, "scale": 0.2},

        <!--湖南-->
        {"type": "circle", "title": "怀化", "latitude": 27.33, "longitude": 109.58, "scale": 0.2},
        {"type": "circle", "title": "凤凰", "latitude": 28.00, "longitude": 110.00, "scale": 0.2},
        {"type": "circle", "title": "郴州", "latitude": 25.46, "longitude": 113.02, "scale": 0.2},

        <!--福建-->
        {"type": "circle", "title": "平谭", "latitude": 27.33, "longitude": 119.72, "scale": 0.2},
        {"type": "circle", "title": "福州", "latitude": 26.05, "longitude": 119.18, "scale": 0.2},


        <!--海南-->
        {"type": "circle", "title": "海口", "latitude": 20.02, "longitude": 110.20, "scale": 0.2},
        {"type": "circle", "title": "三亚", "latitude": 18.14, "longitude": 109.31, "scale": 0.2},
        {"type": "circle", "title": "潭门", "latitude": 19.14, "longitude": 110.28, "scale": 0.2},
        {"type": "circle", "title": "渚碧", "latitude": 10.92, "longitude": 114.08, "scale": 0.2},
        {"type": "circle", "title": "永暑", "latitude": 9.55, "longitude": 112.88, "scale": 0.2},
        {"type": "circle", "title": "九章", "latitude": 9.72, "longitude": 114.28, "scale": 0.2},
        {"type": "circle", "title": "西沙", "latitude": 16.50, "longitude": 111.67, "scale": 0.2},

        {"type": "circle", "title": "Shenzhen", "latitude": 22.532757, "longitude": 113.917776, "scale": 0.2},
        {"type": "circle", "title": "Zhuhai", "latitude": 22.2778, "longitude": 113.570599, "scale": 0.2},
        {"type": "circle", "title": "Macau", "latitude": 22.189968, "longitude": 113.548058, "scale": 0.2},
        {"type": "circle", "title": "Dongguan", "latitude": 23.037614, "longitude": 113.756288, "scale": 0.2},
        {"type": "circle", "title": "Guangzhou", "latitude": 23.116626, "longitude": 113.248428, "scale": 0.2}
        ]
      },

      "areasSettings": {
          "color": "#FFCC00",
          "outlineThickness": 0,
          "unlistedAreasColor": "#999",
          "unlistedAreasAlpha": 0.6
      },

      "imagesSettings": {
        "color": "#00FF00",
        "rollOverColor": "#FFFF00",
        "selectedColor": "#000000",
        "rollOverScale": 2
      },

      "linesSettings": {
        "arc": 0.4,
        "arrow": "none",
        "color": "#FFFF00",
        "alpha": 1,
        "arrowAlpha": 0.9,
        "arrowSize": 0,
        "thickness": 0.5
      },

      "balloon": {
          "drop": true,
          "enabled": false
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
        "enabled": false
      }
    } );

    map.addListener( "positionChanged", updateCustomMarkers );

    function updateCustomMarkers( event ) {
      var map = event.chart;

      for ( var x in map.dataProvider.images ) {
        var image = map.dataProvider.images[ x ];
        <!--if (x == 5 || x == 6) {-->
        if (x == 6) {
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

    <!-- qq enterprise mail -->
    <style>
      .bizmail_loginpanel{font-size:12px;width:99.5%;height:auto;border:1px solid #cccccc;background:#ffffff;}
      .bizmail_LoginBox{padding:20px 20px;}
      .bizmail_loginpanel h3{padding-bottom:5px;margin:0 0 5px 0;border-bottom:1px solid #cccccc;font-size:14px;}
      .bizmail_loginpanel form{margin:10;padding:10;}
      .bizmail_loginpanel input.text{font-size:12px;width:130px;height:20px;margin:0 2px;border:1px solid #C3C3C3;border-color:#7C7C7C #C3C3C3 #C3C3C3 #9A9A9A;}
      .bizmail_loginpanel .bizmail_column{height:28px;}
      .bizmail_loginpanel .bizmail_column label{display:block;float:left;width:50px;height:24px;line-height:24px;font-size:12px;}
      .bizmail_loginpanel .bizmail_column .bizmail_inputArea{float:left;width:240px;}
      .bizmail_loginpanel .bizmail_column span{font-size:12px;word-wrap:break-word;margin-left: 2px;line-height:200%;}
      .bizmail_loginpanel .bizmail_SubmitArea{margin-left:30px;clear:both;}
      .bizmail_loginpanel .bizmail_SubmitArea a{font-size:12px;margin-left:5px;}
      .bizmail_loginpanel select{width:110px;height:20px;margin:0 2px;}
  </style>
  <script type="text/javascript" src="http://exmail.qq.com/en_US/htmledition/js_biz/outerlogin.js"  charset="gb18030"></script>
  <script type="text/javascript">
      writeLoginPanel({domainlist:"zhangfangli.cn", mode:"vertical"});
    </script>
</html>

<!-- If you are having any questions or suggestions, feel free to contact me. -->
If you are having any questions or suggestions, feel free to contact [me](http://www.zhangfangli.cn).
