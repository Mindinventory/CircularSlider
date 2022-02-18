# CircularSlider SwiftUI

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

The Radar Kit allowing you to locate places, trip neary by you Or it will help you to search out the people around you with the few lines of code..!!!

![gif](/Screenshots/RadarView.gif)

To run the example project, clone the repo, and run `pod install` from the Example directory.
<br />
## Requirements
- iOS 13.0+
- Xcode 12.5+

## Installation
To install it, simply add the following line to your Podfile:

```ruby
pod 'CircularSlider', git: 'https://github.com/PiyushSelarka/CircularSlider.git', branch: 'main'
```
## Usage

1. Change the class of a view from UIView to CustomRadarView
```swift
@IBOutlet private weak var radarView: CustomRadarView!
```
2. Programmatically:

```swift
let radarView = CustomRadarView(frame: myFrame)

```

## Customization 

```swift
    private func configureRadarView() {
        
        radarView.delegate = self
        radarView.dataSource = self
        radarView.diskRadius = 0.0
        radarView.dotColor = .ringStroke.filterNil
        radarView.circleOnColor = .ringOnColor.filterNil
        radarView.circleOffColor = .ringStroke.filterNil
        radarView.numberOfCircles = 4
        radarView.isRotateRingAnimation = true
        radarView.paddingBetweenCircle = 36
        radarView.paddingBetweenItems = 20
    }
```

##### diskRadius
The radius of the central disk in the view, if you would like to hide it, you can set the radius to 0

##### diskColor
The color of the central disk in the view, the default color is ripplePink color

##### minimumCircleRadius
This property make distance between the first circle and the central disk  

##### numberOfCircles
The number of circles to draw around the disk, the default value is 3

##### paddingBetweenCircle
The padding between circles, circles could be drawn outside the frame 

##### circleOffColor
The color of the off status of the circle, used for animation

##### circleOnColor
The color of the on status of the circle, used for animation

##### animationDuration
The duration of the animation, the default value is 0.9
<br />
You can start/ stop the animation at any time by calling `startAnimation()` & `stopAnimation()`

#### isRotateRingAnimation
Allows circle to rotate, used for animation

#### dotColor
The color of the two dots which place at two end of circle,

##### paddingBetweenItems
The padding between items, the default value is 10

## Add items 
If you would like to add one item, use the method `add(item:using:)`
If you would like to add multiple items, it's recommended to use the method `add(items:using:)` for more detail and information please refer `Example` project

#### remove an item 
For removal of an item, use the method `remove(item:)`

#### Customise an item 
If you would like to customize items, use the protocol `RadarViewDataSource` and implement: 

```swift
radarView?.dataSource = self 
...
func radarView(radarView: RadarView, viewFor item: Item, preferredSize: CGSize) -> UIView {
        let myCustomItemView = UIView(frame: CGRect(x: 0, y: 0, width: preferredSize.width, height: preferredSize.height))
        return myCustomItemView
}
```

#### CallBack
Action on items can be detected using the protocol `RadarViewDelegate` and implement: 
```swift
radarView?.delegate = self 
...
 func radarView(radarView: RadarView, didSelect item: Item) {
        print(item.uniqueKey)
}
```

## License
MI-RadarKit is [MIT-licensed](/LICENSE).

