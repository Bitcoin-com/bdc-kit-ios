![Logo](github_logo.png)

# BDCKit iOS

[![Version](https://img.shields.io/badge/pod-v0.1.0-blue.svg)](https://github.com/Bitcoin-com/CocoaPods/tree/master/)
![Platform](https://img.shields.io/badge/platform-ios-black.svg) 
![Compatibility](https://img.shields.io/badge/iOS-+10.0-orange.svg) 
![Compatibility](https://img.shields.io/badge/Swift-4.0-orange.svg) 
![License](https://img.shields.io/badge/License-MIT-lightgrey.svg) 

## Installation

### CocoaPods

#### Podfile

```ruby
# Add our public Cocoapods repo
source 'https://github.com/Bitcoin-com/CocoaPods.git'
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'

target 'BDCTestApp' do
use_frameworks!

# Pods for BDCTestApp
pod 'BDCKit'
# or pod 'BDCKit', :git => 'https://github.com/bitcoin-com/bdc-kit-ios', :branch => 'master'

end
```
