// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Exports from "./exports";
import * as ReactNativeReanimated from "react-native-reanimated";

var Modifiers = {};

var LayoutAnimation = {
  Modifiers: Modifiers
};

var KeyFrame = {};

var make = Exports.AnimatedView;

var View = {
  make: make
};

var make$1 = Exports.AnimatedText;

var $$Text = {
  make: make$1
};

var make$2 = Exports.AnimatedScrollView;

var ScrollView = {
  make: make$2
};

function Make(Arguments) {
  return {};
}

var AnimatedGestureHandler = {
  Make: Make
};

function make$3(smth) {
  return {
          value: smth
        };
}

var SharedValue = {
  make: make$3
};

function makeConfig(duration, easing, param) {
  if (duration !== undefined) {
    if (easing !== undefined) {
      return {
              NAME: "Both",
              VAL: {
                duration: duration,
                easing: easing
              }
            };
    } else {
      return {
              NAME: "Duration",
              VAL: {
                duration: duration
              }
            };
    }
  } else if (easing !== undefined) {
    return {
            NAME: "Easing",
            VAL: {
              easing: easing
            }
          };
  } else {
    return ;
  }
}

var Timing = {
  makeConfig: makeConfig
};

function withTiming(toValue, userConfig, callback, param) {
  var tmp;
  if (userConfig !== undefined) {
    var variant = userConfig.NAME;
    tmp = variant === "Both" ? ({
          NAME: "Both",
          VAL: userConfig.VAL
        }) : (
        variant === "Easing" ? ({
              NAME: "Easing",
              VAL: userConfig.VAL
            }) : ({
              NAME: "Duration",
              VAL: userConfig.VAL
            })
      );
  } else {
    tmp = {
      NAME: "Nothing",
      VAL: undefined
    };
  }
  return ReactNativeReanimated.withTiming(toValue, tmp.VAL, callback);
}

function makeConfig$1(mass, stiffness, overshootClamping, restDisplacementThreshold, restSpeedThreshold, velocity, damping, param) {
  return {
          mass: mass,
          stiffness: stiffness,
          overshootClamping: overshootClamping,
          restDisplacementThreshold: restDisplacementThreshold,
          restSpeedThreshold: restSpeedThreshold,
          velocity: velocity,
          damping: damping
        };
}

var Spring = {
  makeConfig: makeConfig$1
};

function withSpring(toValue, userConfig, callback, param) {
  return ReactNativeReanimated.withSpring(toValue, userConfig, callback);
}

var Extrapolation = {};

var ExtrapolationType = {};

var Interpolate = {};

export {
  LayoutAnimation ,
  Modifiers ,
  KeyFrame ,
  View ,
  $$Text ,
  ScrollView ,
  AnimatedGestureHandler ,
  SharedValue ,
  Timing ,
  withTiming ,
  Spring ,
  withSpring ,
  Extrapolation ,
  ExtrapolationType ,
  Interpolate ,
}
/* make Not a pure module */
