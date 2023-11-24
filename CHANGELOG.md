# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2.3.12 (2023-11-24)

### Breaking change

- Changed to JSX v4
- Changed `pointerEvents` `#boxNone` and `#boxOnly` to `#"box-none"` and `#"box-only"`
- Changed `keyboardDismissMode` `#onDrag` to `#"on-drag"`
- Changed `importantForAccessibility` `#noHideDescendants` to `#"no-hide-descendants"`

### Updated peer dependencies

- `@rescript/react` to `0.11.0`
- `rescript-react-native` to `0.72.0`

### Updated dev dependencies

- `rescript` to `10.1.4`

## 2.3.11 (2022-11-13)

- Initial support for layout animations with entering and exiting on Text, View, and ScrollView ([davisuga](https://github.com/davisuga)).
- Added support for `rescript-react-native` version `0.70` ([davisuga](https://github.com/davisuga)).

## 2.3.10 (2022-10-05)

### Breaking change

- Renamed the module from `ResAnimated` to `Reanimated`. `Reanimated` should be more appropriate name since this is a binding to react-native-**reanimated** after all.

## 2.3.9 (2022-10-05)

- Added `useAnimatedScrollHandler` and `ScrollView` ([davisuga](https://github.com/davisuga)).

## 2.3.8 (2022-10-03)

- Updated `rescript` to version `10.0.1` ([davisuga](https://github.com/davisuga)).
