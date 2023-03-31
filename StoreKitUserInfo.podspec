Pod::Spec.new do |s|
  s.name             = 'StoreKitUserInfo'
  s.version          = '1.2.1'
  s.summary          = 'Save user info to StoreKit transactions'
  s.description      = <<-DESC
Simply store any data you like to your StoreKit transactions
                       DESC
  s.homepage         = 'https://github.com/olejnjak/StoreKitUserInfo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'olejnjak' => 'olejnjak@gmail.com' }
  s.source           = { :git => 'https://github.com/olejnjak/StoreKitUserInfo.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/olejnjak'
  s.ios.deployment_target = '11.0'
  s.source_files = 'StoreKitUserInfo/**/*.swift'
  s.swift_version = '5.0'
end
