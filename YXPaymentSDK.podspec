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
                   DESC

  s.homepage     = "https://github.com/Narsiss/YXPaymentSDK"

  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "solo" => "donkeycanfly@msn.com" }

  s.platform     = :ios, "6.0"

  s.ios.deployment_target = "6.0"

  s.source       = { :git => "https://github.com/Narsiss/YXPaymentSDK", :tag => "#{s.version}" }

  s.source_files  = "YXPaymentSDK/include/**/*.{h,m}"

  s.resource = ["include/**/*.bundle"]
  
  s.preserve_paths = '*.a'

  s.public_header_files = "YXPaymentSDK/include/**/*.{h}"

  s.framework  = "Security"


end
