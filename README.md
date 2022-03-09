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
Minimum Value of the slider or you can say start value for the slider. It will set in CGFlote.init

##### maximumValue
Maximum value for the slider which is set in CGFlote.init

##### totalValue
TotalValue will help to meauser progress of the cirle while moving which should be equal to maximum value 

##### knobRadius
The Radius of the know that how large you want to show

##### radius
Size or area of Progress view which can be define by radius

##### outercircleColor
The color of back circle set in Color.init

##### innercircleColor
The color of inner side circle set in RadialGradient.init

##### lineColor
The color of line in inner circle set in Color.init

##### lineWidth
The width of line in inner circle set in CGFlote.init

##### tickColor
The color of tick in 360 degree circle set in Color.init

##### tickhighlightedColor
The color of tick highlighted in 360 degree circle set in Color.init

##### sliderColor
The color of slider set in LinearGradient.init

##### startPointCircleColor
The slider start circle color set in RadialGradient.init

##### pointCircleColor
The slider drag circle color set in RadialGradient.init

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
## 📱 Check out other lists of our Mobile UI libraries

<a href="https://github.com/Mindinventory?language=kotlin"> 
<img src="https://img.shields.io/badge/Kotlin-0095D5?&style=for-the-badge&logo=kotlin&logoColor=white"> </a>

<a href="https://github.com/Mindinventory?language=swift"> 
<img src="https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white"> </a>

<a href="https://github.com/Mindinventory?language=dart"> 
<img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"> </a>


<a href="https://github.com/Mindinventory/react-native-tabbar-interaction"> 
<img src="https://img.shields.io/badge/React_Native-20232A?style=for-the-badge&logo=react&logoColor=61DAFB"> </a>

## 💻 Check out other lists of Web libraries

<a href="hhttps://github.com/Mindinventory?language=javascript"> 
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"></a>

<a href="https://github.com/Mindinventory?language=go"> 
<img src="https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white"></a>

<a href="https://github.com/Mindinventory?language=python"> 
<img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"></a>

<br></br>

<h4><a href="https://www.mindinventory.com/whitepapers.php?utm_source=gthb&utm_medium=special&utm_campaign=folding-cell#demo"><u> 📝 Get FREE Industry WhitePapers →</u></a></h4>

## Check out our Work
<a href="https://dribbble.com/mindinventory"> 
<img src="https://img.shields.io/badge/Dribbble-EA4C89?style=for-the-badge&logo=dribbble&logoColor=white" /> </a>

## License
MI-Circular Slider is [MIT-licensed](/LICENSE).

# Let us know!
We’d be really happy if you send us links to your projects where you use our component. Just send an email to sales@mindinventory.com And do let us know if you have any questions or suggestion regarding our work.

<a href="https://www.mindinventory.com/contact-us.php?utm_source=gthb&utm_medium=repo&utm_campaign=lassi">
<img src="https://github.com/Sammindinventory/MindInventory/blob/main/hirebutton.png" width="203" height="43"  alt="app development">
</a>
