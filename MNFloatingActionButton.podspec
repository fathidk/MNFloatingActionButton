Pod::Spec.new do |s|
  s.name             = "MNFloatingActionButton"
  s.summary          = "A F.A.B for iOS. Such fabulous."
  s.version          = '2.0.0'
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
  s.resource_bundle = {
    'MNFloatingActionButton' => ['MNFloatingActionButton/Assets/*.png']
  }

end
