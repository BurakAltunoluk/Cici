Pod::Spec.new do |s|
  s.name        = "SwiftyJSON"
  s.version     = "1.2.0"
  s.homepage    = "https://github.com/BurakAltunoluk/CiciV.2.git"
  s.license     = { :type => "MIT" }


  s.requires_arc = true
  s.swift_version = "5.0"
  s.osx.deployment_target = "10.9"
  s.ios.deployment_target = "9.0"
  s.watchos.deployment_target = "3.0"
  s.tvos.deployment_target = "9.0"
  s.source   = { :git => "https://github.com/BurakAltunoluk/CiciV.2.git", :tag => s.version }
  s.source_files = "Source/Cici/*.swift"
end
