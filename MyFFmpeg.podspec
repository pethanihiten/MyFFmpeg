#
# Be sure to run `pod lib lint SoundWave.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'MyFFmpeg'
    s.version          = '0.1.5'
    s.swift_version    = '5'
    s.homepage         = 'https://github.com/pethanihiten/MyFFmpeg.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'pethanihiten@gmail.com' => 'pethanihiten@gmail.com' }
    s.source           = { :git => 'https://github.com/pethanihiten/MyFFmpeg.git', :tag => s.version.to_s }

    s.summary          = 'MyFFmpeg is a Swift wrapper for FFmpeg that enables easy video and audio processing within iOS'
    s.social_media_url = 'https://twitter.com/pethanihiten'

    s.description      = <<-DESC
    SoundWave is a customizable view representing sounds over time:
    - Add and display audio metering level values on the fly
    - Set array of pre-existing audio metering level and play / pause / resume
    - Customize background, gradient start and end colors, metering level bar properties, etc.
    DESC

    s.ios.deployment_target = '12.4'
    s.source_files = 'MyFFmpeg/*.swift', 'MyFFmpeg/Classes/**/*.swift'
    s.vendored_frameworks = 'Frameworks/*.framework'
    s.xcconfig = {
        'OTHER_LDFLAGS' => '-ObjC -framework AVFoundation -framework AudioToolbox -framework CoreMedia -framework VideoToolbox -lbz2 -lc++ -lz'
    }
    #  s.frameworks = 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'VideoToolbox'
    s.libraries = 'bz2', 'c++', 'z'
    s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }

# s.resource_bundles = {
#   'SoundWave' => ['SoundWave/Assets/*.png']
# }

# s.screenshots = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end
