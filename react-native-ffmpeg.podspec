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

    s.source            = { :git => 'https://github.com/beedeez/react-native-ffmpeg.git', :tag => 'v2.0.0'}

    s.default_subspec   = 'video'

    s.dependency        'React'

    s.subspec 'video' do |ss|
        ss.source_files = 'ios/RNFFmpegModule.m',
                         'ios/RNFFmpegModule.h',
                         'ios/RNExecuteDelegate.h',
                         'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-video', '4.4.LTS'
        ss.ios.deployment_target = '11.0'
    end

    s.subspec 'video-lts' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-video', '4.4.LTS'
        ss.ios.deployment_target = '9.3'
    end

    s.pod_target_xcconfig = {
        'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/../node_modules/react-native-ffmpeg/frameworks'
    }

end
