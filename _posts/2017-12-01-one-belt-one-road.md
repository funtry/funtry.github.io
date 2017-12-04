---
layout: post
title: "One Belt One Road"
author: "Fangli ZHANG"
categories: journal
tags: [software, publication]
image:
  feature: one-belt-one-road.png
  teaser: one-belt-one-road.png
  credit: javascript
  creditlink: ""
---
## The OB & OR Plan on a 3D Globe
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="../echarts/echarts-master/dist/echarts.js"></script>
    <script src="../echarts/echarts-gl-master/dist/echarts-gl.js"></script>
</head>
<body>
    <div id="main" style="width: 100%; height: 600px;"></div>
        <script>
            echarts.init(document.getElementById('main')).setOption({
              grid3D: {},
              xAxis3D: {},
              yAxis3D: {},
              zAxis3D: {},
              series: [{
                  type: 'scatter3D',
                  symbolSize: 50,
                  data: [[-1, -1, -1], [0, 0, 0], [1, 1, 1]],
                  itemStyle: {
                      opacity: 1
                  }
              }]
            });
    </script>
</body>
</html>
