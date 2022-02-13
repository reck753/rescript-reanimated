open ReactNative

module View = {
  @react.component @module("./exports")
  external make: (
    ~style: Style.t=?,
    ~children: React.element=?,
    ~pointerEvents: @string
    [
      | #auto
      | #none
      | @as("box-none") #boxNone
      | @as("box-only") #boxOnly
    ]=?,
  ) => React.element = "AnimatedView"
}

module AnimatedGestureHandler = {
  module Make = (
    Arguments: {
      type event
      type ctx
    },
  ) => {
    type t = {
      onStart: option<(Arguments.event, Arguments.ctx) => unit>,
      onActive: option<(Arguments.event, Arguments.ctx) => unit>,
      onEnd: option<(Arguments.event, Arguments.ctx) => unit>,
      onFail: option<(Arguments.event, Arguments.ctx) => unit>,
      onCancel: option<(Arguments.event, Arguments.ctx) => unit>,
      onFinish: option<(Arguments.event, Arguments.ctx) => unit>,
    }

    @obj
    external makeGestureHandlers: (
      ~onStart: (Arguments.event, Arguments.ctx) => unit=?,
      ~onActive: (Arguments.event, Arguments.ctx) => unit=?,
      ~onEnd: (Arguments.event, Arguments.ctx) => unit=?,
      ~onFail: (Arguments.event, Arguments.ctx) => unit=?,
      ~onCancel: (Arguments.event, Arguments.ctx) => unit=?,
      ~onFinish: (Arguments.event, Arguments.ctx) => unit=?,
      unit,
    ) => t = ""

    type _returnType = Arguments.event => unit
    type _gestureHandlers = t

    @module("react-native-reanimated")
    external useAnimatedGestureHandler: _gestureHandlers => _returnType =
      "useAnimatedGestureHandler"
    @module("react-native-reanimated")
    external useAnimatedGestureHandler0: (_gestureHandlers, @as(json`[]`) _) => _returnType =
      "useAnimatedGestureHandler"
    @module("react-native-reanimated")
    external useAnimatedGestureHandle1: (_gestureHandlers, array<'a>) => _returnType =
      "useAnimatedGestureHandler"
    @module("react-native-reanimated")
    external useAnimatedGestureHandle2: (_gestureHandlers, ('a, 'b)) => _returnType =
      "useAnimatedGestureHandler"
    @module("react-native-reanimated")
    external useAnimatedGestureHandle3: (_gestureHandlers, ('a, 'b, 'c)) => _returnType =
      "useAnimatedGestureHandler"
    @module("react-native-reanimated")
    external useAnimatedGestureHandle4: (_gestureHandlers, ('a, 'b, 'c, 'd)) => _returnType =
      "useAnimatedGestureHandler"
  }
}

@module("react-native-reanimated")
external runOnUI: ('fn, . unit) => unit = "runOnUI"

@module("react-native-reanimated")
external runOnJS: ('fn, . unit) => unit = "runOnJS"

module SharedValue = {
  type t<'t> = {mutable value: 't}
  let make: 't => t<'t> = smth => {value: smth}
}

@module("react-native-reanimated")
external useSharedValue: 't => SharedValue.t<'t> = "useSharedValue"

module Easing = {
  type t = float => float

  @module("react-native-reanimated") @scope("Easing")
  external linear: float => float = "linear"
  @module("react-native-reanimated") @scope("Easing")
  external ease: float => float = "ease"
  @module("react-native-reanimated") @scope("Easing")
  external quad: float => float = "quad"
  @module("react-native-reanimated") @scope("Easing")
  external cubic: float => float = "cubic"
  @module("react-native-reanimated") @scope("Easing")
  external out: t => t = "out"
  // TODO Add rest
}

type animationCallback<'t> = (option<bool>, option<'t>) => unit

module Timing = {
  type config = {
    duration: option<float>,
    easing: option<Easing.t>,
  }

  let makeConfig = (~duration: option<float>=?, ~easing: option<Easing.t>=?, ()) => {
    duration: duration,
    easing: easing,
  }

  @module("react-native-reanimated")
  external withTiming_: ('t, option<config>, option<animationCallback<'t>>) => float = "withTiming"
}

let withTiming = (
  ~toValue: 't,
  ~userConfig: option<Timing.config>=?,
  ~callback: option<animationCallback<'t>>=?,
  (),
) => {
  Timing.withTiming_(toValue, userConfig, callback)
}

module Spring = {
  type config = {
    mass: option<float>,
    stiffness: option<float>,
    overshootClamping: option<bool>,
    restDisplacementThreshold: option<float>,
    restSpeedThreshold: option<float>,
    velocity: option<float>,
    damping: option<float>,
  }
  let makeConfig = (
    ~mass: option<float>=?,
    ~stiffness: option<float>=?,
    ~overshootClamping: option<bool>=?,
    ~restDisplacementThreshold: option<float>=?,
    ~restSpeedThreshold: option<float>=?,
    ~velocity: option<float>=?,
    ~damping: option<float>=?,
    (),
  ) => {
    mass: mass,
    stiffness: stiffness,
    overshootClamping: overshootClamping,
    restDisplacementThreshold: restDisplacementThreshold,
    restSpeedThreshold: restSpeedThreshold,
    velocity: velocity,
    damping: damping,
  }
  @module("react-native-reanimated")
  external withSpring_: ('t, option<config>, option<animationCallback<'t>>) => float = "withSpring"
}

let withSpring = (
  ~toValue: 't,
  ~userConfig: option<Spring.config>=?,
  ~callback: option<animationCallback<'t>>=?,
  (),
) => {
  Spring.withSpring_(toValue, userConfig, callback)
}

@module("react-native-reanimated")
external useAnimatedStyle: (@uncurry (unit => Style.t)) => Style.t = "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle0: (@uncurry (unit => Style.t), @as(json`[]`) _) => Style.t =
  "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle1: (@uncurry (unit => Style.t), array<'a>) => Style.t = "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle2: (@uncurry (unit => Style.t), ('a, 'b)) => Style.t = "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle3: (@uncurry (unit => Style.t), ('a, 'b, 'c)) => Style.t =
  "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle4: (@uncurry (unit => Style.t), ('a, 'b, 'c, 'd)) => Style.t =
  "useAnimatedStyle"

module Extrapolation = {
  type t

  type extrapolation = {
    @as("IDENTITY") identity: [#identity],
    @as("CLAMP") clamp: [#clamp],
    @as("EXTEND") extend: [#extend],
  }

  external asExtrapolation: extrapolation => t = "%identity"
  external asString: string => t = "%identity"
}

type extrapolationConfig = {
  extrapolateLeft: option<Extrapolation.t>,
  extrapolateRight: option<Extrapolation.t>,
}

module ExtrapolationType = {
  type t

  external asExtrapolation: Extrapolation.extrapolation => t = "%identity"
  external asExtrapolationConfig: extrapolationConfig => t = "%identity"
  external asString: string => t = "%identity"
}

module Interpolate = {
  type x = float
  type input = array<float>
  type output = array<float>
  type type_ = option<ExtrapolationType.t>
}

// Turn into named arguments maybe?
@module("react-native-reanimated")
external interpolate: (
  Interpolate.x,
  Interpolate.input,
  Interpolate.output,
  Interpolate.type_,
) => float = "interpolate"

@module("react-native-reanimated")
external interpolateColor: (float, array<float>, array<Color.t>, [#RGB | #HSV]) => Color.t =
  "interpolateColor"
