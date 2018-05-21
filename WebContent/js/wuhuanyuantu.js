var myChart1=echarts.init(document.getElementById('main1'));
			option1= {
    "title": {
        "text": '11~12点',
        "top": '9%',
        "left": '30%',
        "textStyle": {
            "fontSize": 14,
            "fontWeight": "bold",
            "color": "#bcbfff"
        }
    },
    "tooltip": {
        "trigger": 'item',
        "formatter": "{a} : ({d})"
    },
    "series": [{
        "name": "销售量",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "49%",
            "50%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value": 78,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d}',
                    "textStyle": {
                        "fontSize": 0,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#00a2ff'
                    }, {
                        offset: 1,
                        color: '#70ffac'
                    }]),
                    "borderWidth": 10
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#85b6b2'
                    }, {
                        offset: 1,
                        color: '#6d4f8d'
                    }]),
                    "borderWidth": 10
                }
            },
        }, {
            "name": " ",
            "value": 22,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }, {
        "name": "销售量",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "59%",
            "60%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value": 78,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d}',
                    "textStyle": {
                        "fontSize": 13,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#00a2ff'
                    }, {
                        offset: 1,
                        color: '#70ffac'
                    }]),
                    "borderWidth": 1
                  
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#85b6b2'
                    }, {
                        offset: 1,
                        color: '#6d4f8d'
                    }]),
                    "borderWidth": 1
                },
            
            },
        }, {
            "name": " ",
            "value": 22,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }]
};
myChart1.setOption(option1);

			var myChart2=echarts.init(document.getElementById('main2'));
			option2= {
    "title": {
        "text": '12~13点',
        "top": '9%',
        "left": '30%',
        "textStyle": {
            "fontSize": 14,
            "fontWeight": "bold",
            "color": "#bcbfff"
        }
    },
    "tooltip": {
        "trigger": 'item',
        "formatter": "{a} : ({d})"
    },
    "series": [{
        "name": "销售量",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "49%",
            "50%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value": 400,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d}',
                    "textStyle": {
                        "fontSize": 0,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#FF3333'
                    }, {
                        offset: 1,
                        color: '#FFAA33'
                    }]),
                    "borderWidth": 10
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#FF3333'
                    }, {
                        offset: 1,
                        color: '#FFAA33'
                    }]),
                    "borderWidth": 10
                }
            },
        }, {
            "name": " ",
            "value": 400,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }, {
        "name": "销售量",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "59%",
            "60%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value":400,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d}',
                    "textStyle": {
                        "fontSize": 13,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#FF3333'
                    }, {
                        offset: 1,
                        color: '#FFAA33'
                    }]),
                    "borderWidth": 1
                  
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#FF3333'
                    }, {
                        offset: 1,
                        color: '#6d4f8d'
                    }]),
                    "borderWidth": 1
                },
            
            },
        }, {
            "name": " ",
            "value":400,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }]
};
myChart2.setOption(option2);

			var myChart3=echarts.init(document.getElementById('main3'));
			option3= {
    "title": {
        "text": '5~6点',
        "top": '9%',
        "left": '30%',
        "textStyle": {
            "fontSize": 14,
            "fontWeight": "bold",
            "color": "#bcbfff"
        }
    },
    "tooltip": {
        "trigger": 'item',
        "formatter": "{a} : ({d})"
    },
    "series": [{
        "name": "销售量",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "49%",
            "50%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value":67,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d}',
                    "textStyle": {
                        "fontSize": 0,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#8B4513'
                    }, {
                        offset: 1,
                        color: '#F08080'
                    }]),
                    "borderWidth": 10
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#85b6b2'
                    }, {
                        offset: 1,
                        color: '#6d4f8d'
                    }]),
                    "borderWidth": 10
                }
            },
        }, {
            "name": " ",
            "value": 33,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }, {
        "name": "销售量",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "59%",
            "60%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value": 67,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d}',
                    "textStyle": {
                        "fontSize": 13,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#8B4513'
                    }, {
                        offset: 1,
                        color: '#F08080'
                    }]),
                    "borderWidth": 1
                  
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#85b6b2'
                    }, {
                        offset: 1,
                        color: '#6d4f8d'
                    }]),
                    "borderWidth": 1
                },
            
            },
        }, {
            "name": " ",
            "value": 33,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }]
};
myChart3.setOption(option3);

			var myChart4=echarts.init(document.getElementById('main4'));
			option4 = {
    "title": {
        "text": '6~7点',
        "top": '9%',
        "left": '30%',
        "textStyle": {
            "fontSize": 14,
            "fontWeight": "bold",
            "color": "#bcbfff"
        }
    },
    "tooltip": {
        "trigger": 'item',
        "formatter": "{a} : ({d}%)"
    },
    "series": [{
        "name": "销售量",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "49%",
            "50%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value": 60,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d}',
                    "textStyle": {
                        "fontSize": 0,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#006400'
                    }, {
                        offset: 1,
                        color: '#FFFF00'
                    }]),
                    "borderWidth": 10
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#85b6b2'
                    }, {
                        offset: 1,
                        color: '#6d4f8d'
                    }]),
                    "borderWidth": 10
                }
            },
        }, {
            "name": " ",
            "value": 40,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }, {
        "name": "销售",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "59%",
            "60%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value": 60,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d}',
                    "textStyle": {
                        "fontSize": 13,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#006400'
                    }, {
                        offset: 1,
                        color: '#FFFF00'
                    }]),
                    "borderWidth": 1
                  
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#85b6b2'
                    }, {
                        offset: 1,
                        color: '#6d4f8d'
                    }]),
                    "borderWidth": 1
                },
            
            },
        }, {
            "name": " ",
            "value": 40,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }]
};
myChart4.setOption(option4);

			var myChart5=echarts.init(document.getElementById('main5'));
			option5 = {
    "title": {
        "text": '7~8点',
        "top": '9%',
        "left": '30%',
        "textStyle": {
            "fontSize": 14,
            "fontWeight": "bold",
            "color": "#bcbfff"
        }
    },
    "tooltip": {
        "trigger": 'item',
        "formatter": "{a} : ({d})"
    },
    "series": [{
        "name": "销售量",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "49%",
            "50%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value": 84,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d}',
                    "textStyle": {
                        "fontSize": 0,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#00008B'
                    }, {
                        offset: 1,
                        color: '#008B8B'
                    }]),
                    "borderWidth": 10
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#85b6b2'
                    }, {
                        offset: 1,
                        color: '#6d4f8d'
                    }]),
                    "borderWidth": 10
                }
            },
        }, {
            "name": " ",
            "value": 16,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }, {
        "name": "销售量",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "59%",
            "60%"
        ],
        "clockWise": false,
        "hoverAnimation": false,
        "type": "pie",
        "data": [{
            "value": 84,
            "name": "",
            "label": {
                "normal": {
                    "show": true,
                    "formatter": '{d} ',
                    "textStyle": {
                        "fontSize": 13,
                        "fontWeight": "bold"
                    },
                    "position": "center"
                }
            },
            "labelLine": {
                "show": false
            },
            "itemStyle": {
                
                "normal": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#00008B'
                    }, {
                        offset: 1,
                        color: '#008B8B'
                    }]),
                    "borderWidth": 1
                  
                },
                "emphasis": {
                    "color": "#5886f0",
                    "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: '#85b6b2'
                    }, {
                        offset: 1,
                        color: '#6d4f8d'
                    }]),
                    "borderWidth": 1
                },
            
            },
        }, {
            "name": " ",
            "value": 16,
            "itemStyle": {
                "normal": {
                    "label": {
                        "show": false
                    },
                    "labelLine": {
                        "show": false
                    },
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                },
                "emphasis": {
                    "color": 'rgba(0,0,0,0)',
                    "borderColor": 'rgba(0,0,0,0)',
                    "borderWidth": 0
                }
            }
        }]
    }]
};
myChart5.setOption(option5);
//myChart4.setOption(option4);
//
//			var myChart5=echarts.init(document.getElementById('main5'));
//			option5 = {
//  "title": {
//      "text": '7~8点',
//      "top": '9%',
//      "left": '30%',
//      "textStyle": {
//          "fontSize": 14,
//          "fontWeight": "bold",
//          "color": "#bcbfff"
//      }
//  },
//  "tooltip": {
//      "trigger": 'item',
//      "formatter": "{a} : ({d}%)"
//  },
//  "series": [{
//      "name": "CPU分配率 内圈",
//      "center": [
//          "50%",
//          "50%"
//      ],
//      "radius": [
//          "49%",
//          "50%"
//      ],
//      "clockWise": false,
//      "hoverAnimation": false,
//      "type": "pie",
//      "data": [{
//          "value": 84,
//          "name": "",
//          "label": {
//              "normal": {
//                  "show": true,
//                  "formatter": '{d} %',
//                  "textStyle": {
//                      "fontSize": 0,
//                      "fontWeight": "bold"
//                  },
//                  "position": "center"
//              }
//          },
//          "labelLine": {
//              "show": false
//          },
//          "itemStyle": {
//              "normal": {
//                  "color": "#5886f0",
//                  "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
//                      offset: 0,
//                      color: '#00008B'
//                  }, {
//                      offset: 1,
//                      color: '#008B8B'
//                  }]),
//                  "borderWidth": 10
//              },
//              "emphasis": {
//                  "color": "#5886f0",
//                  "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
//                      offset: 0,
//                      color: '#85b6b2'
//                  }, {
//                      offset: 1,
//                      color: '#6d4f8d'
//                  }]),
//                  "borderWidth": 10
//              }
//          },
//      }, {
//          "name": " ",
//          "value": 16,
//          "itemStyle": {
//              "normal": {
//                  "label": {
//                      "show": false
//                  },
//                  "labelLine": {
//                      "show": false
//                  },
//                  "color": 'rgba(0,0,0,0)',
//                  "borderColor": 'rgba(0,0,0,0)',
//                  "borderWidth": 0
//              },
//              "emphasis": {
//                  "color": 'rgba(0,0,0,0)',
//                  "borderColor": 'rgba(0,0,0,0)',
//                  "borderWidth": 0
//              }
//          }
//      }]
//  }, {
//      "name": "CPU分配率 外圈",
//      "center": [
//          "50%",
//          "50%"
//      ],
//      "radius": [
//          "59%",
//          "60%"
//      ],
//      "clockWise": false,
//      "hoverAnimation": false,
//      "type": "pie",
//      "data": [{
//          "value": 84,
//          "name": "",
//          "label": {
//              "normal": {
//                  "show": true,
//                  "formatter": '{d} %',
//                  "textStyle": {
//                      "fontSize": 13,
//                      "fontWeight": "bold"
//                  },
//                  "position": "center"
//              }
//          },
//          "labelLine": {
//              "show": false
//          },
//          "itemStyle": {
//              
//              "normal": {
//                  "color": "#5886f0",
//                  "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
//                      offset: 0,
//                      color: '#00008B'
//                  }, {
//                      offset: 1,
//                      color: '#008B8B'
//                  }]),
//                  "borderWidth": 1
//                
//              },
//              "emphasis": {
//                  "color": "#5886f0",
//                  "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
//                      offset: 0,
//                      color: '#85b6b2'
//                  }, {
//                      offset: 1,
//                      color: '#6d4f8d'
//                  }]),
//                  "borderWidth": 1
//              },
//          
//          },
//      }, {
//          "name": " ",
//          "value": 16,
//          "itemStyle": {
//              "normal": {
//                  "label": {
//                      "show": false
//                  },
//                  "labelLine": {
//                      "show": false
//                  },
//                  "color": 'rgba(0,0,0,0)',
//                  "borderColor": 'rgba(0,0,0,0)',
//                  "borderWidth": 0
//              },
//              "emphasis": {
//                  "color": 'rgba(0,0,0,0)',
//                  "borderColor": 'rgba(0,0,0,0)',
//                  "borderWidth": 0
//              }
//          }
//      }]
//  }]
//};
//myChart5.setOption(option5);