#
# Be sure to run `pod lib lint StoreKitUserInfo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'StoreKitUserInfo'
  s.version          = '1.0.0'
  s.summary          = 'Save user info to StoreKit transactions'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Simply store any data you like to your StoreKit transactions
                       DESC

  s.homepage         = 'https://github.com/olejnjak/StoreKitUserInfo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'olejnjak' => 'olejnjak@gmail.com' }
  s.source           = { :git => 'https://github.com/olejnjak/StoreKitUserInfo.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/olejnjak'

  s.ios.deployment_target = '8.3'

  s.source_files = 'StoreKitUserInfo/Classes/**/*'

  # s.resource_bundles = {
  #   'StoreKitUserInfo' => ['StoreKitUserInfo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
