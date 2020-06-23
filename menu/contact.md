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
                type: 'scatter',
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
                        color: 'magenta'
                    },
                    emphasis: {
                        color: '#00ff00'
                    }
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
                        color: 'blue'
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
