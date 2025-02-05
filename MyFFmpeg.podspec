#
# Be sure to run `pod lib lint MyFFmpeg.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
    s.name             = 'MyFFmpeg'
    s.version          = '0.1.0'
    s.summary          = 'MyFFmpeg is a Swift wrapper for FFmpeg that enables easy video and audio processing within iOS'

    s.description      = <<-DESC
    "MyFFmpeg is a Swift wrapper for FFmpeg that enables easy video and audio processing within iOS applications. It simplifies the integration of FFmpeg functionalities, such as video conversion, audio extraction, and more."
    DESC

    s.homepage         = 'https://github.com/pethanihiten/MyFFmpeg.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'pethanihiten@gmail.com' => 'pethanihiten@gmail.com' }
    s.source           = { :git => 'https://github.com/pethanihiten/MyFFmpeg.git', :tag => s.version.to_s }

    s.ios.deployment_target = '12.4'

    s.vendored_frameworks = 'Frameworks/*.framework'

    # Add necessary frameworks for FFmpeg dependencies
    s.frameworks = 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'VideoToolbox'

    # Add necessary libraries for FFmpeg
    s.libraries = 'bz2', 'c++', 'z'

    # Optional: If you want to inherit settings like link flags, you can add this
    s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -ld_classic -l"bz2" -l"c++" -l"z" -framework "AVFoundation" -framework "AudioToolbox" -framework "CoreMedia" -framework "VideoToolbox"' }

#    s.pod_target_xcconfig = {
#      'LIBRARY_SEARCH_PATHS' => '$(inherited) "${TOOLCHAIN_DIR}/usr/lib/swift/${PLATFORM_NAME}" /usr/lib/swift $(SDKROOT)/usr/lib/swift /opt/homebrew/lib'
#    }

    # s.resource_bundles = {
    #   'MyFFmpeg' => ['MyFFmpeg/Assets/*.png']
    # }

    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
