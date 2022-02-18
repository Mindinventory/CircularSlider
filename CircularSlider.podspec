Pod::Spec.new do |s|
  s.name             = 'CircularSlider'
  s.version          = '1.0.0'
  s.summary          = 'Create a Complex App UI With Circular Slider'

  s.swift_version = "5.0"

  s.description      = <<-DESC
	In this Vide i’m going to show how to create a Complex App UI With Circular Slider - Complex Smooth Curves And Shapes - Using SwiftUI

                       DESC

  s.homepage         = 'https://github.com/PiyushSelarka'
  s.license          = { :type => 'MIT', :file => 'https://github.com/PiyushSelarka/CircularSlider/blob/main/LICENSE' }
  s.author           = { 'Piyush' => 'piyushselarka.mi@gmail.com' }
  s.source           = { :git => 'https://github.com/PiyushSelarka/CircularSlider.git', :tag => '1.0.0' }

  s.ios.deployment_target = '15.0'
  s.source_files = 'CircularSlider/*.{h,swift}'

end