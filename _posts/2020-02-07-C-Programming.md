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

## C语言程序设计课程Q&A
### Q: 如何重置VS2010的默认环境设置？
A: Visual Studio 2010程序界面，顶部菜单栏里选择“工具”-->“导入导出设置”，在弹出页面上寻选择“重置所有设置”，接着下一步，选择Visual C++开发设置，完成即可。

### Q: Visual Studio 2010是什么？
A: Visual Studio是微软（Microsoft）公司的集成开发环境（Integrated Development Environment，简称IDE），是一款辅助程序开发人员开发软件的应用软件，在开发工具内部就可以辅助编写源代码文本、并编译打包成为可用的程序。简而言之，就是你可以在里面编写源程序，然后编译成目标程序，连接成可执行应用程序，完成程序的编辑、编译、连接、执行一条龙服务，所以才叫“集成”的开发环境。
这其中，用来运行C语言程序的是Visual C++，可提供编辑C语言，C++以及C++/CLI等编程语言。当前最新的版本是Visual C++ 2019，曾经很经典的版本是Visual C++ 6.0（1998年8月），本门课程选用的是Visual C++ 2010（也即Visual C++ 10.0，2010年4月12日）。

### Q: 怎么编程？
A: 学好程序设计语言，熟悉程序运行环境，了解软件设计过程，然后应用来解决某个特定的问题。C语言就是本门课程介绍的一种高级程序设计语言，Visual Studio 2010就是这个程序的编写、编译和运行环境，后续课程——软件工程——会告诉大家怎么进行程序和软件设计，然后越来越多的专业课会告诉大家地理学领域有哪些问题等着大家用计算机去解决。

### Q: 什么是编程？
A: 人们描述(编制)计算机程序的工作被称为程序设计或者编程，这种工作的产品就是程序。计算机是一种通用的计算机器，加上一个或一组程序后，它就会变为处理某个专门问题、完成某种特殊工作的专用机器。人与计算机交流的基本方式就是提供要求它执行的程序。在命令计算机去执行某个程序之 后，计算机就会按照程序的规定，一丝不苟地执行其中的指令，直至程序结束。

### Q: 什么是计算机？
A: 计算机是人类发明的一种<font color=blue>自动</font>机器，计算机的最基本功能是可以执行一组基本操作，每个操作完成一件很简单的计算工作，例如整数的加减乘除运算等等。为使计算机能按人的指挥工作，每种计算机都提供了一套指令，其中的每一种指令对应着计算机能执行的一个基本动作。

### Q: 什么是程序？
A: 程序通常指完成某些事务（把大象放进冰箱）的一种既定方式和过程（开冰箱门、赶大象、关冰箱门）。


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


## C语言程序设计授课日志
### 2020-02-06 雨课堂开课-长江大学教务处关联课程师生
地信（测绘）21901和21902两个班共61名同学绑定了课程。
### 2020-02-07 雨课堂测试-Visual Studio 2010安装教程
27/61名同学参与了测试，通信正常，院系领导旁听了测试。
### 2020-02-09 雨课堂试讲-C语言程序设计第一章绪论
36/61名同学参与了试讲，试讲了30分钟，通信正常，互动勉强。
### 2020-02-11 雨课堂上课-C语言程序设计第一章绪论
61/61名同学签到了课程，16:05-17:40，课程2节共90分钟，中途休息5分钟。

雨课堂统计，弹幕163条，PPT5次互动分别有55、56、53、50、49名同学参与，余心大慰。

雨课堂故障，全程音频直播大体平稳，17:30左右服务器开始出现故障，部分同学无法刷新页面，无法参与互动，直至课程结束。

个人感受：
1. 大一新生们的学习热情很能激励我，希望我能在接下来的教学过程中不断进步。
2. C语言程序设计的课程内容很适合网络教学，但仍希望在教室里进行互动和板书。
3. 雨课堂屏幕无法共享，激光笔无法使用，需要在PPT中多设计指示动画，随讲解过程一并播放。
4. 雨课堂对视频、GIF动图支持效果不友好，辅以微信群聊天后略有改善。
5. 雨课堂弹幕、微信群聊天出现的问题，如果进行实时回应，则容易中断讲课，若继续讲课，又影响学习效果，希望在接下来的教学过程中能切换自如。
