var myChart=echarts.init(document.getElementById('mainx'));
			optionx = {
   "title": {
      "text": "网购订单量统计图",
      "left": "center",
      "y": "10",
      "textStyle": {
        "color": "#fff"
      }
    },
    "backgroundColor": "#1c2e40",
    "color": "#384757",
    "tooltip": {
      "trigger": "axis",
      "axisPointer": {
        "type": "cross",
        "crossStyle": {
          "color": "#384757"
        }
      }
    },
    "legend": {
      "data": [
        {
          "name": "周统计",
          "icon": "circle",
          "textStyle": {
            "color": "#7d838b"
          }
        },
        {
          "name": "月统计",
          "icon": "circle",
          "textStyle": {
            "color": "#7d838b"
          }
        },
        {
          "name": "变化趋势",
          "icon": "circle",
          "textStyle": {
            "color": "#7d838b"
          }
        }
      ],
      "top": "10%",
      "textStyle": {
        "color": "#fff"
      }
    },
    "xAxis": [
      {
        "type": "category",
        "data": [
          "NO.1",
          "NO.2",
          "NO.3",
          "NO.4",
          "NO.5",
          "NO.6"
        ],
        "axisPointer": {
          "type": "shadow"
        },
        "axisLabel": {
          "show": true,
          "textStyle": {
            "color": "#7d838b"
          }
        }
      }
    ],
    "yAxis": [
      {
        "type": "value",
        "name": "销售量",
        "nameTextStyle": {
          "color": "#7d838b"
        },
        "min": 0,
        "max": 100,
        "interval": 20,
        "axisLabel": {
          "show": true,
          "textStyle": {
            "color": "#7d838b"
          }
        },
        "axisLine": {
          "show": true
        },
        "splitLine": {
          "lineStyle": {
            "color": "#7d838b"
          }
        }
      },
      {
        "type": "value",
        "name": "变化趋势",
        "show": true,
        "axisLabel": {
          "show": true,
          "textStyle": {
            "color": "#7d838b"
          }
        }
      }
    ],
    "grid": {
      "top": "20%"
    },
    "series": [
      {
        "name": "周统计",
        "type": "bar",
        "data": [
          8,
          16,
          72,
          12,
          16,
          12
        ],
        "barWidth": "auto",
        "itemStyle": {
          "normal": {
            "color": {
              "type": "linear",
              "x": 0,
              "y": 0,
              "x2": 0,
              "y2": 1,
              "colorStops": [
                {
                  "offset": 0,
                  "color": "rgba(255,37,117,0.7)"
                },
                {
                  "offset": 0.5,
                  "color": "rgba(0,133,245,0.7)"
                },
                {
                  "offset": 1,
                  "color": "rgba(0,133,245,0.3)"
                }
              ],
              "globalCoord": false
            }
          }
        }
      },
      {
        "name": "月统计",
        "type": "bar",
        "data": [
          32,
          64,
          100,
          48,
          64,
          48
        ],
        "barWidth": "auto",
        "itemStyle": {
          "normal": {
            "color": {
              "type": "linear",
              "x": 0,
              "y": 0,
              "x2": 0,
              "y2": 1,
              "colorStops": [
                {
                  "offset": 0,
                  "color": "rgba(255,37,117,0.7)"
                },
                {
                  "offset": 0.5,
                  "color": "rgba(0,255,252,0.7)"
                },
                {
                  "offset": 1,
                  "color": "rgba(0,255,252,0.3)"
                }
              ],
              "globalCoord": false
            }
          }
        },
        "barGap": "0"
      },
      {
        "name": "变化趋势",
        "type": "line",
        "yAxisIndex": 1,
        "data": [
          100,
          33,
          100,
          100,
          100,
          100
        ],
        "itemStyle": {
          "normal": {
            "color": "#FF3399",
             "lineStyle": {

                     "shadowColor": 'rgba(255,37,117,1)',
// "shadowColor": '	#FF0033',
 
                       "shadowBlur": 67,
                        "width":3.6
                   
                    },
          }
        },
        "smooth": true
      }
    ]
};
myChart.setOption(optionx);