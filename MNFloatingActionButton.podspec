#
# Be sure to run `pod lib lint MNFloatingActionButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MNFloatingActionButton"
  s.summary          = "A F.A.B for iOS. Such fabulous."
  s.version          = '0.1.5'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  "A customisable FAB (Floating Action Button)"
                       DESC

  s.homepage         = 'https://github.com/mattnydam/MNFloatingActionButton'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Matt Nydam' => 'matt@matthewnydam.com' }
  s.source           = { :git => 'https://github.com/mattnydam/MNFloatingActionButton.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mattnydam'

  s.ios.deployment_target = '7.0'

  s.source_files = 'MNFloatingActionButton/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MNFloatingActionButton' => ['MNFloatingActionButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
