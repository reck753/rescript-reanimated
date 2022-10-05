module View = {
  @react.component @module("./exports")
  external make: (
    ~style: ReactNative.Style.t=?,
    ~children: React.element=?,
    ~onLayout: ReactNative.Event.layoutEvent => unit=?,
    ~pointerEvents: @string
    [
      | #auto
      | #none
      | @as("box-none") #boxNone
      | @as("box-only") #boxOnly
    ]=?,
  ) => React.element = "AnimatedView"
}

module Text = {
  @react.component @module("./exports")
  external make: (~style: ReactNative.Style.t=?, ~children: React.element=?) => React.element =
    "AnimatedText"
}
module ScrollView = {
  @react.component @module("./exports")
  external make: (
    ~alwaysBounceHorizontal: bool=?,
    ~alwaysBounceVertical: bool=?,
    ~automaticallyAdjustContentInsets: bool=?,
    ~bounces: bool=?,
    ~bouncesZoom: bool=?,
    ~canCancelContentTouches: bool=?,
    ~centerContent: bool=?,
    ~contentContainerStyle: ReactNative.Style.t=?,
    ~contentInset: ReactNative.View.edgeInsets=?,
    ~contentInsetAdjustmentBehavior: ReactNative.ScrollView.contentInsetAdjustmentBehavior=?,
    ~contentOffset: ReactNative.ScrollView.contentOffset=?,
    ~decelerationRate: ReactNative.ScrollView.decelerationRate=?,
    ~directionalLockEnabled: bool=?,
    ~endFillColor: ReactNative.Color.t=?,
    ~fadingEdgeLength: float=?,
    ~horizontal: bool=?,
    ~indicatorStyle: ReactNative.ScrollView.indicatorStyle=?,
    ~keyboardDismissMode: @string
    [
      | #none
      | #interactive
      | @as("on-drag") #onDrag
    ]=?,
    ~keyboardShouldPersistTaps: ReactNative.ScrollView.keyboardShouldPersistTaps=?,
    ~maximumZoomScale: float=?,
    ~minimumZoomScale: float=?,
    ~nestedScrollEnabled: bool=?,
    ~onContentSizeChange: ((float, float)) => unit=?,
    ~onMomentumScrollBegin: ReactNative.Event.scrollEvent => unit=?,
    ~onMomentumScrollEnd: ReactNative.Event.scrollEvent => unit=?,
    ~onScroll: ReactNative.Event.scrollEvent => unit=?,
    ~onScrollBeginDrag: ReactNative.Event.scrollEvent => unit=?,
    ~onScrollEndDrag: ReactNative.Event.scrollEvent => unit=?,
    ~overScrollMode: ReactNative.ScrollView.overScrollMode=?,
    ~pagingEnabled: bool=?,
    ~pinchGestureEnabled: bool=?,
    ~refreshControl: React.element=?,
    ~scrollEnabled: bool=?,
    ~scrollEventThrottle: int=?,
    ~scrollIndicatorInsets: ReactNative.View.edgeInsets=?,
    ~scrollPerfTag: string=?,
    ~scrollsToTop: bool=?,
    ~scrollToOverflowEnabled: bool=?,
    ~showsHorizontalScrollIndicator: bool=?,
    ~showsVerticalScrollIndicator: bool=?,
    ~snapToAlignment: ReactNative.ScrollView.snapToAlignment=?,
    ~snapToEnd: bool=?,
    ~snapToInterval: float=?,
    ~snapToOffsets: array<float>=?,
    ~snapToStart: bool=?,
    ~stickyHeaderHiddenOnScroll: bool=?,
    ~stickyHeaderIndices: array<int>=?,
    ~zoomScale: float=?,
    // rescript-react-native 0.64 || 0.65 || 0.66 View props
    ~accessibilityActions: array<ReactNative.Accessibility.actionInfo>=?,
    ~accessibilityElementsHidden: bool=?,
    ~accessibilityHint: string=?,
    ~accessibilityIgnoresInvertColors: bool=?,
    ~accessibilityLabel: string=?,
    ~accessibilityLiveRegion: ReactNative.Accessibility.liveRegion=?,
    ~accessibilityRole: ReactNative.Accessibility.role=?,
    ~accessibilityState: ReactNative.Accessibility.state=?,
    ~accessibilityValue: ReactNative.Accessibility.value=?,
    ~accessibilityViewIsModal: bool=?,
    ~accessible: bool=?,
    ~collapsable: bool=?,
    ~hitSlop: ReactNative.View.edgeInsets=?,
    ~importantForAccessibility: @string
    [
      | #auto
      | #yes
      | #no
      | @as("no-hide-descendants") #noHideDescendants
    ]=?,
    ~nativeID: string=?,
    ~needsOffscreenAlphaCompositing: bool=?,
    ~onAccessibilityAction: ReactNative.Accessibility.actionEvent => unit=?,
    ~onAccessibilityEscape: unit => unit=?,
    ~onAccessibilityTap: unit => unit=?,
    ~onLayout: ReactNative.Event.layoutEvent => unit=?,
    ~onMagicTap: unit => unit=?,
    // Gesture Responder props
    ~onMoveShouldSetResponder: ReactNative.Event.pressEvent => bool=?,
    ~onMoveShouldSetResponderCapture: ReactNative.Event.pressEvent => bool=?,
    ~onResponderEnd: ReactNative.Event.pressEvent => unit=?,
    ~onResponderGrant: ReactNative.Event.pressEvent => unit=?,
    ~onResponderMove: ReactNative.Event.pressEvent => unit=?,
    ~onResponderReject: ReactNative.Event.pressEvent => unit=?,
    ~onResponderRelease: ReactNative.Event.pressEvent => unit=?,
    ~onResponderStart: ReactNative.Event.pressEvent => unit=?,
    ~onResponderTerminate: ReactNative.Event.pressEvent => unit=?,
    ~onResponderTerminationRequest: ReactNative.Event.pressEvent => bool=?,
    ~onStartShouldSetResponder: ReactNative.Event.pressEvent => bool=?,
    ~onStartShouldSetResponderCapture: ReactNative.Event.pressEvent => bool=?,
    ~pointerEvents: @string
    [
      | #auto
      | #none
      | @as("box-none") #boxNone
      | @as("box-only") #boxOnly
    ]=?,
    ~removeClippedSubviews: bool=?,
    ~renderToHardwareTextureAndroid: bool=?,
    ~shouldRasterizeIOS: bool=?,
    ~style: ReactNative.Style.t=?,
    ~testID: string=?,
    ~children: React.element=?,
    // react-native-web 0.16 View props
    ~href: string=?,
    ~hrefAttrs: ReactNative.Web.hrefAttrs=?,
    ~onMouseDown: ReactEvent.Mouse.t => unit=?,
    ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
    ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
    ~onMouseMove: ReactEvent.Mouse.t => unit=?,
    ~onMouseOver: ReactEvent.Mouse.t => unit=?,
    ~onMouseOut: ReactEvent.Mouse.t => unit=?,
    ~onMouseUp: ReactEvent.Mouse.t => unit=?,
  ) => React.element = "AnimatedScrollView"
}

type reanimatedScrollHandler = ReactNative.Event.ScrollEvent.payload => unit

type handlers = {
  onMomentumEnd?: reanimatedScrollHandler,
  onBeginDrag?: reanimatedScrollHandler,
  onEndDrag?: reanimatedScrollHandler,
  onMomentumBegin?: reanimatedScrollHandler,
  onScroll?: reanimatedScrollHandler,
}

type scrollHandler = ReactNative.Event.scrollEvent => unit

@module("react-native-reanimated")
/** 
Receives a record of scroll event handlers and returns a single handler that can be passed to ResAnimated.ScrollView


Example:
 ```
let scrollHandler = useAnimatedScrollHandler({
    onScroll: event => {
      translationY.value = event.contentOffset.y
    },
  })

  <ResAnimated.ScrollView onScroll=scrollHandler />
  ```
 */
external useAnimatedScrollHandler: handlers => scrollHandler = "useAnimatedScrollHandler"

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
external runOnUI: ('arg => 'return, . 'arg) => unit = "runOnUI"

@module("react-native-reanimated")
external runOnJS: ('arg => 'return, . 'arg) => unit = "runOnJS"

module SharedValue = {
  type t<'t> = {mutable value: 't}
  let make: 't => t<'t> = smth => {value: smth}
}

@module("react-native-reanimated")
external useSharedValue: 't => SharedValue.t<'t> = "useSharedValue"

type animationCallback<'t> = (option<bool>, option<'t>) => unit

module Timing = {
  type justDuration = {duration: float}

  type justEasing = {easing: ReactNative.Easing.t}

  type both = {
    duration: float,
    easing: ReactNative.Easing.t,
  }

  let makeConfig = (~duration: option<float>=?, ~easing: option<ReactNative.Easing.t>=?, ()) => {
    switch (duration, easing) {
    | (Some(duration), None) => Some(#Duration({duration: duration}))
    | (None, Some(easing)) => Some(#Easing({easing: easing}))
    | (Some(duration), Some(easing)) => Some(#Both({duration, easing}))
    | (None, None) => None
    }
  }

  // DO NOT USE OR YOU WILL GET FIRED ;)
  @module("react-native-reanimated")
  external withTiming_: (
    't,
    @unwrap
    [#Duration(justDuration) | #Easing(justEasing) | #Both(both) | #Nothing(option<string>)],
    option<animationCallback<'t>>,
  ) => float = "withTiming"
}

let withTiming = (
  ~toValue: 't,
  ~userConfig: option<
    [#Duration(Timing.justDuration) | #Easing(Timing.justEasing) | #Both(Timing.both)],
  >,
  ~callback: option<animationCallback<'t>>=?,
  (),
) => {
  Timing.withTiming_(
    toValue,
    switch userConfig {
    | Some(#Duration(durationObj)) => #Duration(durationObj)
    | Some(#Easing(easingObj)) => #Easing(easingObj)
    | Some(#Both(bothObj)) => #Both(bothObj)
    | None => #Nothing(None)
    },
    callback,
  )
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
    mass,
    stiffness,
    overshootClamping,
    restDisplacementThreshold,
    restSpeedThreshold,
    velocity,
    damping,
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
external useAnimatedStyle: (@uncurry (unit => ReactNative.Style.t)) => ReactNative.Style.t =
  "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle0: (
  @uncurry (unit => ReactNative.Style.t),
  @as(json`[]`) _,
) => ReactNative.Style.t = "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle1: (
  @uncurry (unit => ReactNative.Style.t),
  array<'a>,
) => ReactNative.Style.t = "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle2: (
  @uncurry (unit => ReactNative.Style.t),
  ('a, 'b),
) => ReactNative.Style.t = "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle3: (
  @uncurry (unit => ReactNative.Style.t),
  ('a, 'b, 'c),
) => ReactNative.Style.t = "useAnimatedStyle"
@module("react-native-reanimated")
external useAnimatedStyle4: (
  @uncurry (unit => ReactNative.Style.t),
  ('a, 'b, 'c, 'd),
) => ReactNative.Style.t = "useAnimatedStyle"

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
external interpolateColor: (
  float,
  array<float>,
  array<ReactNative.Color.t>,
  option<[#RGB | #HSV]>,
) => ReactNative.Color.t = "interpolateColor"
