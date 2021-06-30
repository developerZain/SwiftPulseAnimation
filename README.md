# SwiftPulseAnimation

[![CI Status](https://img.shields.io/travis/developerZain/SwiftPulseAnimation.svg?style=flat)](https://travis-ci.org/developerZain/SwiftPulseAnimation)
[![Version](https://img.shields.io/cocoapods/v/SwiftPulseAnimation.svg?style=flat)](https://cocoapods.org/pods/SwiftPulseAnimation)
[![License](https://img.shields.io/cocoapods/l/SwiftPulseAnimation.svg?style=flat)](https://cocoapods.org/pods/SwiftPulseAnimation)
[![Platform](https://img.shields.io/cocoapods/p/SwiftPulseAnimation.svg?style=flat)](https://cocoapods.org/pods/SwiftPulseAnimation)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Demo
![](https://github.com/developerZain/SwiftPulseAnimation/blob/master/Example/SwiftPulseAnimation/Images.xcassets/gifIcon.dataset/Image.gif)
![](https://github.com/developerZain/SwiftPulseAnimation/blob/master/Example/SwiftPulseAnimation/Images.xcassets/icon.imageset/icon.jpeg)

## Requirements
IOS 12.1+
## Installation

SwiftPulseAnimation is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftPulseAnimation'
```

## Usage

```ruby
let pulse = Pulsing(numberOfPulses: 1, radius: 110, position: yourview.center, duration: 0.9, pulseColor: .blue)
self.view.layer.insertSublayer(pulse, below: yourview.layer)
```

## Author

developerZain, zainpk121@icloud.com

## License

SwiftPulseAnimation is available under the MIT license. See the LICENSE file for more info.
