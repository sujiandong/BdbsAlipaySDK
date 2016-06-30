

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

  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/BdbsAlipaySDK', 
    'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/BdbsAlipaySDK', 
  }

  s.subspec "Core" do |core|
    core.public_header_files = "AlipaySDK.framework/Headers/**/*.h"
    core.vendored_frameworks = "AlipaySDK.framework"
    core.resources = "AlipaySDK.bundle"
  end

  s.subspec "Util" do |util|
    util.public_header_files = "Utils/Util/*.h", "Utils/openssl/*.h"
    util.header_mappings_dir = "Utils"
    util.source_files = "Utils/Util/*.{h,m}", "Utils/openssl/*.h"
    util.vendored_libraries = "Utils/libcrypto.a", "Utils/libssl.a"
    util.dependency "BdbsAlipaySDK/Core"
  end


end
