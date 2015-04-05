Pod::Spec.new do |s|

  s.name             = "MNMaterialButton"
  s.summary          = "A F.A.B for iOS"
  s.description      = "A customisable FAB (Floating Action Button)"
  s.homepage         = "http://matthewnydam.com/"
  s.license          = 'MIT' 
  s.author           = { "Matt Nydam" => "matt@matthewnydam.com" }

  s.version          = "0.1.4"
  s.source           = { :git => "https://github.com/mattnydam/MNMaterialButton.git", :tag => s.version.to_s }
  s.source_files     = "MNMaterialButton/*.{h,m}"
  s.ios.resource_bundle = { 'MNMaterialButton' => 'Resources/*.png' }
  
  s.platform     = :ios, '7.0'
  s.requires_arc = true


end