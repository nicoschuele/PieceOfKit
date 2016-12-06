Pod::Spec.new do |s|
  s.name         = "PieceOfKit"
  s.version      = "1.0.0"
  s.summary      = "A collection of useful extensions and helper methods for iOS Swift 3.x developers"
  s.description  = <<-DESC
  PieceOfKit is a Cocoa Touch framework written in Swift 3 for iOS 9 and over. It contains useful extensions to basic types and some helpers methods. Initially inspired by projects like EZSwiftExtensions and ExSwift, I added things I use often under one roof. You can find a list of what it does at https://nicoschuele.github.io/PieceOfKit/
                   DESC
  s.homepage     = "https://github.com/nicoschuele/PieceOfKit"
  s.license      = "Apache License, Version 2.0"
  s.author       = "Nico Schuele"
  s.social_media_url   = "https://twitter.com/NicoSchuele"
  s.platform     = :ios, '9.0'
  s.source       = { :git => "https://github.com/nicoschuele/PieceOfKit.git", :tag => "#{s.version}" }
  s.source_files  = "PieceOfKit/**/*.{swift}"
  s.framework  = "UIKit"
  s.requires_arc = true
end
