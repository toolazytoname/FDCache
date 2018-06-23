# FDCache

[![CI Status](https://img.shields.io/travis/toolazytoname/FDCache.svg?style=flat)](https://travis-ci.org/toolazytoname/FDCache)
[![Version](https://img.shields.io/cocoapods/v/FDCache.svg?style=flat)](https://cocoapods.org/pods/FDCache)
[![License](https://img.shields.io/cocoapods/l/FDCache.svg?style=flat)](https://cocoapods.org/pods/FDCache)
[![Platform](https://img.shields.io/cocoapods/p/FDCache.svg?style=flat)](https://cocoapods.org/pods/FDCache)

A simle cache manager class reference to the SDImageCache in SDWebImage.

Basing on the file system, my class reads and writes into cache data through the key corresponding to the file.

The problems lay in inconvenient extension, lacking of metadata, unavailiableness of the elimination algorithm, slowness to statistics.

keey it simple and tiny.


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

FDCache is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs.git'  # 官方库
source 'https://github.com/toolazytoname/Specs.git'#懒得起名私有库

platform :ios, '8.0'
target "TargetName" do
pod 'FDCache'
end
```

## Author

toolazytoname, lazywc@gmail.com

## License

FDCache is available under the MIT license. See the LICENSE file for more info.
