class AccountPageJsonObject {
  static dynamic getPage() {
    return {
      "Separated": false,
      "list": [
        {
          "flutterType": "Container",
          "width": "infinity",
          "decoration": {
            "flutterType": "BoxDecoration",
            "gradient": {
              "flutterType": "LinearGradient",
              "begin": "topRight",
              "colors":["blue.600", "blue.700", "blue.800"]
            }
          },
          "child": {
            "flutterType": "Column",
            "crossAxisAlignment": "center",
            "children": [
              {
                "flutterType": "Container",
                "padding": "0,0,30,0",
                "alignment": "topRight",
                "child":{
                  "flutterType": "Row",
                  "mainAxisAlignment": "end",
                  "children": [
                    {
                      "flutterType": "Icon",
                      "src": "notifications_active",
                      "color": "#ffffff"
                    },
                    {
                      "flutterType": "Text",
                      "data": " 3",
                      "style": {
                        "flutterType": "TextStyle",
                        "fontSize": 17,
                        "color": "#ffffff"
                      }
                    }
                  ]
                }
              },
              {
                "flutterType": "CircleAvatar",
                "radius": 82,
                "backgroundColor": "rgba:255,255,255,0.1",
                "child": {
                  "flutterType": "CircleAvatar",
                  "radius": 70,
                  "backgroundImage": {
                    "flutterType": "NetworkImage",
                    "src": "http://jamsys.ru:8081/404.jpg"
                  }
                }
              },
              {
                "flutterType": "SizedBox",
                "height": 10
              },
              {
                "flutterType": "Text",
                "data": "Юрий Сергеевич М.",
                "style": {
                  "flutterType": "TextStyle",
                  "fontSize": 24,
                  "color": "#ffffff"
                }
              },
              {
                "flutterType": "SizedBox",
                "height": 10
              },
              {
                "flutterType": "Text",
                "data": "Последний вход: 24.06.2022 15:06",
                "style": {
                  "flutterType": "TextStyle",
                  "fontSize": 14,
                  "color": "rgba:255,255,255,0.5"
                }
              },
              {
                "flutterType": "SizedBox",
                "height": 20
              },
              {
                "flutterType": "Container",
                "decoration": {
                  "flutterType": "BoxDecoration",
                  "color": "#f5f5f5",
                  "borderRadius": "20,20,0,0"
                },
                "child": {
                  "flutterType": "Column",
                  "children": [
                    {
                      "flutterType": "SizedBox",
                      "height": 5
                    },
                    {
                      "flutterType": "Container",
                      "padding": "30,25,30,3",
                      "child": {
                        "flutterType": "Row",
                        "mainAxisAlignment": "spaceBetween",
                        "children":[
                          {
                            "flutterType": "Material",
                            "color": "white",
                            "borderRadius": 20,
                            "child": {
                              "flutterType": "InkWell",
                              "customBorder": {
                                "flutterType": "RoundedRectangleBorder",
                                "borderRadius": 20
                              },
                              "splashColor": "grey.200",
                              "highlightColor": "white",
                              "child": {
                                "flutterType": "Container",
                                "padding": "5,12,5,0",
                                "width": 100,
                                "height": 70,
                                "alignment": "center",
                                "decoration": {
                                  "flutterType": "BoxDecoration",
                                  "borderRadius": 20
                                },
                                "child": {
                                  "flutterType": "Column",
                                  "children": [
                                    {
                                      "flutterType": "Icon",
                                      "src": "cancel",
                                      "size": 18,
                                      "color": "red"
                                    },
                                    {
                                      "flutterType": "SizedBox",
                                      "height": 10
                                    },
                                    {
                                      "flutterType": "Text",
                                      "data": "Аккаунт",
                                      "style": {
                                        "flutterType": "TextStyle",
                                        "color": "black"
                                      }
                                    }
                                  ]
                                }
                              }
                            }
                          },
                          {
                            "flutterType": "Material",
                            "color": "white",
                            "borderRadius": 20,
                            "child": {
                              "flutterType": "InkWell",
                              "customBorder": {
                                "flutterType": "RoundedRectangleBorder",
                                "borderRadius": 20
                              },
                              "splashColor": "grey.200",
                              "highlightColor": "white",
                              "child": {
                                "flutterType": "Container",
                                "padding": "5,12,5,0",
                                "width": 100,
                                "height": 70,
                                "alignment": "center",
                                "decoration": {
                                  "flutterType": "BoxDecoration",
                                  "borderRadius": 20,
                                },
                                "child": {
                                  "flutterType": "Column",
                                  "children": [
                                    {
                                      "flutterType": "Icon",
                                      "src": "note",
                                      "size": 18,
                                      "color": "black"
                                    },
                                    {
                                      "flutterType": "SizedBox",
                                      "height": 10
                                    },
                                    {
                                      "flutterType": "Text",
                                      "data": "Заметки",
                                      "style": {
                                        "flutterType": "TextStyle",
                                        "color": "black"
                                      }
                                    }
                                  ]
                                }
                              }
                            }
                          },
                          {
                            "flutterType": "Material",
                            "color": "white",
                            "borderRadius": 20,
                            "child": {
                              "flutterType": "InkWell",
                              "customBorder": {
                                "flutterType": "RoundedRectangleBorder",
                                "borderRadius": 20
                              },
                              "splashColor": "grey.200",
                              "highlightColor": "white",
                              "child": {
                                "flutterType": "Container",
                                "padding": "5,12,5,0",
                                "width": 100,
                                "height": 70,
                                "alignment": "center",
                                "decoration": {
                                  "flutterType": "BoxDecoration",
                                  "borderRadius": 20,
                                },
                                "child": {
                                  "flutterType": "Column",
                                  "children": [
                                    {
                                      "flutterType": "Icon",
                                      "src": "favorite",
                                      "size": 18,
                                      "color": "black"
                                    },
                                    {
                                      "flutterType": "SizedBox",
                                      "height": 10
                                    },
                                    {
                                      "flutterType": "Text",
                                      "data": "Избранное",
                                      "style": {
                                        "flutterType": "TextStyle",
                                        "color": "black"
                                      }
                                    }
                                  ]
                                }
                              }
                            }
                          }
                        ]
                      }
                    },
                    {
                      "flutterType": "SizedBox",
                      "height": 14
                    },
                    {
                      "flutterType": "Container",
                      "height": 43,
                      "width": "infinity",
                      "padding": "0,0,7,0",
                      "margin": "30,0,30,0",
                      "decoration": {
                        "flutterType": "BoxDecoration",
                        "color": "#ffffff",
                        "borderRadius": 20
                      },
                      "child": {
                        "flutterType": "Row",
                        "mainAxisAlignment": "spaceBetween",
                        "children": [
                          {
                            "flutterType": "Expanded",
                            "child": {
                              "flutterType": "Container",
                              "padding": "10,8,10,0",
                              "decoration": {
                                "flutterType": "BoxDecoration",
                                "color": "blue.600",
                                "borderRadius": "20,0,0,20"
                              },
                              "child": {
                                "flutterType": "Column",
                                "children": [
                                  {
                                    "flutterType": "Text",
                                    "data": "25",
                                    "style": {
                                      "flutterType": "TextStyle",
                                      "color": "white",
                                      "fontWeight": "bold"
                                    }
                                  },
                                  {
                                    "flutterType": "Text",
                                    "data": "ПН",
                                    "style": {
                                      "flutterType": "TextStyle",
                                      "fontSize": 10,
                                      "color": "white"
                                    }
                                  }
                                ]
                              }
                            }
                          },
                          {
                            "flutterType": "Expanded",
                            "child": {
                              "flutterType": "Column",
                              "children": [
                                {
                                  "flutterType": "SizedBox",
                                  "height": 7
                                },
                                {
                                  "flutterType": "Text",
                                  "data": "26",
                                  "style": {
                                    "flutterType": "TextStyle",
                                    "color": "black",
                                    "fontWeight": "bold"
                                  }
                                },
                                {
                                  "flutterType": "Text",
                                  "data": "ВТ",
                                  "style": {
                                    "flutterType": "TextStyle",
                                    "fontSize": 10,
                                    "color": "black"
                                  }
                                }
                              ]
                            }
                          },
                          {
                            "flutterType": "Expanded",
                            "child": {
                              "flutterType": "Column",
                              "children": [
                                {
                                  "flutterType": "SizedBox",
                                  "height": 7
                                },
                                {
                                  "flutterType": "Text",
                                  "data": "27",
                                  "style": {
                                    "flutterType": "TextStyle",
                                    "color": "black",
                                    "fontWeight": "bold"
                                  }
                                },
                                {
                                  "flutterType": "Text",
                                  "data": "СР",
                                  "style": {
                                    "flutterType": "TextStyle",
                                    "fontSize": 10,
                                    "color": "black"
                                  }
                                }
                              ]
                            }
                          },
                          {
                            "flutterType": "Expanded",
                            "child": {
                              "flutterType": "Column",
                              "children": [
                                {
                                  "flutterType": "SizedBox",
                                  "height": 7
                                },
                                {
                                  "flutterType": "Text",
                                  "data": "28",
                                  "style": {
                                    "flutterType": "TextStyle",
                                    "color": "black",
                                    "fontWeight": "bold"
                                  }
                                },
                                {
                                  "flutterType": "Text",
                                  "data": "ЧТ",
                                  "style": {
                                    "flutterType": "TextStyle",
                                    "fontSize": 10,
                                    "color": "black"
                                  }
                                }
                              ]
                            }
                          },
                          {
                            "flutterType": "Expanded",
                            "child": {
                              "flutterType": "Column",
                              "children": [
                                {
                                  "flutterType": "SizedBox",
                                  "height": 7
                                },
                                {
                                  "flutterType": "Text",
                                  "data": "29",
                                  "style": {
                                    "flutterType": "TextStyle",
                                    "color": "black",
                                    "fontWeight": "bold"
                                  }
                                },
                                {
                                  "flutterType": "Text",
                                  "data": "ПТ",
                                  "style": {
                                    "flutterType": "TextStyle",
                                    "fontSize": 10,
                                    "color": "black"
                                  }
                                }
                              ]
                            }
                          }
                        ]
                      }
                    },
                    {
                      "flutterType": "SizedBox",
                      "height": 15
                    },
                    {
                      "flutterType": "Container",
                      "margin": "30,0,30,0",
                      "alignment": "topLeft",
                      "width": "infinity",
                      "child": {
                        "flutterType": "Column",
                        "crossAxisAlignment": "start",
                        "mainAxisAlignment": "start",
                        "children": [
                          {
                            "flutterType": "Text",
                            "data": "     Группы:",
                            "style": {
                              "flutterType": "TextStyle",
                              "fontWeight": "bold",
                              "color": "#999999"
                            }
                          },
                          {
                            "flutterType": "SizedBox",
                            "height": 12
                          },
                          {
                            "flutterType": "Container",
                            "padding": "0,10,0,10",
                            "width": "infinity",
                            "decoration": {
                              "flutterType": "BoxDecoration",
                              "color": "#ffffff",
                              "borderRadius": "20"
                            },
                            "child": {
                              "flutterType": "Column",
                              "crossAxisAlignment": "start",
                              "children": [
                                {
                                  "flutterType": "Container",
                                  "width": "infinity",
                                  "padding": "15,10,10,10",
                                  "child": {
                                    "flutterType": "Text",
                                    "data": "Основная"
                                  }
                                },
                                {
                                  "flutterType": "Divider",
                                  "height": 1,
                                  "color": "#f5f5f5"
                                },
                                {
                                  "flutterType": "Container",
                                  "padding": "15,10,10,10",
                                  "child": {
                                    "flutterType": "Text",
                                    "data": "Вторичная"
                                  }
                                }
                              ]
                            }
                          }
                        ]
                      }
                    },
                    {
                      "flutterType": "SizedBox",
                      "height": 20
                    },
                    {
                      "flutterType": "Container",
                      "margin": "30,0,30,0",
                      "child": {
                        "flutterType": "SizedBox",
                        "width": "infinity",
                        "height": 43,
                        "child": {
                          "flutterType": "ElevatedButtonIcon",
                          "icon": {
                            "flutterType": "Icon",
                            "src": "edit",
                            "size": 18
                          },
                          "label": {
                            "flutterType": "Text",
                            "data": "Изменить данные профиля",
                            "style": {
                              "flutterType": "TextStyle",
                              "fontSize": 14
                            }
                          },
                          "style": {
                            "flutterType": "ButtonStyle",
                            "backgroundColor": "blue.600",
                            "shadowColor": "transparent",
                            "borderRadius": 20
                          }
                        }
                      }
                    },
                    {
                      "flutterType": "SizedBox",
                      "height": 20
                    },
                    {
                      "flutterType": "Container",
                      "margin": "30,0,30,0",
                      "child": {
                        "flutterType": "SizedBox",
                        "width": "infinity",
                        "height": 43,
                        "child": {
                          "flutterType": "ElevatedButtonIcon",
                          "icon": {
                            "flutterType": "Icon",
                            "src": "message",
                            "size": 18,
                            "color": "blue"
                          },
                          "label": {
                            "flutterType": "Text",
                            "data": "Оставить отзыв / предложение",
                            "style": {
                              "flutterType": "TextStyle",
                              "fontSize": 14,
                              "color": "blue"
                            }
                          },
                          "style": {
                            "flutterType": "ButtonStyle",
                            "backgroundColor": "#ffffff",
                            "shadowColor": "transparent",
                            "borderRadius": 20
                          }
                        }
                      }
                    },
                    {
                      "flutterType": "SizedBox",
                      "height": 20
                    },
                    {
                      "flutterType": "Container",
                      "margin": "30,0,30,0",
                      "child": {
                        "flutterType": "SizedBox",
                        "width": "infinity",
                        "height": 43,
                        "child": {
                          "flutterType": "ElevatedButtonIcon",
                          "icon": {
                            "flutterType": "Icon",
                            "src": "payment",
                            "size": 18,
                            "color": "blue"
                          },
                          "label": {
                            "flutterType": "Text",
                            "data": "Помочь материально",
                            "style": {
                              "flutterType": "TextStyle",
                              "fontSize": 14,
                              "color": "blue"
                            }
                          },
                          "style": {
                            "flutterType": "ButtonStyle",
                            "backgroundColor": "#ffffff",
                            "shadowColor": "transparent",
                            "borderRadius": 20
                          }
                        }
                      }
                    },
                    {
                      "flutterType": "Container",
                      "width": "infinity",
                      "height": 20,
                      "color": "blue.600",
                      "child": {
                        "flutterType": "Container",
                        "width": "infinity",
                        "height": 20,
                        "decoration": {
                          "flutterType": "BoxDecoration",
                          "color": "#f5f5f5",
                          "borderRadius": "0,0,20,20"
                        }
                      }
                    }
                  ]
                }
              }
            ]
          }
        }
      ]
    };
  }
}
