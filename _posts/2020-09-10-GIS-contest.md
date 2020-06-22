---
show_in_nav: false
layout: post
title: "2020年第十二届全国高校GIS技能大赛"
author: "Fangli ZHANG"
categories: thesis
notshow: 1
tags: [contest, undergraduate]
image:
    feature: contest/GIS_contest_2020.png
    teaser: contest/GIS_contest_2020.png
    credit: javascript
    creditlink: ""
---

# 2020年第十二届全国高校GIS技能大赛

长江大学地球科学学院地理信息系

## 目录
{:.no_toc}
1. TOC
{:toc}

## 2020526 组建参赛队伍

<html>
<style type="text/css">
.anchorBL{
    display:none
}
</style>
<head>
    <meta charset="utf-8">
    <title>方小地</title>
    <script src="../echarts/echarts-master/dist/echarts.js"></script>
    <script src="../echarts/echarts-master/dist/extension/bmap.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=UQIbZ8RrepxcyoSARRWIrIxZNdSyt96f"></script>
</head>
<body>
    <div id="main" style="width: 100%; height: 960px;"></div>
    <script type="text/javascript">
    var myMap = echarts.init(document.getElementById('main'));

    var data = [
        {name: '陈冬如', value: 1},
        {name: '李晓文', value: 1},
        {name: '宋卓敏', value: 1},
        {name: '方小地', value: 1}
    ];

    var geoCoordMap = {
        '陈冬如':[125.19, 43.48],
        '李晓文':[116.87,38.3],
        '宋卓敏':[111.14125,37.525415],
        '方小地':[114.035351,30.538824]
    };

    var convertData = function (data) {
        var res = [];
        for (var i = 0; i < data.length; i++) {
            var geoCoord = geoCoordMap[data[i].name];
            if (geoCoord) {
                res.push({
                    name: data[i].name,
                    value: geoCoord.concat(data[i].value)
                });
            }
        }
        return res;
    };

    var option = {
        backgroundColor: '#ffffff',
        title: {
            text: '',
            subtext: '',
            sublink: '',
            left: 'center',
            textStyle: {
                color: '#ffffff'
            }
        },
        tooltip : {
            trigger: 'item',
            formatter: function(data) {
                return data.name;
            }
        },
        bmap: {
            center: [114, 31],
            zoom: 5,
            roam: true,
            mapStyle: {
                styleJson: [
                    {
                        "featureType": "water",
                        "elementType": "all",
                        "stylers": {
                            "color": "#b8cefa"
                        }
                    },
                    {
                        "featureType": "land",
                        "elementType": "all",
                        "stylers": {
                            "color": "#f3f3f3"
                        }
                    },
                    {
                        "featureType": "boundary",
                        "elementType": "geometry",
                        "stylers": {
                            "color": "#7f7f7f"
                        }
                    },
                    {
                        "featureType": "railway",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "highway",
                        "elementType": "geometry",
                        "stylers": {
                            "color": "#004981",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "highway",
                        "elementType": "geometry.fill",
                        "stylers": {
                            "color": "#005b96",
                            "lightness": 1,
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "highway",
                        "elementType": "labels",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "arterial",
                        "elementType": "geometry",
                        "stylers": {
                            "color": "#004981",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "arterial",
                        "elementType": "geometry.fill",
                        "stylers": {
                            "color": "#00508b",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "poi",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "green",
                        "elementType": "all",
                        "stylers": {
                            "color": "#056197",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "subway",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "manmade",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "local",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "arterial",
                        "elementType": "labels",
                        "stylers": {
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "building",
                        "elementType": "all",
                        "stylers": {
                            "color": "#1a5787",
                            "visibility": "off"
                        }
                    },
                    {
                        "featureType": "label",
                        "elementType": "all",
                        "stylers": {
                            "visibility": "off"
                        }
                    }
                ]
            }
        },
        series : [
            {
                name: '队员',
                type: 'effectScatter',
                coordinateSystem: 'bmap',
                data: convertData(data.slice(0, 3)),
                symbolSize: function (val) {
                    return val[2] *20;
                },
                encode: {
                    value: 2
                },
                showEffectOn: 'render',
                rippleEffect: {
                    brushType: 'stroke'
                },
                hoverAnimation: true,
                label: {
                    color: "black",
                    formatter: '{b}',
                    position: 'top',
                    show: true
                },
                itemStyle: {
                    color: "magenta",
                    shadowBlur: 10,
                    shadowColor: "#333"
                },
                zlevel: 1
            },
            {
                name: '指导',
                type: 'effectScatter',
                coordinateSystem: 'bmap',
                data: convertData(data.slice(3, 4)),
                symbolSize: function (val) {
                    return val[2] *12;
                },
                encode: {
                    value: 2
                },
                showEffectOn: 'render',
                rippleEffect: {
                    brushType: 'stroke'
                },
                hoverAnimation: true,
                label: {
                    color: "black",
                    formatter: '{b}',
                    position: 'bottom',
                    show: true
                },
                itemStyle: {
                    color: "blue",
                    shadowBlur: 10,
                    shadowColor: "#333"
                },
                zlevel: 1
            }
        ]
    };

    myMap.setOption(option);
    </script>
</body>
</html>


## 2020614 确定参赛主题
武汉人物

<html>
<style type="text/css">
.anchorBL{
    display:none
}
</style>
<head>
    <meta charset="utf-8">
    <title>武汉人物</title>
    <script type="text/javascript" src="../echarts/echarts-master/dist/echarts.js"></script>
    <script type="text/javascript" src="../echarts/echarts-master/dist/extension/bmap.js"></script>
    <script type="text/javascript" src="../echarts/echarts-master/benchmark/dep/jquery/jquery.js"></script>
    <script type="text/javascript" src="../echarts/echarts-master/map/js/china.js"></script>
    <script type="text/javascript" src="../echarts/echarts-master/map/js/province/hubei.js"></script>
    <script type="text/javascript" src="../echarts/echarts-master/map/js/province/shanxi.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=3.0&ak=UQIbZ8RrepxcyoSARRWIrIxZNdSyt96f"></script>
</head>
<body>
    <div id="main0" style="width: 100%; height: 640px;"></div>

    <script type="text/javascript">
//container 为div的id
var dom = document.getElementById("main0");
//得到echarts的实例对象
var myChart = echarts.init(dom);
initEcharts('山西');
function initEcharts(pName) {
  //关键是配置项
  var option = {
    series: [{
      name: '网点个数',
      //series[i]-map:系列列表。每个系列通过 type 决定自己的图表类型,此处是地图类型
      type: 'map',
      mapType: pName,
      //地图区域的多边形 图形样式，有 normal 和 emphasis 两个状态
      itemStyle: {
        //normal 是图形在默认状态下的样式；
        normal: {
          show: true,
          areaColor: "#CECECE",
          borderColor: "#FCFCFC",
          borderWidth: "1"
        },
        //emphasis 是图形在高亮状态下的样式，比如在鼠标悬浮或者图例联动高亮时。
        emphasis: {
          show: true,
          areaColor: "#C8A5DF",
        }
      },
      //图形上的文本标签，可用于说明图形的一些数据信息
      label: {
        normal: {
          show: true
        },
        emphasis: {
          show: true
        }
      },
    }],
    title: {
      text: pName,
      left: 'center'
    }
  };
  //使用刚指定的配置项和数据显示图表。
  myChart.setOption(option);
}
//定义全国省份的数组
var provinces = ['datong', 'shuozhou', 'xinzhou', 'lvliang', 'taiyuan', 'yangquan', 'jinzhong', 'linfen', 'changzhi', 'jincheng', 'yuncheng'];
var provincesText = ['大同市', '朔州市', '忻州市', '吕梁市', '太原市', '阳泉市', '晋中市', '临汾市', '长治市', '晋城市', '运城市'	];
myChart.on('click', function(param) {
  //console.log(param);
  //遍历取到provincesText 中的下标  去拿到对应的省js
  for (var i = 0; i < provincesText.length; i++) {
    if (param.name == provincesText[i]) {
      //显示对应省份的方法
      showProvince(provincesText[i],provinces[i]);
      break;
    }
  }
});
//展示对应的省
function showProvince(pText,pName) {
  loadBdScript('$' + pName + 'JS', 'js/province/' + pName + '.js', function() {
    //初始化echarts
    initEcharts(pText);
  });
}
//加载对应的JS
function loadBdScript(scriptId, url, callback) {
  var script = document.createElement("script")
  script.type = "text/javascript";
  if (script.readyState) { //IE
    script.onreadystatechange = function() {
      if (script.readyState == "loaded" || script.readyState == "complete") {
        script.onreadystatechange = null;
        callback();
      }
    };
  } else { //Others
    script.onload = function() {
      callback();
    };
  }
  script.src = url;
  script.id = scriptId;
  document.getElementsByTagName("head")[0].appendChild(script);
};

    </script>
</body>

</html>
