type animationCallback<'t> = (option<bool>, option<'t>) => unit
// Reanimated Style is ViewStyle + TextStyle + easing, originX, and originY
type reanimatedStyle
@obj
external reanimatedStyle: (
  ~alignContent: ReanimatedStyle.alignContent=?,
  ~alignItems: ReanimatedStyle.alignItems=?,
  ~alignSelf: ReanimatedStyle.alignSelf=?,
  ~aspectRatio: float=?,
  ~backfaceVisibility: ReanimatedStyle.backfaceVisibility=?,
  ~backgroundColor: ReactNative.Color.t=?,
  ~borderBottomColor: ReactNative.Color.t=?,
  ~borderBottomEndRadius: float=?,
  ~borderBottomLeftRadius: float=?,
  ~borderBottomRightRadius: float=?,
  ~borderBottomStartRadius: float=?,
  ~borderBottomWidth: float=?,
  ~borderColor: ReactNative.Color.t=?,
  ~borderEndColor: ReactNative.Color.t=?,
  ~borderEndWidth: float=?,
  ~borderLeftColor: ReactNative.Color.t=?,
  ~borderLeftWidth: float=?,
  ~borderRadius: float=?,
  ~borderRightColor: ReactNative.Color.t=?,
  ~borderRightWidth: float=?,
  ~borderStartColor: ReactNative.Color.t=?,
  ~borderStartWidth: float=?,
  ~borderStyle: ReanimatedStyle.borderStyle=?,
  ~borderTopColor: ReactNative.Color.t=?,
  ~borderTopEndRadius: float=?,
  ~borderTopLeftRadius: float=?,
  ~borderTopRightRadius: float=?,
  ~borderTopStartRadius: float=?,
  ~borderTopWidth: float=?,
  ~borderWidth: float=?,
  ~bottom: ReanimatedStyle.size=?,
  ~direction: ReanimatedStyle.direction=?,
  ~display: ReanimatedStyle.display=?,
  ~easing: float => float=?,
  ~elevation: float=?,
  ~end: ReanimatedStyle.size=?,
  ~flex: float=?,
  ~flexBasis: ReanimatedStyle.margin=?,
  ~flexDirection: ReanimatedStyle.flexDirection=?,
  ~flexGrow: float=?,
  ~flexShrink: float=?,
  ~flexWrap: ReanimatedStyle.flexWrap=?,
  ~height: ReanimatedStyle.size=?,
  ~justifyContent: ReanimatedStyle.justifyContent=?,
  ~left: ReanimatedStyle.size=?,
  ~margin: ReanimatedStyle.margin=?,
  ~marginBottom: ReanimatedStyle.margin=?,
  ~marginEnd: ReanimatedStyle.margin=?,
  ~marginHorizontal: ReanimatedStyle.margin=?,
  ~marginLeft: ReanimatedStyle.margin=?,
  ~marginRight: ReanimatedStyle.margin=?,
  ~marginStart: ReanimatedStyle.margin=?,
  ~marginTop: ReanimatedStyle.margin=?,
  ~marginVertical: ReanimatedStyle.margin=?,
  ~maxHeight: ReanimatedStyle.size=?,
  ~maxWidth: ReanimatedStyle.size=?,
  ~minHeight: ReanimatedStyle.size=?,
  ~minWidth: ReanimatedStyle.size=?,
  ~opacity: float=?,
  ~originX: float=?,
  ~originY: float=?,
  ~overflow: ReanimatedStyle.overflow=?,
  ~padding: ReanimatedStyle.size=?,
  ~paddingBottom: ReanimatedStyle.size=?,
  ~paddingEnd: ReanimatedStyle.size=?,
  ~paddingHorizontal: ReanimatedStyle.size=?,
  ~paddingLeft: ReanimatedStyle.size=?,
  ~paddingRight: ReanimatedStyle.size=?,
  ~paddingStart: ReanimatedStyle.size=?,
  ~paddingTop: ReanimatedStyle.size=?,
  ~paddingVertical: ReanimatedStyle.size=?,
  ~position: ReanimatedStyle.position=?,
  ~right: ReanimatedStyle.size=?,
  ~shadowColor: ReactNative.Color.t=?,
  ~shadowOffset: ReanimatedStyle.offset=?,
  ~shadowOpacity: float=?,
  ~shadowRadius: float=?,
  ~start: ReanimatedStyle.size=?,
  ~top: ReanimatedStyle.size=?,
  ~transform: array<ReanimatedStyle.transform>=?,
  ~width: ReanimatedStyle.size=?,
  ~zIndex: int=?,
  unit,
) => reanimatedStyle = ""

module LayoutAnimation = {
  type t = unit
  module Modifiers = {
    @send
    external duration: (t, float) => t = "duration"
    @send
    external delay: (t, float) => t = "delay"
    @send
    external easing: ('c, t, animationCallback<'c>) => t = "easing"
    @send
    external springify: t => t = "springify"
    @send
    external damping: (t, float) => t = "damping"
    @send
    external mass: (t, float) => t = "mass"
    @send
    external stiffness: (t, float) => t = "stiffness"
    @send
    external overshootClamping: (t, bool) => t = "overshootClamping"
    @send
    external restDisplacementThreshold: (t, float) => t = "restDisplacementThreshold"
    @send
    external restSpeedThreshold: (t, float) => t = "restSpeedThreshold"
    @send
    external withCallback: (t, bool => unit) => t = "withCallback"
    @send
    external withInitialValues: (t, float) => t = "withInitialValues"
    @send
    external randomDelay: t => t = "randomDelay"
  }
  include Modifiers

  @module("react-native-reanimated")
  external fadeIn: t = "FadeIn"
  @module("react-native-reanimated")
  external fadeInRight: t = "FadeInRight"
  @module("react-native-reanimated")
  external fadeInLeft: t = "FadeInLeft"
  @module("react-native-reanimated")
  external fadeInUp: t = "FadeInUp"
  @module("react-native-reanimated")
  external fadeInDown: t = "FadeInDown"
  @module("react-native-reanimated")
  external bounceIn: t = "BounceIn"
  @module("react-native-reanimated")
  external bounceInRight: t = "BounceInRight"
  @module("react-native-reanimated")
  external bounceInLeft: t = "BounceInLeft"
  @module("react-native-reanimated")
  external bounceInUp: t = "BounceInUp"
  @module("react-native-reanimated")
  external bounceInDown: t = "BounceInDown"
  @module("react-native-reanimated")
  external flipInYRight: t = "FlipInYRight"
  @module("react-native-reanimated")
  external flipInYLeft: t = "FlipInYLeft"
  @module("react-native-reanimated")
  external flipInXUp: t = "FlipInXUp"
  @module("react-native-reanimated")
  external flipInXDown: t = "FlipInXDown"
  @module("react-native-reanimated")
  external flipInEasyX: t = "FlipInEasyX"
  @module("react-native-reanimated")
  external flipInEasyY: t = "FlipInEasyY"
  @module("react-native-reanimated")
  external stretchInX: t = "StretchInX"
  @module("react-native-reanimated")
  external stretchInY: t = "StretchInY"
  @module("react-native-reanimated")
  external zoomIn: t = "ZoomIn"
  @module("react-native-reanimated")
  external zoomInRotate: t = "ZoomInRotate"
  @module("react-native-reanimated")
  external zoomInRight: t = "ZoomInRight"
  @module("react-native-reanimated")
  external zoomInLeft: t = "ZoomInLeft"
  @module("react-native-reanimated")
  external zoomInUp: t = "ZoomInUp"
  @module("react-native-reanimated")
  external zoomInDown: t = "ZoomInDown"
  @module("react-native-reanimated")
  external zoomInEasyUp: t = "ZoomInEasyUp"
  @module("react-native-reanimated")
  external zoomInEasyDown: t = "ZoomInEasyDown"
  @module("react-native-reanimated")
  external slideInRight: t = "SlideInRight"
  @module("react-native-reanimated")
  external slideInLeft: t = "SlideInLeft"
  @module("react-native-reanimated")
  external slideInUp: t = "SlideInUp"
  @module("react-native-reanimated")
  external slideInDown: t = "SlideInDown"
  @module("react-native-reanimated")
  external lightSpeedInRight: t = "LightSpeedInRight"
  @module("react-native-reanimated")
  external lightSpeedInLeft: t = "LightSpeedInLeft"
  @module("react-native-reanimated")
  external pinwheelIn: t = "PinwheelIn"
  @module("react-native-reanimated")
  external rollInLeft: t = "RollInLeft"
  @module("react-native-reanimated")
  external rollInRight: t = "RollInRight"
  @module("react-native-reanimated")
  external rotateInDownLeft: t = "RotateInDownLeft"
  @module("react-native-reanimated")
  external rotateInDownRight: t = "RotateInDownRight"
  @module("react-native-reanimated")
  external rotateInUpLeft: t = "RotateInUpLeft"
  @module("react-native-reanimated")
  external rotateInUpRight: t = "RotateInUpRight"
}
include LayoutAnimation

module KeyFrame = {
  type keyframeConfig = {
    from?: reanimatedStyle,
    to?: reanimatedStyle,
    // This looks a little bit stupid, but this has better developer experience and type inference than using a dict/object.
    \"0"?: reanimatedStyle,
    \"1"?: reanimatedStyle,
    \"2"?: reanimatedStyle,
    \"3"?: reanimatedStyle,
    \"4"?: reanimatedStyle,
    \"5"?: reanimatedStyle,
    \"6"?: reanimatedStyle,
    \"7"?: reanimatedStyle,
    \"8"?: reanimatedStyle,
    \"9"?: reanimatedStyle,
    \"10"?: reanimatedStyle,
    \"11"?: reanimatedStyle,
    \"12"?: reanimatedStyle,
    \"13"?: reanimatedStyle,
    \"14"?: reanimatedStyle,
    \"15"?: reanimatedStyle,
    \"16"?: reanimatedStyle,
    \"17"?: reanimatedStyle,
    \"18"?: reanimatedStyle,
    \"19"?: reanimatedStyle,
    \"20"?: reanimatedStyle,
    \"21"?: reanimatedStyle,
    \"22"?: reanimatedStyle,
    \"23"?: reanimatedStyle,
    \"24"?: reanimatedStyle,
    \"25"?: reanimatedStyle,
    \"26"?: reanimatedStyle,
    \"27"?: reanimatedStyle,
    \"28"?: reanimatedStyle,
    \"29"?: reanimatedStyle,
    \"30"?: reanimatedStyle,
    \"31"?: reanimatedStyle,
    \"32"?: reanimatedStyle,
    \"33"?: reanimatedStyle,
    \"34"?: reanimatedStyle,
    \"35"?: reanimatedStyle,
    \"36"?: reanimatedStyle,
    \"37"?: reanimatedStyle,
    \"38"?: reanimatedStyle,
    \"39"?: reanimatedStyle,
    \"40"?: reanimatedStyle,
    \"41"?: reanimatedStyle,
    \"42"?: reanimatedStyle,
    \"43"?: reanimatedStyle,
    \"44"?: reanimatedStyle,
    \"45"?: reanimatedStyle,
    \"46"?: reanimatedStyle,
    \"47"?: reanimatedStyle,
    \"48"?: reanimatedStyle,
    \"49"?: reanimatedStyle,
    \"50"?: reanimatedStyle,
    \"51"?: reanimatedStyle,
    \"52"?: reanimatedStyle,
    \"53"?: reanimatedStyle,
    \"54"?: reanimatedStyle,
    \"55"?: reanimatedStyle,
    \"56"?: reanimatedStyle,
    \"57"?: reanimatedStyle,
    \"58"?: reanimatedStyle,
    \"59"?: reanimatedStyle,
    \"60"?: reanimatedStyle,
    \"61"?: reanimatedStyle,
    \"62"?: reanimatedStyle,
    \"63"?: reanimatedStyle,
    \"64"?: reanimatedStyle,
    \"65"?: reanimatedStyle,
    \"66"?: reanimatedStyle,
    \"67"?: reanimatedStyle,
    \"68"?: reanimatedStyle,
    \"69"?: reanimatedStyle,
    \"70"?: reanimatedStyle,
    \"71"?: reanimatedStyle,
    \"72"?: reanimatedStyle,
    \"73"?: reanimatedStyle,
    \"74"?: reanimatedStyle,
    \"75"?: reanimatedStyle,
    \"76"?: reanimatedStyle,
    \"77"?: reanimatedStyle,
    \"78"?: reanimatedStyle,
    \"79"?: reanimatedStyle,
    \"80"?: reanimatedStyle,
    \"81"?: reanimatedStyle,
    \"82"?: reanimatedStyle,
    \"83"?: reanimatedStyle,
    \"84"?: reanimatedStyle,
    \"85"?: reanimatedStyle,
    \"86"?: reanimatedStyle,
    \"87"?: reanimatedStyle,
    \"88"?: reanimatedStyle,
    \"89"?: reanimatedStyle,
    \"90"?: reanimatedStyle,
    \"91"?: reanimatedStyle,
    \"92"?: reanimatedStyle,
    \"93"?: reanimatedStyle,
    \"94"?: reanimatedStyle,
    \"95"?: reanimatedStyle,
    \"96"?: reanimatedStyle,
    \"97"?: reanimatedStyle,
    \"98"?: reanimatedStyle,
    \"99"?: reanimatedStyle,
    \"100"?: reanimatedStyle,
  }
  @new
  @module("react-native-reanimated")
  /** 
Receives a keyframe config with the style of each step. It returns a layout animation that can be used with modifiers, like duration.

Example:
 ```
  let exitKeyframe = keyframe({
    from: reanimatedStyle(~transform=[translateY(~translateY=0.)], ~opacity=1., ()),
    to: reanimatedStyle(~transform=[translateY(~translateY=-60.)], ~opacity=0., ()),
  })->duration(50.)

  <Reanimated.View exiting=exitKeyframe />
  ```
 */
  external keyframe: keyframeConfig => LayoutAnimation.t = "Keyframe"
}
include KeyFrame

module View = {
  @react.component @module("./exports")
  external make: (
    ~style: ReactNative.Style.t=?,
    ~children: React.element=?,
    ~onLayout: ReactNative.Event.layoutEvent => unit=?,
    ~entering: LayoutAnimation.t=?,
    ~exiting: LayoutAnimation.t=?,
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
  external make: (
    ~style: ReactNative.Style.t=?,
    ~children: React.element=?,
    ~entering: LayoutAnimation.t=?,
    ~exiting: LayoutAnimation.t=?,
  ) => React.element = "AnimatedText"
}
module ScrollView = {
  @react.component @module("./exports")
  external make: (
    ~entering: LayoutAnimation.t=?,
    ~exiting: LayoutAnimation.t=?,
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
Receives a record of scroll event handlers and returns a single handler that can be passed to Reanimated.ScrollView


Example:
 ```
let scrollHandler = useAnimatedScrollHandler({
    onScroll: event => {
      translationY.value = event.contentOffset.y
    },
  })

  <Reanimated.ScrollView onScroll=scrollHandler />
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
