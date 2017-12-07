#
#  Be sure to run `pod spec lint YXPaymentSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "YXPaymentSDK"

  s.version      = "0.0.1"

  s.summary      = "银信支付SDK"

  s.description  = <<-DESC
                        银信支付SDK, 官方支持地址
                   DESC

  s.homepage     = "https://github.com/Narsiss/YXPaymentSDK"

  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "solo" => "donkeycanfly@msn.com" }

  s.platform     = :ios, "6.0"

  s.ios.deployment_target = "6.0"

  s.source       = { :git => "https://github.com/Narsiss/YXPaymentSDK.git", :tag => "#{s.version}" }

  s.source_files  = "YXPayment/include/**/*.{h,m}"

  s.resource = ["YXPayment/include/**/*.bundle"]

  s.preserve_paths = 'YXPayment/*.a'
  
  s.vendored_libraries = 'YXPayment/*.a'

  s.public_header_files = "YXPayment/include/**/*.{h}"

  s.framework  = "Security"


end
