# react-native-segment-io

React Native wrapper for [Segment](https://segment.com).

## Setup

```bash
# Yarn
yarn add react-native-segment-io

# NPM
npm install --save react-native-segment-io
```

### iOS with Cocoapods

Add the following to your Podfile:

```ruby
pod "react-native-segment-io", path: "../node_modules/react-native-segment-io"
```

Then run:

```bash
pod install
```

You're done! :tada:

**NOTE** Your relative path to `node_modules` may differ.

### Android

Coming soon, PRs welcome!

## Usage

TODO

## Advanced

One of the benefits of using Segment is its powerful integrations. This package allows you to seamlessly add integrations.

### iOS

To add integrations on the iOS side, just add subspecs:

```ruby
pod "react-native-segment-io", path: "../node_modules/react-native-segment-io", subspecs: [
  # Make sure to include the Core subspec.
  "Core",

  # Each of the services are listed in the podspec.
  "Amplitude",
  "GoogleAnalytics",
  "Mixpanel",
]
```

If there's an integration that's missing that you'd like to have access to via this pod, submit a PR or file an issue :)

### Android

Coming soon, PRs welcome!
