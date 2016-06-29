

Pod::Spec.new do |s|


  s.name         = "BdbsAlipaySDK"
  s.version      = "0.0.1"
  s.summary      = "BdbsAlipaySDK AlipaySDK for Cocoapods."
  s.homepage     = "https://b.alipay.com/newIndex.htm"
  s.license      = "MIT"
  s.authors = {
    "AliPay" => "https://www.alipay.com/"
  }
  
  s.platform     = :ios, "7.0"
  s.requires_arc = true
  s.source = {
    :git => "https://github.com/sujiandong/BdbsAlipaySDK.git",
    :tag => "#{s.version}"
  }

  s.frameworks = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation'
  s.libraries = 'z', 'c++'

  s.vendored_frameworks = "AlipaySDK.framework"
  s.public_header_files = "AlipaySDK.framework/Headers/**/*.h"

  s.source_files = "AlipaySDK.framework/Headers/**/*.h"
  s.vendored_libraries = "Utils/libcrypto.a", "Utils/libssl.a"

  s.resources = "AlipaySDK.bundle"

  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/BdbsAlipaySDK"',
    'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/BdbsAlipaySDK"', 
  }

  s.subspec "Util" do |util|
    util.public_header_files = "Utils/Util/*.h"
    util.source_files =  "Utils/Util/*.{h,m}"
    util.public_header_files = "Utils/openssl/*.h" 
    util.source_files =  "Utils/openssl/*.h"
  end

end
