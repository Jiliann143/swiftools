#
#  Be sure to run `pod spec lint Swiftools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "Swiftools"
  spec.version      = "1.0.4"
  spec.summary      = "A small library with swift tools."

  spec.description  = <<-DESC
  This is just a small library with swift tools.
                   DESC

  spec.homepage     = "https://appcoda.com"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author    = "YuliaN"
  spec.platform  = :ios, "11.0"
  spec.source = { :git => "https://github.com/Jiliann143/swiftools.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/**/*.swift"
  spec.swift_version = "5.0"
end
