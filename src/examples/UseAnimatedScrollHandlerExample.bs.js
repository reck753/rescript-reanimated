// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Reanimated from "../Reanimated.bs.js";
import * as Caml_option from "rescript/lib/es6/caml_option.js";
import * as JsxRuntime from "react/jsx-runtime";
import * as ReactNativeReanimated from "react-native-reanimated";

var container = {
  backgroundColor: "black",
  flex: 1
};

var flex = {
  flex: 1
};

var blue = {
  backgroundColor: "blue"
};

var content = {
  backgroundColor: "white",
  height: 1000
};

var Styles = {
  container: container,
  flex: flex,
  blue: blue,
  content: content
};

function UseAnimatedScrollHandlerExample(props) {
  var translationY = ReactNativeReanimated.useSharedValue(0);
  var scrollHandler = ReactNativeReanimated.useAnimatedScrollHandler({
        onScroll: (function ($$event) {
            translationY.value = $$event.contentOffset.y;
          })
      });
  var animatedStyles = ReactNativeReanimated.useAnimatedStyle(function () {
        return {
                transform: [{
                    translateY: translationY.value
                  }]
              };
      });
  return JsxRuntime.jsxs(Reanimated.View.make, {
              style: Caml_option.some(container),
              children: [
                JsxRuntime.jsx(Reanimated.View.make, {
                      style: [
                        animatedStyles,
                        flex,
                        blue
                      ]
                    }),
                JsxRuntime.jsx(Reanimated.ScrollView.make, {
                      onScroll: scrollHandler,
                      scrollEventThrottle: 16,
                      style: Caml_option.some(flex),
                      children: Caml_option.some(JsxRuntime.jsx(Reanimated.View.make, {
                                style: Caml_option.some(content),
                                children: Caml_option.some(JsxRuntime.jsx(Reanimated.$$Text.make, {
                                          children: "really cool content here!"
                                        }))
                              }))
                    })
              ]
            });
}

var make = UseAnimatedScrollHandlerExample;

var $$default = UseAnimatedScrollHandlerExample;

export {
  Styles ,
  make ,
  $$default ,
  $$default as default,
}
/* Reanimated Not a pure module */
