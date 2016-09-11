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
  s.description      = <<-DESC
  "A customisable FAB (Floating Action Button)"
                       DESC

  s.homepage         = 'https://github.com/mattnydam/MNFloatingActionButton'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Matt Nydam' => 'matt@matthewnydam.com' }
  s.source           = { :git => 'https://github.com/mattnydam/MNFloatingActionButton.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mattnydam'

  s.ios.deployment_target = '8.0'
  s.source_files = 'MNFloatingActionButton/Classes/**/*'
  #s.resources = 'MNFloatingActionButton/Assets/*'

  s.resource_bundle = {
    'MNFloatingActionButton' => ['MNFloatingActionButton/Assets/*.png']
  }

end
