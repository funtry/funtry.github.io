---
show_in_nav: false
layout: post
title: "2020年第十二届全国高校GIS技能大赛"
author: "Fangli ZHANG"
categories: contest
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

## 2200526 组建参赛队伍
地信21701 陈冬如

地信21702 李晓文

2020级硕士 宋卓敏

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ECharts</title>
<!-- 引入 echarts.js -->
<script src="echarts.min.js"></script>
</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
var myChart = echarts.init(document.getElementById('main'));

var option = {
  title: {
    text: 'ECharts 入门示例'
    },
    tooltip: {},
      legend: {
        data:['销量']
        },
        xAxis: {
          data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
          },
          yAxis: {},
            series: [{
              name: '销量',
              type: 'bar',
              data: [5, 20, 36, 10, 10, 20]
              }]
            };

            myChart.setOption(option);
            </script>
            </body>
            </html>
