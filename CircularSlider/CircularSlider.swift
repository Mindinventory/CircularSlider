//
//  CircularSlider.swift
//  CircularSlider
//
//  Created by mac-00017 on 18/02/22.
//

import SwiftUI

public struct Config {
    let minimumValue: CGFloat
    let maximumValue: CGFloat
    let totalValue: CGFloat
    let knobRadius: CGFloat
    let radius: CGFloat
    let outercircleColor : Color
    let innercircleColor : RadialGradient
    let lineColor : Color
    let lineWidth : CGFloat
    let tickColor : Color
    let tickhighlightedColor : Color
    let sliderColor : LinearGradient
    let startPointCircleColor : RadialGradient
    let pointCircleColor : RadialGradient
    let titleText : String
    let totalProgressView : CGFloat

    public init(minimumValue:CGFloat,maximumValue:CGFloat,totalValue: CGFloat,knobRadius: CGFloat,radius: CGFloat,TotalProgressView : CGFloat,outercircleColor : Color,innercircleColor : RadialGradient,lineColor : Color,lineWidth : CGFloat,tickColor : Color,tickhighlightedColor : Color,sliderColor : LinearGradient,startPointCircleColor : RadialGradient,pointCircleColor : RadialGradient,titleText : String) {
        
        self.minimumValue = minimumValue
        self.maximumValue = maximumValue
        self.totalValue = totalValue
        self.knobRadius = knobRadius
        self.radius = radius
        self.outercircleColor = outercircleColor
        self.innercircleColor = innercircleColor
        self.lineColor = lineColor
        self.lineWidth = lineWidth
        self.tickColor = tickColor
        self.tickhighlightedColor = tickhighlightedColor
        self.sliderColor = sliderColor
        self.startPointCircleColor = startPointCircleColor
        self.pointCircleColor = pointCircleColor
        self.titleText = titleText
        self.totalProgressView = TotalProgressView

    }
}

public struct CircularSlider: View {
    
    @State var tempValue: CGFloat = 0.0
    @State var angleValue: CGFloat = 0.0
    public let config : Config
    public let completion: ((CGFloat) -> Void)
    
    public init(config: Config, completion: @escaping ((CGFloat) -> Void)) {
        self.config = config
        tempValue = self.config.totalProgressView
        self.completion = completion
    }

    public var body: some View {
        ZStack {
            Circle()
                .fill(config.outercircleColor)
                .frame(width: (config.radius * 1.75) , height: (config.radius * 1.75))

            Circle()
                .fill(config.innercircleColor)
                .frame(width: config.radius * 1.3, height: config.radius * 1.3)
                .padding(-(config.radius / 20))
                .overlay(
                    Circle().stroke(config.lineColor, lineWidth: config.lineWidth)
                )
            
            ForEach(0..<20) { tick in
                self.tick(at: tick)
                    .frame(width: (config.radius * 2.15), height: (config.radius * 2.15))
            }

            Circle()
                .trim(from: 0.0, to: tempValue/config.totalValue)
                .stroke(config.sliderColor, lineWidth: 8)
                .frame(width: config.radius * 2, height: config.radius * 2)
                .rotationEffect(.degrees(-90))

            Circle()
                .fill(config.startPointCircleColor)
                .frame(width: config.knobRadius * 2, height: config.knobRadius * 2)
                .padding(10)
                .offset(y: -config.radius)

            Circle()
                .fill(config.pointCircleColor)
                .frame(width: config.knobRadius * 2, height: config.knobRadius * 2)
                .padding(10)
                .offset(y: -config.radius)
                .rotationEffect(Angle.degrees(Double(angleValue)))
                .shadow(color: .blue, radius: 10)
                .gesture(DragGesture(minimumDistance: 0.0)
                    .onChanged({ value in
                        change(location: value.location)
                       
                    })
                )

            VStack {
                Text("\(config.titleText)")
                    .font(.system(size: (config.radius / 7)))
                                .italic()

                Text("\(String.init(format: "%.0f", tempValue))%")
                                .font(.system(size: (config.radius / 3)))
                                .italic()
            }
        }
    }
    func tick(at tick: Int) -> some View {
        VStack {
            Rectangle()
                .fill(tick % 5 == 0 ? config.tickhighlightedColor : config.tickColor)
                .opacity(tick % 5 == 0 ? 1 : 0.5)
                .frame(width: 2, height: 10)
            Spacer()
        }.rotationEffect(Angle.degrees(Double(tick)/(20) * 360))

    }

    private func change(location: CGPoint) {
        // creating vector from location point
        let vector = CGVector(dx: location.x, dy: location.y)

        // geting angle in radian need to subtract the knob radius and padding from the dy and dx
        let angle = atan2(vector.dy - (config.knobRadius + 10), vector.dx - (config.knobRadius + 10)) + .pi/2.0

        // convert angle range from (-pi to pi) to (0 to 2pi)
        let fixedAngle = angle < 0.0 ? angle + 2.0 * .pi : angle
        // convert angle value to temp value
        let value = fixedAngle / (2.0 * .pi) * config.totalValue

        if value >= config.minimumValue && value <= config.maximumValue {

            withAnimation(.linear(duration: 0.15)) {
                tempValue = value
                angleValue = fixedAngle * 180 / .pi // converting to degree
            }
            completion(tempValue.rounded())
        }
    }
}
