---
show_in_nav: false
layout: post
title: "2019-2020学年第2学期GIS空间分析课程"
author: "Fangli ZHANG"
categories: course
notshow: 1
tags: [course, undergraduate]
image:
  feature: course/GIS-SA-2020/GIS-SA.png
  teaser: course/GIS-SA-2020/GIS-SA.png
  credit: javascript
  creditlink: ""
---

# 2019-2020学年第2学期GIS空间分析课程

长江大学地球科学学院地信系

## 目录
{:.no_toc}
1. TOC
{:toc}

## 课程信息
+ 课程名称：GIS空间分析（GIS Spatial Analysis）
+ 课程编码：478412
+ 课程学时：32 = 20理论 + 12上机
+ 理论课：9-14周，周二第二大节，周四第一大节
+ 上机课：返校后进行
+ 先修课程：GIS原理、ArcGIS地理信息系统
+ 慕课资源：地理信息系统（GIS）实验，汤国安等，南京师范大学
+ 选课学生：地信21701班（35人）、地信21702班（34人）、其他（3人）

## 课程Q&A
### Q: 计量地理学 Quantitative Geography
A: 又称计量地理学或地理数量方法，应用数学思想方法和计算机技术进行地理学研究的科学，与定性研究方法结合共同构筑了地理学研究方法的科学体系：
+ 古代，地理学与数学之源泉科学 —— 几何学
+ 近代，地理学运用分析数学之先河 —— 区位论
+ 20世纪20-30年代，地理要素分析 —— 数理统计
+ 20世纪50年代，现代地理学 —— 计量运动
+ 20世纪50年代末至60年代末，引入统计学方法（初期）
+ 20世纪60年代末至70年代，多元统计法和计算机技术（中期）
+ 20世纪70年代至今，地理学与运筹学、模糊数学、系统科学、GIS技术等相结合（日趋成熟阶段）

### Q: 地理计算学 GeoComputation
A: 计算地理学 Geocomputational Geography。20世纪90年代中期，英国著名地理学家，利兹大学计算地理研究中心Stan Openshaw教授认为空间数据挖掘已成为数量地理学中一个重要分支，并以GeoComputation命名这个新的学科，因此他被称为“地理计算之父”。地理计算学融合了计算机科学、地理学、地球信息科学（Geomatics）、信息科学、数学和统计学理论与方法。

## 方小地和他的小伙伴们

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
            {"type": "circle", "title": "<b>新疆库尔勒</b><br/>杨亚婷","latitude":41.73,"longitude":86.16, "scale": 0.3},
            {"type": "circle", "title": "<b>河南驻马店</b><br/>段雪昆","latitude":33.33,"longitude":113.83, "scale": 0.3},
            {"type": "circle", "title": "<b>山西临汾</b><br/>雷凯睿","latitude":36.06,"longitude":111.49, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北仙桃</b><br/>万文慧","latitude":30.19,"longitude":113.18, "scale": 0.3},
            {"type": "circle", "title": "<b>甘肃兰州</b><br/>贾玉永","latitude":35.96,"longitude":104.02, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北利川</b><br/>邓莉婷","latitude":30.31,"longitude":109.04, "scale": 0.3},
            {"type": "circle", "title": "<b>河北定州</b><br/>陈婉婷","latitude":38.51,"longitude":114.99, "scale": 0.3},
            {"type": "circle", "title": "<b>浙江金华</b><br/>马紫雯","latitude":29.09,"longitude":120.22, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北襄阳</b><br/>张怿如","latitude":32.26,"longitude":111.56, "scale": 0.3},
            {"type": "circle", "title": "<b>福建福州</b><br/>林竑川","latitude":26.51,"longitude":119.54, "scale": 0.3},
            {"type": "circle", "title": "<b>四川成都</b><br/>李书晨","latitude":30.69,"longitude":104.03, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北仙桃</b><br/>李文宇","latitude":30.23,"longitude":113.29, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北襄阳</b><br/>朱博宽","latitude":32.16,"longitude":111.82, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北襄阳</b><br/>陆雨竹","latitude":32.04,"longitude":112.14, "scale": 0.3},
            {"type": "circle", "title": "<b>天津蓟州</b><br/>解诗音","latitude":40.05,"longitude":117.44, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北十堰</b><br/>韩奕萌","latitude":32.62,"longitude":110.74, "scale": 0.3},
            {"type": "circle", "title": "<b>云南水富</b><br/>申誉华","latitude":28.63,"longitude":104.41, "scale": 0.3},
            {"type": "circle", "title": "<b>吉林长春</b><br/>陈冬如","latitude":43.48,"longitude":125.19, "scale": 0.3},
            {"type": "circle", "title": "<b>吉林长春</b><br/>何辉羽","latitude":43.86,"longitude":125.27, "scale": 0.3},
            {"type": "circle", "title": "<b>青海海东</b><br/>蓟元俊","latitude":36.29,"longitude":102.64, "scale": 0.3},
            {"type": "circle", "title": "<b>甘肃白银</b><br/>赵彦雄","latitude":36.55,"longitude":104.17, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北十堰</b><br/>夏小田","latitude":32.33,"longitude":109.70, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北天门</b><br/>王赛","latitude":30.61,"longitude":113.03, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北武汉</b><br/>赵曦","latitude":30.50,"longitude":114.37, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北武汉</b><br/>方慧","latitude":30.00,"longitude":114.21, "scale": 0.3},
            {"type": "circle", "title": "<b>重庆大足</b><br/>陈欢","latitude":29.63,"longitude":105.73, "scale": 0.3},
            {"type": "circle", "title": "<b>辽宁锦州</b><br/>高鹤","latitude":41.14,"longitude":121.15, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北恩施</b><br/>汤龙","latitude":30.68,"longitude":109.76, "scale": 0.3},
            {"type": "circle", "title": "<b>河南周口</b><br/>邱霖","latitude":33.55,"longitude":115.14, "scale": 0.3},
            {"type": "circle", "title": "<b>广东广州</b><br/>李宇","latitude":23.06,"longitude":113.19, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北天门</b><br/>张萌","latitude":30.25,"longitude":112.35, "scale": 0.3},
            {"type": "circle", "title": "<b>贵州盘县</b><br/>丁根","latitude":26.00,"longitude":104.50, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北武汉</b><br/>荣萌","latitude":30.22,"longitude":114.05, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北孝感</b><br/>刘鑫","latitude":31.92,"longitude":113.91, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北安陆</b><br/>陈倩","latitude":31.15,"longitude":113.41, "scale": 0.3},
            {"type": "circle", "title": "<b>湖南岳阳</b><br/>欧阳明远", "latitude": 29.33, "longitude": 113.09, "scale": 0.3},
            {"type": "circle", "title": "<b>河南安阳</b><br/>任安晶", "latitude": 36.1, "longitude": 114.33, "scale": 0.3},
            {"type": "circle", "title": "<b>山东聊城</b><br/>崔维帅", "latitude": 36.62, "longitude": 116.23995, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北咸宁</b><br/>王建", "latitude": 29.6, "longitude": 114.47, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北武汉</b><br/>凃怿闻", "latitude": 30.63, "longitude": 114.38, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北黄冈</b><br/>鲁宏辉", "latitude": 30.4, "longitude": 115.25, "scale": 0.3},
            {"type": "circle", "title": "<b>河南周口</b><br/>王刘坤", "latitude": 33.73, "longitude": 114.88, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北荆州</b><br/>饶瑩春", "latitude": 30.34, "longitude": 112.23, "scale": 0.3},
            {"type": "circle", "title": "<b>河北沧州</b><br/>李晓文", "latitude": 38.3, "longitude": 116.87, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北咸宁</b><br/>周有恩", "latitude": 29.88, "longitude": 114.31, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北荆门</b><br/>杨旨钊", "latitude": 30.71, "longitude": 112.59, "scale": 0.3},
            {"type": "circle", "title": "<b>乌鲁木齐</b><br/>唐晴", "latitude": 45.04, "longitude": 86.56, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北仙桃</b><br/>刘佳昊", "latitude": 30.36, "longitude": 113.43, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北武汉</b><br/>朱恰", "latitude": 30.57, "longitude": 114.37, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北咸宁</b><br/>熊夏悦", "latitude": 29.88, "longitude": 114.3, "scale": 0.3},
            {"type": "circle", "title": "<b>江西上饶</b><br/>方前程", "latitude": 28.3, "longitude": 117.95, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北利川</b><br/>段先兴", "latitude": 30.26, "longitude": 108.75, "scale": 0.3},
            {"type": "circle", "title": "<b>浙江金华</b><br/>徐涛", "latitude": 29.2, "longitude": 119.45, "scale": 0.3},
            {"type": "circle", "title": "<b>山东菏泽</b><br/>王亚茹", "latitude": 35.55, "longitude": 115.52, "scale": 0.3},
            {"type": "circle", "title": "<b>云南文山</b><br/>杨油加", "latitude": 23.49, "longitude": 104.3, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北孝感</b><br/>余龙", "latitude": 30.55, "longitude": 114.08, "scale": 0.3},
            {"type": "circle", "title": "<b>四川达州</b><br/>刘晓凤 ", "latitude": 30.94, "longitude": 107.96, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北孝感</b><br/>王丹阳", "latitude": 31.26, "longitude": 113.69, "scale": 0.3},
            {"type": "circle", "title": "<b>江西赣州</b><br/>李瑾", "latitude": 25.39, "longitude": 114.94, "scale": 0.3},
            {"type": "circle", "title": "<b>山西运城</b><br/>李灿", "latitude": 35.6, "longitude": 110.97, "scale": 0.3},
            {"type": "circle", "title": "<b>广东惠州</b><br/>程信昱", "latitude": 22.8, "longitude": 114.47, "scale": 0.3},
            {"type": "circle", "title": "<b>辽宁葫芦岛</b><br/>冯浚", "latitude": 40.71, "longitude": 120.84, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北荆门</b><br/>周再文", "latitude": 31.03, "longitude": 112.19, "scale": 0.3},
            {"type": "circle", "title": "<b>重庆秀山</b><br/>戴秀清", "latitude": 28.5, "longitude": 108.97, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北恩施</b><br/>朱俊", "latitude": 30.21, "longitude": 109.17, "scale": 0.3},
            {"type": "circle", "title": "<b>河南项城</b><br/>黄帅", "latitude": 37.12, "longitude": 114.33, "scale": 0.3},
            {"type": "circle", "title": "<b>青海西宁</b><br/>王新艳", "latitude": 31.42, "longitude": 109.37, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北咸宁</b><br/>陈哲", "latitude": 29.6, "longitude": 114.48, "scale": 0.3},
            {"type": "circle", "title": "<b>湖北随州</b><br/>谢济阳", "latitude": 32, "longitude": 112.88, "scale": 0.3}
            ]
        },

            "areasSettings": {
                "color": "#FFCC00",
                "outlineThickness": 0.3,
                "unlistedAreasColor": "#FFFFFF",
                "unlistedAreasAlpha": 0.6
            },

            "imagesSettings": {
              "color": "#00FF00",
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




## 授课日志

### 2020-04-07 雨课堂上课-GIS空间分析第一章地理空间数据分析与GIS
70/72名同学签到了课程，10:05-11:40，课程2节共90分钟，中途休息5分钟。

全程雨课堂授课，稳定。

![GIS空间分析-第一章地理空间数据分析与GIS](../assets/img/course/GIS-SA-2020/GIS-SA-1.png)
