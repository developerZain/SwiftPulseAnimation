#
# Be sure to run `pod lib lint SwiftPulseAnimation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftPulseAnimation'
  s.version          = '0.1.1'
  s.summary          = 'SwiftPulseAnimation is CALayer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'SwiftPulseAnimation is simple to use and light weight on memory.'
                       DESC

  s.homepage         = 'https://github.com/developerZain/SwiftPulseAnimation'
  s.screenshots     = 'https://firebasestorage.googleapis.com/v0/b/task-hunt.appspot.com/o/IMG_2980.PNG?alt=media&token=44d37c08-d7d6-4f2c-9820-d71c21a96b98.jpeg'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'developerZain' => 'zainpk121@icloud.com' }
  s.source           = { :git => 'https://github.com/developerZain/SwiftPulseAnimation.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.developerzain.com'

  s.ios.deployment_target = '12.1 '

  s.source_files = 'Source/**/*.swift'
  s.swift_version = '5.0'
  s.platforms = {
      "ios": "12.1"
  }
  
  # s.resource_bundles = {
  #   'SwiftPulseAnimation' => ['SwiftPulseAnimation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
