---
show_in_nav: false
layout: post
title: "GIS大赛"
author: "Fangli ZHANG"
categories: thesis
notshow: 1
tags: [contest, undergraduate]
image:
feature: contest/0-0.png
teaser: contest/0-0.png
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
地信21701 陈冬如

地信21702 李晓文

2020级硕士 宋卓敏

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <script src="../echarts/apache-echarts/lib/esl.js"></script>
        <script src="../echarts/apache-echarts/lib/config.js"></script>
        <script src="../echarts/apache-echarts/lib/jquery.min.js"></script>
        <script src="../echarts/apache-echarts/lib/facePrint.js"></script>
        <script src="../echarts/apache-echarts/lib/testHelper.js"></script>
        <link rel="stylesheet" href="../echarts/apache-echarts/lib/reset.css">
    </head>
    <body>
        <style>
            .test-title {
                background: #146402;
                color: #fff;
            }
        </style>
        <div id="main0"></div>
        <script>

            var chart;

            require([
                '../echarts/apache-echarts'
            ], function (echarts) {


                var provinces = ['shanghai', 'hebei','shanxi','neimenggu','liaoning','jilin','heilongjiang','jiangsu','zhejiang','anhui','fujian','jiangxi','shandong','henan','hubei','hunan','guangdong','guangxi','hainan','sichuan','guizhou','yunnan','xizang','shanxi1','gansu','qinghai','ningxia','xinjiang', 'beijing', 'tianjin', 'chongqing', 'xianggang', 'aomen'];
                var provincesText = ['上海', '河北', '山西', '内蒙古', '辽宁', '吉林','黑龙江',  '江苏', '浙江', '安徽', '福建', '江西', '山东','河南', '湖北', '湖南', '广东', '广西', '海南', '四川', '贵州', '云南', '西藏', '陕西', '甘肃', '青海', '宁夏', '新疆', '北京', '天津', '重庆', '香港', '澳门'];

                function showProvince() {
                    var name = provinces[currentIdx];

                    myChart.showLoading();

                    $.get('../echarts/apache-echarts/map/json/province/' + name + '.json', function (geoJson) {

                        myChart.hideLoading();

                        echarts.registerMap(name, geoJson);

                        chart.setOption({
                            backgroundColor: '#404a59',
                            title: {
                                text: provincesText[currentIdx],
                                left: 'center',
                                textStyle: {
                                    color: '#fff'
                                }
                            },
                            series: [
                                {
                                    type: 'map',
                                    mapType: name,
                                    label: {
                                        emphasis: {
                                            textStyle: {
                                                color: '#fff'
                                            }
                                        }
                                    },
                                    itemStyle: {
                                        normal: {
                                            borderColor: '#389BB7',
                                            areaColor: '#fff',
                                        },
                                        emphasis: {
                                            areaColor: '#389BB7',
                                            borderWidth: 0
                                        }
                                    },
                                    animation: false
                                    animationDurationUpdate: 1000,
                                    animationEasingUpdate: 'quinticInOut'
                                }
                            ]
                        });

                    });
                }

                var currentIdx = 0;

                var option = {
                    graphic: [{
                        id: 'left-btn',
                        type: 'circle',
                        shape: { r: 20 },
                        style: {
                            text: '<',
                            fill: '#eee'
                        },
                        left: 10,
                        top: 'middle',
                        onclick: function () {
                            currentIdx -= 1;
                            if (currentIdx < 0) {
                                currentIdx += provinces.length;
                            }
                            showProvince();
                        }
                    }, {
                        id: 'right-btn',
                        type: 'circle',
                        shape: { r: 20 },
                        style: {
                            text: '>',
                            fill: '#eee'
                        },
                        top: 'middle',
                        right: 10,
                        onclick: function () {
                            currentIdx = (currentIdx + 1) % provinces.length;
                            showProvince();
                        }
                    }],

                    series: []
                };

                chart = testHelper.create(echarts, 'main0', {
                    option: option
                });

                showProvince();



            });

        </script>
    </body>
</html>

## 2020614 确定参赛主题
武汉人物
