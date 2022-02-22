# Circular Slider SwiftUI

<a href="https://docs.swift.org/swift-book/" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/swift-5.0-brightgreen">
</a>
<a href="https://developer.apple.com/ios/" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-iOS-red">
</a>
<a href="https://www.codacy.com?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=nikunjprajapati95/Reading-Animation&amp;utm_campaign=Badge_Grade"><img src="https://app.codacy.com/project/badge/Grade/44b16d6ddb96446b875d38bf2ec89b11"/></a>
<a href="https://github.com/nikunjprajapati95/Reading-Animation/blob/main/LICENSE" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/licence-MIT-orange">
</a>
<p></p> 

## Preview

Discover the world 🌎 around you..!!!

![CircularSlider](https://user-images.githubusercontent.com/42262083/155064973-88f3637f-6d8c-4a2f-a555-df9d0ce6f24d.gif)

A powerful Circular Slider. It's written in SwiftUI

To run the example project, clone the repo, and run `pod install` from the Example directory.
<br />
## Requirements
- iOS 13.0+
- Xcode 12.5+

## Installation
Circular Slider is available through CocoaPods. To install it, simply add the following line to your Podfile:

To install it, simply add the following line to your Podfile:

```ruby
pod 'CircularSlider', git: 'https://github.com/PiyushSelarka/CircularSlider.git', branch: 'main'
```
## Usage
Added import CircularSlider
```swift
import CircularSlider
```

## Config 
Configration for Circular Slider with completion
```swift
    CircularSlider(config: Config(minimumValue: 0.0,
                                  maximumValue: 100,
                                  totalValue: 100,
                                  knobRadius: 10,
                                  radius: 125,
                                  outercircleColor: colorCircle,
                                  innercircleColor:innerColor,
                                  lineColor: Color(UIColor.lightGray),
                                  lineWidth: 1.0,
                                  tickColor: Color.gray,
                                  tickhighlightedColor: Color.white,
                                  sliderColor: gradientSlider,
                                  startPointCircleColor: startPointColor,
                                  pointCircleColor: pointColor,
                                  titleText : "Monday"
                                  ),
                                  completion: { (value) in
                                      print(value) // Getting slider value 
                                  }
    )
```

##### minimumValue
The Slider of the minimumValue set in CGFlote.init

##### maximumValue
The Slider of the maximumValue set in CGFlote.init

##### totalValue
The totalValue for trimming line set in CGFlote.init  

##### knobRadius
The start and and points circle radius 

##### radius
The radius for circular slider 

##### outercircleColor
The color of back circle set Color.init

##### innercircleColor
The color of inner side circle set RadialGradient.init

##### lineColor
The color of line in inner circle set Color.init

##### lineWidth
The width of line in inner circle set CGFlote.init

##### tickColor
The color of tick in 360 degree circle set Color.init

##### tickhighlightedColor
The color of tick highlighted in 360 degree circle set Color.init

##### sliderColor
The color of slider set LinearGradient.init

##### startPointCircleColor
The slider start circle color set RadialGradient.init

##### pointCircleColor
The slider drag circle color set RadialGradient.init

##### titleText
set Title text in circle 

#### CallBack

```swift
completion: { (value) in
    print(value) // Getting slider value 
}
```

## License
MI-Circular Slider is [MIT-licensed](/LICENSE).

