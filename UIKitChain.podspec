#
# Be sure to run `pod lib lint UIKitChain.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIKitChain'
  s.version          = '1.0.0'
  s.summary          = 'Chain UIView Creation'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Using the UIKitChain framework, You can create a UIKit component in one line of code.'

  s.homepage         = 'https://github.com/MnkGitBox/UIKitChain'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'm.nadeeshan@yahoo.co.uk' => 'malith.mnk93@gmail.com' }
  s.source           = { :git => 'https://github.com/MnkGitBox/UIKitChain.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/malithnadeeshan'

  s.ios.deployment_target = '12.0'

  s.source_files = 'Sources/UIKitChain/**/*'
  
  # s.resource_bundles = {
  #   'CustomLayout' => ['UIKitChain/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.swift_version = '5.0'
end
