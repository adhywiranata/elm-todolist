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
        "paddingTop": 20,
        "paddingRight": 20,
        "paddingBottom": 20,
        "paddingLeft": 20,
        "display": "inline-block",
        "boxSizing": "border-box",
        "backgroundColor": "#353535",
        "color": "#FFFFFF"
    },
    "logo": {
        "float": "left"
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
        "marginTop": 5,
        "marginRight": 5,
        "marginBottom": 5,
        "marginLeft": 5
    },
    "main-nav > ul > a > li:hover": {
        "backgroundColor": "#555555",
        "transition": "0.3s"
    }
});