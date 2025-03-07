---
show_in_nav: false
layout: post
title: "2020年第十二届全国高校GIS技能大赛"
author: "Fangli ZHANG"
categories: private
published:  false
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
                    normal: {
                        formatter: '{b}',
                        position: 'top',
                        show: true,
                        fontSize: 20
                    },
                    emphasis: {
                        show: true ,
                        color: '#00f',
                        fontSize: 24
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#ff00ff'
                    },
                    emphasis: {
                        color: '#00ff00'
                    }
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
                    normal: {
                        formatter: '{b}',
                        position: 'bottom',
                        show: true,
                        fontSize: 20
                    },
                    emphasis: {
                        show: true ,
                        color: '#00f',
                        fontSize: 24
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#000000'
                    },
                    emphasis: {
                        color: '#00ff00'
                    }
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
    <script type="text/javascript" src="../echarts/echarts-master/test/lib/jquery.min.js"></script>
</head>
<body>
    <div id="wuhan_people" style="width: 100%; height: 1024px;"></div>
    <script type="text/javascript">

    $.getJSON('https://geo.datav.aliyun.com/areas_v2/bound/420100_full.json', function (data){
        var name = "武汉人物";
        echarts.registerMap(name, data, {});
        var myChart = echarts.init(document.getElementById('wuhan_people'));

        var mapData = [
            {name: '蔡甸区', value: 430100}
        ];

        var data = [
            {name: '毛泽东-毛泽东同志主办的中央农民运动讲习所旧址', value: 1},
            {name: '毛泽东-东湖宾馆梅岭一号', value: 1},
            {name: '陈昌浩-陈昌浩旧居', value: 1},
            {name: '黎元洪-黎元洪墓', value: 1},
            {name: '吴运铎-吴运铎纪念馆', value: 1},
            {name: '吴运铎-运铎公园', value: 1},
            {name: '黎元洪-宋卿体育馆', value: 1},
            {name: '吴仪-武汉广场', value: 1},
            {name: '吴仪-汉正街', value: 1},
            {name: '吴仪-武汉海关', value: 1},
            {name: '吴仪-湖北省商务厅', value: 1},
            {name: '吴仪-国家进出口商品检验局', value: 1},
            {name: '吴仪-武汉经济技术开发区神龙汽车总装车间', value: 1},
            {name: '孟庆南-武汉凡谷电子技术研究所', value: 1},
            {name: '孙络络-睡虎山烈士陵园', value: 1},
            {name: '智宗-湖北省武汉市新洲区', value: 1},
            {name: '智宗-华中农业大学', value: 1},
            {name: '释本焕-湖北武汉新洲李集西张湾村', value: 1},
            {name: '释本焕-宝通禅寺', value: 1},
            {name: '项英-项英故里', value: 1},
            {name: '项英-京汉铁路总工会', value: 1},
            {name: '项英-汉口英租界', value: 1},
            {name: '陈一舟-武汉大学', value: 1},
            {name: '项英-武昌涵三宫的日新预备学堂', value: 1},
            {name: '项英-武昌模范大工厂', value: 1},
            {name: '项英-武昌察院坡的时中书店', value: 1},
            {name: '熊廷弼-熊公祠遗址', value: 1},
            {name: '熊廷弼-熊廷弼墓', value: 1},
            {name: '熊廷弼-江夏区金口熊享堂湾（金口熊公祠）', value: 1},
            {name: '熊廷弼-汤逊湖', value: 1},
            {name: '刘歆生-武汉市东西湖区柏泉', value: 1},
            {name: '刘歆生-东方汇理银行汉口分行旧址', value: 1},
            {name: '刘歆生-江汉路（原名歆生路）', value: 1},
            {name: '龙乐豪-华中科技大学', value: 1},
            {name: '杨弘远-武汉大学', value: 1},
            {name: '杨弘远-武汉大学', value: 1},
            {name: '石元春-武昌文华中学', value: 1},
            {name: '熊廷弼-武泰匣', value: 1},
            {name: '孙必干-武汉市第四中学', value: 1},
            {name: '孙必干-华中农业大学', value: 1},
            {name: '孙必干-湖北省汉阳永丰街董家店村', value: 1},
            {name: '费胜朝-武大附小', value: 1},
            {name: '费胜朝-武汉外国语学校', value: 1},
            {name: '费胜朝-武汉大学', value: 1},
            {name: '撒贝宁-武汉反电信网络诈骗中心', value: 1},
            {name: '撒贝宁-武汉一中', value: 1},
            {name: '朱轶-华中师范大学', value: 1},
            {name: '朱轶-武汉市电视台', value: 1},
            {name: '朱轶-楚天广播电台', value: 1},
            {name: '官琳-湖北电视台', value: 1},
            {name: '杨红樱-湖北少年儿童出版社', value: 1},
            {name: '文泽尔-文泽尔书友会图书馆', value: 1},
            {name: '石悦-中南财经政法大学', value: 1},
            {name: '蒋方舟-华中师范大学第一附属中学', value: 1},
            {name: '蒋方舟-长江文艺出版社', value: 1},
            {name: '严文井-武汉市第十四中学', value: 1},
            {name: '彭孟辑-武汉中央军事政治学校', value: 1},
            {name: '特雷莎·梅-武汉天河机场', value: 1},
            {name: '特雷莎·梅-武汉大学', value: 1},
            {name: '特雷莎·梅-黄鹤楼', value: 1},
            {name: '池莉-武汉市文学艺术界联合会', value: 1},
            {name: '池莉-武汉钢铁（集团）公司', value: 1},
            {name: '池莉-武汉科技大学', value: 1},
            {name: '池莉-武汉大学', value: 1},
            {name: '池莉-长江文艺出版社', value: 1},
            {name: '田长霖-武汉市江岸区二曜路', value: 1},
            {name: '田长霖-武汉市石门峰名人文化公园', value: 1},
            {name: '田长霖-武汉科技会展中心', value: 1},
            {name: '田长霖-武汉东湖新技术开发区', value: 1},
            {name: '田长霖-武汉市黄陂区前川街道第三小学', value: 1},
            {name: '桂希恩-武汉市第十四中学', value: 1},
            {name: '桂希恩-武汉大学中南医院', value: 1},
            {name: '桂希恩-华中科技大学同济医学院', value: 1},
            {name: '温家宝-阳逻港', value: 1},
            {name: '温家宝-东湖高新技术产业开发区', value: 1},
            {name: '温家宝-武汉重型机床集团公司', value: 1},
            {name: '温家宝-武汉天马微电子有限公司', value: 1},
            {name: '温家宝-中冶南方工程技术有限公司', value: 1},
            {name: '温家宝-华中科技大学', value: 1},
            {name: '温家宝-武汉市丽华苑小区', value: 1}
        ];

        var geoCoordMap = {
            '毛泽东-毛泽东同志主办的中央农民运动讲习所旧址': [114.300412,30.553677],
            '毛泽东-东湖宾馆梅岭一号': [115.892179,28.680929],
            '陈昌浩-陈昌浩旧居': [100.956856,28.767454],
            '黎元洪-黎元洪墓': [114.300412,30.553677],
            '吴运铎-吴运铎纪念馆': [113.976306,30.482645],
            '吴运铎-运铎公园': [114.016555,30.590127],
            '黎元洪-宋卿体育馆': [114.361878,30.538347],
            '吴仪-武汉广场': [114.269996,30.580458],
            '吴仪-汉正街': [114.282791,30.566866],
            '吴仪-武汉海关': [114.204237,30.637299],
            '吴仪-湖北省商务厅': [114.283695,30.587305],
            '吴仪-国家进出口商品检验局': [114.391428,30.515235],
            '吴仪-武汉经济技术开发区神龙汽车总装车间': [114.183833,30.488663],
            '孟庆南-武汉凡谷电子技术研究所': [114.425364,30.440945],
            '孙络络-睡虎山烈士陵园': [114.120942,30.748605],
            '智宗-湖北省武汉市新洲区': [114.80869,30.846996],
            '智宗-华中农业大学': [114.363708,30.48178],
            '释本焕-宝通禅寺': [114.347202,30.538026],
            '项英-项英故里': [114.51399,30.163507],
            '项英-京汉铁路总工会': [114.317899,30.624504],
            '项英-汉口英租界': [114.298651,30.587964],
            '陈一舟-武汉大学': [114.368772,30.550126],
            '项英-武昌涵三宫的日新预备学堂': [114.312409,30.548162],
            '项英-武昌察院坡的时中书店': [114.312925,30.544008],
            '熊廷弼-熊公祠遗址': [114.323822,30.351858],
            '熊廷弼-熊廷弼墓': [114.322352,30.333803],
            '熊廷弼-江夏区金口熊享堂湾（金口熊公祠）': [114.181954,30.328175],
            '熊廷弼-汤逊湖': [114.339169,30.444327],
            '刘歆生-武汉市东西湖区柏泉': [114.129606,30.731423],
            '刘歆生-东方汇理银行汉口分行旧址': [114.31023,30.594741],
            '刘歆生-江汉路（原名歆生路）': [114.292151,30.591332],
            '龙乐豪-华中科技大学': [114.419825,30.518659],
            '杨弘远-武汉大学': [114.368772,30.550126],
            '杨弘远-武汉大学': [114.368772,30.550126],
            '石元春-武昌文华中学': [114.31106,30.554869],
            '熊廷弼-武泰匣': [114.303886,30.519592],
            '孙必干-武汉市第四中学': [114.219986,30.587114],
            '孙必干-华中农业大学': [114.356769,30.474852],
            '孙必干-湖北省汉阳永丰街董家店村': [114.150636,30.557056],
            '费胜朝-武大附小': [114.362458,30.532106],
            '费胜朝-武汉外国语学校': [114.269434,30.583892],
            '费胜朝-武汉大学': [114.364339,30.536334],
            '撒贝宁-武汉反电信网络诈骗中心': [114.26469,30.620822],
            '撒贝宁-武汉一中': [114.264847,30.630416],
            '朱轶-华中师范大学': [114.367216,30.524004],
            '朱轶-武汉市电视台': [114.281449,30.603258],
            '朱轶-楚天广播电台': [114.277195,30.587759],
            '官琳-湖北电视台': [114.331567,30.55963],
            '杨红樱-湖北少年儿童出版社': [114.349661,30.515814],
            '文泽尔-文泽尔书友会图书馆': [114.30047,30.58489],
            '石悦-中南财经政法大学': [114.392191,30.480725],
            '蒋方舟-华中师范大学第一附属中学': [114.397569,30.459763],
            '蒋方舟-长江文艺出版社': [114.349644,30.515838],
            '严文井-武汉市第十四中学': [114.319757,30.557642],
            '彭孟辑-武汉中央军事政治学校': [114.296694,30.539672],
            '特雷莎·梅-武汉天河机场': [114.217379,30.776258],
            '特雷莎·梅-武汉大学': [114.371836,30.54588],
            '特雷莎·梅-黄鹤楼': [114.309043,30.550317],
            '池莉-武汉市文学艺术界联合会': [114.294518,30.615692],
            '池莉-武汉钢铁（集团）公司': [114.360736,30.605027],
            '池莉-武汉科技大学': [114.274447,30.444975],
            '池莉-武汉大学': [114.371836,30.54588],
            '池莉-长江文艺出版社': [114.349644,30.515838],
            '田长霖-武汉市江岸区二曜路': [114.308981,30.601547],
            '田长霖-武汉市石门峰名人文化公园': [114.488549,30.520022],
            '田长霖-武汉科技会展中心': [114.392456,30.520641],
            '田长霖-武汉东湖新技术开发区': [114.429506,30.500105],
            '田长霖-武汉市黄陂区前川街道第三小学': [114.373128,30.889023],
            '桂希恩-武汉市第十四中学': [114.319757,30.557642],
            '桂希恩-武汉大学中南医院': [114.359069,30.559432],
            '桂希恩-华中科技大学同济医学院': [114.267472,30.588674],
            '温家宝-阳逻港': [114.564018,30.657133],
            '温家宝-东湖高新技术产业开发区': [114.429506,30.500105],
            '温家宝-武汉重型机床集团公司': [114.473431,30.470281],
            '温家宝-武汉天马微电子有限公司': [114.453294,30.465486],
            '温家宝-中冶南方工程技术有限公司': [114.395682,30.446673],
            '温家宝-华中科技大学': [114.419825,30.518659],
            '温家宝-武汉市丽华苑小区': [114.369641,30.60188]
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
            title: {
                text: '武汉人物',
                left: 'center',
                textStyle:{
                    color: '#000',
                    fontSize: 32
                }
            },
            backgroundColor: '#fff',
            geo: {
                show: true,
                map: name,
                itemStyle: {
                    normal: {
                        show: true,
                        areaColor: "#000",
                        borderColor: "#ff0",
                        borderWidth: 0.3,
                        borderType: "solid",
                        opacity: 0.95
                    },
                    emphasis: {
                        show: true,
                        areaColor: "#ff0",
                    }
                },
                label: {
                    normal: {
                        show: false
                    },
                    emphasis: {
                        show: true,
                        color: '#f00',
                        fontSize: 24
                    }
                },
                roam: true
            },
            series: [{
                name: '武汉人物',
                type: 'effectScatter',
                coordinateSystem: 'geo',
                data: convertData(data),
                symbolSize: function (val) {
                    return val[2]*8;
                },
                showEffectOn: 'emphasis',
                rippleEffect: { brushType: 'stroke' },
                hoverAnimation: true,
                label: {
                    normal: {
                        formatter: '{b}',
                        position: 'right',
                        show: false
                    },
                    emphasis: {
                        show: true ,
                        color: '#0f0',
                        fontSize: 24
                    }
                },
                itemStyle: {
                    normal: {
                        color: '#ff8003'
                    },
                    emphasis: {
                        color: '#00ff00'
                    }
                }
            },
            {
                name: '武汉市',
                type: 'map',
                mapType: name,
                geoIndex: 0,
                itemStyle: {
                    normal: {
                        label: {
                            show: true
                        }
                    },
                    emphasis: {
                        label: {
                            show: true
                        }
                    }
                },
                data: mapData
            }]
        };

        myChart.setOption(option);
    });

</script>
</body>
</html>
