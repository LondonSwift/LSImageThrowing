Pod::Spec.new do |s|
  s.name             = "LSImageThrowing"
  s.version          = "0.1.0"
  s.summary          = "Class extensions for UIImage which throw when an image isnt found"

  s.homepage         = "www.LondonSwift.com"
  s.license          = 'MIT'
  s.author           = { "LondonSwift" => "hello@londonswift.com" }
  s.source           = { :git => "git@github.com:LondonSwift/LSImageThrowing.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'LSImageThrowing' => ['Pod/Assets/*.png']
  }

end
