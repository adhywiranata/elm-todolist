import React, {StyleSheet, Dimensions, PixelRatio} from "react-native";
const {width, height, scale} = Dimensions.get("window"),
    vw = width / 100,
    vh = height / 100,
    vmin = Math.min(vw, vh),
    vmax = Math.max(vw, vh);

export default StyleSheet.create({
    "body": {
        "marginTop": 0,
        "marginRight": 0,
        "marginBottom": 0,
        "marginLeft": 0,
        "paddingTop": 0,
        "paddingRight": 0,
        "paddingBottom": 0,
        "paddingLeft": 0,
        "fontFamily": "'Space Mono', monospace"
    },
    "header": {
        "width": "100%",
        "paddingTop": 10,
        "paddingRight": 20,
        "paddingBottom": 10,
        "paddingLeft": 20,
        "display": "inline-block",
        "boxSizing": "border-box",
        "backgroundColor": "#1184CE",
        "color": "#FFFFFF"
    },
    "logo": {
        "color": "#FFFFFF",
        "display": "inline-block",
        "paddingTop": 15,
        "paddingRight": 15,
        "paddingBottom": 15,
        "paddingLeft": 15,
        "float": "left"
    },
    "logo img": {
        "width": 50,
        "marginRight": 10
    },
    "logo span": {
        "fontSize": 1.5,
        "verticalAlign": 15
    },
    "content": {
        "width": "100%",
        "boxSizing": "border-box",
        "paddingTop": 20,
        "paddingRight": 20,
        "paddingBottom": 20,
        "paddingLeft": 20,
        "minHeight": 500
    },
    "todo-heading": {
        "textAlign": "center",
        "fontSize": 1.7
    },
    "todo-item": {
        "textAlign": "center",
        "backgroundColor": "#F5F5F5",
        "paddingTop": 10,
        "paddingRight": 20,
        "paddingBottom": 10,
        "paddingLeft": 20,
        "marginTop": 10,
        "marginRight": 0,
        "marginBottom": 10,
        "marginLeft": 0
    },
    "todo-input": {
        "width": "100%",
        "boxSizing": "border-box",
        "paddingTop": 10,
        "paddingRight": 10,
        "paddingBottom": 10,
        "paddingLeft": 10,
        "fontSize": 1.4,
        "outline": "none"
    },
    "todo-list": {
        "textAlign": "center",
        "marginTop": 30
    },
    "todo-item h2": {
        "fontWeight": "bold",
        "fontSize": 1.3
    },
    "footer": {
        "backgroundColor": "#222222",
        "color": "#FFFFFF",
        "width": "100%",
        "paddingTop": 40,
        "paddingRight": 20,
        "paddingBottom": 40,
        "paddingLeft": 20,
        "display": "inline-block",
        "boxSizing": "border-box"
    },
    "main-nav": {
        "float": "right"
    },
    "main-nav > ul > a > li": {
        "listStyle": "none",
        "float": "left",
        "paddingTop": 20,
        "paddingRight": 20,
        "paddingBottom": 20,
        "paddingLeft": 20,
        "color": "white",
        "transition": "0.3s",
        "borderRadius": 10,
        "border": "2px solid transparent",
        "marginTop": 5,
        "marginRight": 5,
        "marginBottom": 5,
        "marginLeft": 5
    },
    "main-nav > ul > a > li:hover": {
        "backgroundColor": "transparent",
        "border": "2px solid #FFFFFF",
        "transition": "0.3s"
    }
});