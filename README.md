# Annular ProgressView 

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

Keeping a regular check on the progress of project completion is a bit difficult, but not any more, We have created our own custom progress view to meausre the progress of individual project on individual day based on the task completion.That help us to genrate daily report with the spacific numbers.

Using Annular progress view now it's no longer difficult to measure the bang on results!

![gif](/Screenshots/circularprogress.gif)

A powerful Circular Slider which has been written in SwiftUI

To run the example project, clone the repo, and run `pod install` from the Example directory.
<br />
## Requirements
- iOS 13.0+
- Xcode 12.5+

## Installation
Circular Slider is available through [CocoaPods](https://cocoapods.org/). To install it, simply add the following line to your Podfile:

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
                              radius: 125,TotalProgressView: 20.0,
                              outercircleColor: Color.init(red: 64/255, green: 66/255, blue: 131/255),
                              innercircleColor: RadialGradient(gradient: Gradient(colors: [.white, .gray]), center: .center, startRadius: 50, endRadius: 100),
                              lineColor: Color(UIColor.lightGray),
                              lineWidth: 1.0,
                              tickColor: Color.gray,
                              tickhighlightedColor: Color.white,
                              sliderColor: LinearGradient(gradient: Gradient(colors: [.blue, .white]),startPoint: .topLeading, endPoint: .bottomLeading),
                              startPointCircleColor: RadialGradient(gradient: Gradient(colors: [.white, .blue,]), center: .center, startRadius: 0, endRadius: 7),
                              pointCircleColor: RadialGradient(gradient: Gradient(colors: [.blue, .white]), center: .center, startRadius: 0, endRadius: 7),
                              titleText: "Monday"
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

##### TotalProgressView
When you want to put a static number to show the progress only then you can pass the number in this property which will help you to show the circular bar based on the value you pass

#### CallBack

```swift
completion: { (value) in
    print(value) // Getting slider value 
}
```

## License
MI-Circular Slider is [MIT-licensed](/LICENSE).

