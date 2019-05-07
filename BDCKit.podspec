#
#  Be sure to run `pod spec lint SLPWallet.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "BDCKit"
  s.version      = "0.1.0"
  s.summary      = "Bitcoin.com Kit for iOS"
  s.description  = "Bitcoin.com Kit for iOS"

  s.homepage     = "https://github.com/Bitcoin-com/bdc-kit-ios"
  
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "jbdtky" => "jb@bitcoin.com" }

  s.swift_version = "4.0"
  s.platform     = :ios, "10.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/Bitcoin-com/bdc-kit-ios.git", :tag => "v#{s.version}" }
  s.source_files  = "BDCKit/**/*.swift"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

end
