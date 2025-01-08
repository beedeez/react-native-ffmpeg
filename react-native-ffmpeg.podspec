Pod::Spec.new do |s|
    s.name              = 'react-native-ffmpeg'
    s.version           = '2.0.0'
    s.summary           = 'FFmpeg for React Native'
    s.description       = 'React Native FFmpeg based on mobile-ffmpeg'
    s.homepage          = 'https://github.com/beedeez/react-native-ffmpeg'

    s.author            = { 'Taner Sener' => 'tanersener@gmail.com' }
    s.license           = { :type => 'LGPL-3.0' }

    s.platform          = :ios
    s.requires_arc      = true
    s.static_framework  = true

    s.source            = { :git => 'https://github.com/beedeez/react-native-ffmpeg.git', :tag => 'v5.0.0'}

    s.default_subspec   = 'video'

    s.dependency        'React'

    s.subspec 'video' do |ss|
        ss.source_files = 'ios/RNFFmpegModule.m',
                         'ios/RNFFmpegModule.h',
                         'ios/RNExecuteDelegate.h',
                         'ios/RNExecuteDelegate.m'
        ss.vendored_frameworks = 'ios/Frameworks/*.framework'
        ss.ios.deployment_target = '11.0'
    end

    s.subspec 'video-lts' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
				ss.vendored_frameworks = 'ios/Frameworks/*.framework'
				ss.ios.deployment_target = '9.3'
    end

    s.frameworks = [
      'VideoToolbox',
      'AudioToolbox',
      'CoreMedia',
      'CoreAudio',
      'CoreAudioTypes'
    ]

    s.libraries = [
      'bz2',
      'c++',
      'z'
    ]

    s.pod_target_xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/ios/Frameworks',
      'OTHER_LDFLAGS' => '-lbz2 -lc++ -lz',
      'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
      'CLANG_CXX_LIBRARY' => 'libc++'
    }
end
