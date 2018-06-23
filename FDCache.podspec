#
# Be sure to run `pod lib lint FDCache.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FDCache'
  s.version          = '0.1.0'
  s.summary          = 'A simle cache manager which bases on the file system.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A simle cache manager class reference to the SDImageCache in SDWebImage.

Basing on the file system, my class reads and writes into cache data through the key corresponding to the file.

The problems lay in inconvenient extension, lacking of metadata, unavailiableness of the elimination algorithm, slowness to statistics.

keey it simple and tiny.
                       DESC

  s.homepage         = 'https://github.com/toolazytoname/FDCache'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'toolazytoname' => 'lazywc@gmail.com' }
  s.source           = { :git => 'https://github.com/toolazytoname/FDCache.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'FDCache/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FDCache' => ['FDCache/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
