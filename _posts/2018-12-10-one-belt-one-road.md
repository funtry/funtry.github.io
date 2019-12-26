---
layout: post
title: "One Belt One Road"
author: "Fangli ZHANG"
categories: public
notshow: 0
tags: [software, publication]
image:
  feature: one-belt-one-road.png
  teaser: one-belt-one-road.png
  credit: javascript
  creditlink: ""
---

+ Cheng, L., Yan, Z., Xiao, Y., Chen, Y., __Zhang, F.\*__, & Li, M.\* (2018). Using big data to track marine oil transportation along the 21st-century Maritime Silk Road. _Science China Technological Sciences_, 4, 652. [http://doi.org/10.1007/s11431-018-9335-1](http://doi.org/10.1007/s11431-018-9335-1)

## The OB & OR Plan on a 3D Globe
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="../echarts/echarts-master/dist/echarts.js"></script>
    <script src="../echarts/echarts-gl-master/dist/echarts-gl.js"></script>
</head>
<body>
    <div id="main" style="width: 100%; height: 500px;"></div>
        <script>
            echarts.init(document.getElementById('main')).setOption({
                backgroundColor: '#000',
                globe: {
                    baseTexture: '../echarts/echarts-gl-master/test/asset/earth.jpg',
                    heightTexture: '../echarts/echarts-gl-master/test/asset/elev_bump_4k.jpg',

                    displacementScale: 0.1,

                    shading: 'realistic',
                    //shading: 'lambert',
                    displacementQuality: 'ultra',

                    environment: '../echarts/echarts-gl-master/test/asset/background.jpg',

                    light: {
                        ambient: {
                            intensity: 0.1
                        },

                        main: {
                            intensity: 1.5
                        },

                        ambientCubemap: {
                              texture: '../echarts/echarts-gl-master/test/asset/pisa.hdr',
                              exposure: 2,
                              diffuseIntensity: 0.1,
                              specularIntensity: 1
                        }
                    },

                    viewControl: {
                        autoRotate: true,
                        autoRotateSpeed: 1,
                        autoRotateAfterStill: 10,
                        targetCoord: [118.9616, 32.1124]
                    },

                    postEffect: {
                        enable: true,
                        SSAO: {
                              enable: true,
                              radius: 100
                        }
                    },

                    layers: [{
                        type: 'blend',
                        blendTo: 'emission',
                        texture: '../echarts/echarts-gl-master/test/asset/night.jpg'
                    }]
                    //
                    // , {
                    //     type: 'overlay',
                    //     texture: '../echarts/echarts-gl-master/test/asset/clouds.png',
                    //     shading: 'realistic',
                    //     distance: 6
                    // }
              },
              series: []
            });
    </script>
</body>
</html>
