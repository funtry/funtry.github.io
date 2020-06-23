---
layout: page
title: Contact me
---


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
        {name: '月堤凹', value: 1},
        {name: '荆州', value: 1},
        {name: '武汉', value: 1},
        {name: '北京', value: 1},
        {name: '香港', value: 1},
        {name: '南京', value: 1},
        {name: '长江大学', value: 2},
        {name: 'Chiasso', value: 1},
        {name: 'Como', value: 1},
        {name: 'Venice', value: 1},
        {name: 'Florence', value: 1},
        {name: 'Milan', value: 1},
        {name: 'Prague', value: 1},
        {name: 'Karlovy Vary', value: 1},
        {name: 'Český Krumlov', value: 1},
        {name: 'Ceske Budejovice', value: 1},
        {name: '宜昌', value: 1},
        {name: '襄阳', value: 1},
        {name: '成都', value: 1},
        {name: '沈阳', value: 1},
        {name: '崇明岛', value: 1},
        {name: '上海', value: 1},
        {name: '天池', value: 1},
        {name: '长春', value: 1},
        {name: '安图', value: 1},
        {name: '绍兴', value: 1},
        {name: '杭州', value: 1},
        {name: '湘潭', value: 1},
        {name: '岳阳', value: 1},
        {name: '长沙', value: 1},
        {name: '常州', value: 1},
        {name: '襄阳', value: 1},
        {name: '随州', value: 1},
        {name: '孝感', value: 1},
        {name: '广水', value: 1},
        {name: '宣化店', value: 1},
        {name: '仙桃', value: 1},
        {name: '项城', value: 1},
        {name: '周口', value: 1},
        {name: '开封', value: 1},
        {name: '郑州', value: 1},
        {name: '洛阳', value: 1},
        {name: '南阳', value: 1},
        {name: '枣庄', value: 1},
        {name: '临沂', value: 1},
        {name: '青岛', value: 1},
        {name: '济南', value: 1},
        {name: '大连', value: 1},
        {name: '兰州', value: 1},
        {name: '镇江', value: 1},
        {name: '扬州', value: 1},
        {name: '无锡', value: 1},
        {name: '江阴', value: 1},
        {name: '井冈山', value: 1},
        {name: '庐山', value: 1},
        {name: '南昌', value: 1},
        {name: '怀化', value: 1},
        {name: '凤凰', value: 1},
        {name: '井冈山', value: 1},
        {name: '郴州', value: 1},
        {name: '平谭', value: 1},
        {name: '福州', value: 1},
        {name: '海口', value: 1},
        {name: '三亚', value: 1},
        {name: '潭门', value: 1},
        {name: '渚碧', value: 1},
        {name: '永暑', value: 1},
        {name: '九章', value: 1},
        {name: '西沙', value: 1},
        {name: '深圳', value: 1},
        {name: '珠海', value: 1},
        {name: '澳门', value: 1},
        {name: '东莞', value: 1},
        {name: '汕尾', value: 1},
        {name: '广州', value: 1}
    ];

    var geoCoordMap = {
        '月堤凹': [112.660802, 29.9948936],
        '荆州': [112.212773, 30.341304],
        '武汉': [114.3527662, 30.5390822],
        '北京': [116.3036799, 39.9869171],
        '香港': [114.181962, 22.337857],
        '南京': [118.9626781, 32.110798],
        '长江大学': [114.028565, 30.53263],
        'Chiasso': [9.032748, 45.833905],
        'Como': [9.066017, 45.818056],
        'Venice': [12.334162, 45.43086],
        'Florence': [11.25357, 43.768844],
        'Milan': [9.186216, 45.462403],
        'Prague': [14.3251976, 50.0598054],
        'Karlovy Vary': [12.867841, 50.23022],
        'Český Krumlov': [14.472547, 48.973443],
        'Ceske Budejovice': [14.314063, 48.809801],
        '宜昌': [111.267151, 30.685358],
        '襄阳': [112.929498, 31.931969],
        '成都': [104.056221, 30.584186],
        '沈阳': [123.429275, 41.795374],
        '崇明岛': [121.396618, 31.623527],
        '上海': [121.459633, 31.227287],
        '天池': [128.060149, 42.021411],
        '长春': [125.324109, 43.822262],
        '安图': [128.865288, 43.10331],
        '绍兴': [120.58591, 29.996625],
        '杭州': [120.153467, 30.268311],
        '湘潭': [112.940775, 27.827308],
        '岳阳': [113.114635, 29.363103],
        '长沙': [112.940859, 28.216436],
        '常州': [119.974338, 31.808967],
        '襄阳': [112.08, 32.02],
        '随州': [113.22, 31.42],
        '孝感': [113.54, 30.56],
        '广水': [113.83, 31.62],
        '宣化店': [114.5, 31.68],
        '仙桃': [113.27, 30.22],
        '项城': [114.9, 33.45],
        '周口': [114.38, 33.37],
        '开封': [114.21, 34.47],
        '郑州': [113.65, 34.77],
        '洛阳': [112.27, 34.42],
        '南阳': [112.32, 33],
        '枣庄': [117.33, 34.52],
        '临沂': [121.36, 38.55],
        '青岛': [120.36, 36.06],
        '济南': [117.12, 36.64],
        '大连': [121.36, 38.55],
        '兰州': [103.51, 36.04],
        '镇江': [119.27, 32.11],
        '扬州': [119.26, 32.23],
        '无锡': [120.18, 31.34],
        '江阴': [120.43, 31.83],
        '井冈山': [121.36, 38.55],
        '庐山': [116.01, 29.56],
        '南昌': [115.86, 28.68],
        '怀化': [109.991558,27.547777],
        '凤凰': [109.608831,27.955092],
        '井冈山': [114.142632,26.638031],
        '郴州': [112.976615,25.742841],
        '平谭': [119.814471, 25.508353],
        '福州': [119.18, 26.05],
        '海口': [110.2, 20.02],
        '三亚': [109.31, 18.14],
        '潭门': [110.28, 19.14],
        '渚碧': [114.08, 10.92],
        '永暑': [112.88, 9.55],
        '九章': [114.28, 9.72],
        '西沙': [111.67, 16.5],
        '深圳': [113.917776, 22.532757],
        '珠海': [113.570599, 22.2778],
        '澳门': [113.548058, 22.189968],
        '东莞': [113.756288, 23.037614],
        '汕尾': [115.432716,22.820046],
        '广州': [113.248428, 23.116626]
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
            center: [114, 32],
            zoom: 5,
            roam: true,
            mapStyle: {
                styleJson: [{
                    'featureType': 'water',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#d1d1d1'
                    }
                }, {
                    'featureType': 'land',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#f3f3f3'
                    }
                }, {
                    'featureType': 'railway',
                    'elementType': 'all',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'highway',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#fdfdfd'
                    }
                }, {
                    'featureType': 'highway',
                    'elementType': 'labels',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'arterial',
                    'elementType': 'geometry',
                    'stylers': {
                        'color': '#fefefe'
                    }
                }, {
                    'featureType': 'arterial',
                    'elementType': 'geometry.fill',
                    'stylers': {
                        'color': '#fefefe'
                    }
                }, {
                    'featureType': 'poi',
                    'elementType': 'all',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'green',
                    'elementType': 'all',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'subway',
                    'elementType': 'all',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'manmade',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#d1d1d1'
                    }
                }, {
                    'featureType': 'local',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#d1d1d1'
                    }
                }, {
                    'featureType': 'arterial',
                    'elementType': 'labels',
                    'stylers': {
                        'visibility': 'off'
                    }
                }, {
                    'featureType': 'boundary',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#fefefe'
                    }
                }, {
                    'featureType': 'building',
                    'elementType': 'all',
                    'stylers': {
                        'color': '#d1d1d1'
                    }
                }, {
                    'featureType': 'label',
                    'elementType': 'labels.text.fill',
                    'stylers': {
                        'color': '#999999'
                    }
                }]
            }
        },
        series : [
            {
                name: '',
                type: 'effectScatter',
                coordinateSystem: 'bmap',
                data: convertData(data),
                symbolSize: function (val) {
                    return val[2] *4;
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
                    color: '#0f0',
                    formatter: '{b}',
                    position: 'top',
                    show: true
                },
                itemStyle: {
                    color: '#0f0',
                    shadowBlur: 10,
                    shadowColor: '#333'
                },
                zlevel: 1
            },
            {
                name: '',
                type: 'effectScatter',
                coordinateSystem: 'bmap',
                data: convertData(data.slice(6, 7)),
                symbolSize: function (val) {
                    return val[2] *10;
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
                    color: '#00f',
                    formatter: '{b}',
                    position: 'bottom',
                    show: true
                },
                itemStyle: {
                    color: '#00f',
                    shadowBlur: 10,
                    shadowColor: '#333'
                },
                zlevel: 1
            }
        ]
    };

    myMap.setOption(option);
    </script>
</body>

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
