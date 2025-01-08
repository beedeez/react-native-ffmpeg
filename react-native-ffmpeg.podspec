Pod::Spec.new do |s|
    s.name              = 'react-native-ffmpeg'
    s.version           = '0.5.2'
    s.summary           = 'FFmpeg for React Native'
    s.description       = 'React Native FFmpeg based on mobile-ffmpeg'
    s.homepage          = 'https://github.com/tanersener/react-native-ffmpeg'

    s.author            = { 'Taner Sener' => 'tanersener@gmail.com' }
    s.license           = { :type => 'LGPL-3.0' }

    s.platform          = :ios
    s.requires_arc      = true
    s.static_framework  = true

    s.source            = { :git => 'https://github.com/beedeez/react-native-ffmpeg.git', :commit => 'latest_commit_hash' }

    s.default_subspec   = 'https'

    s.dependency        'React'

    s.subspec 'https' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                              'ios/RNFFmpegModule.h',
                              'ios/RNExecuteDelegate.h',
                              'ios/RNExecuteDelegate.m'
        ss.vendored_frameworks = 'mobile-ffmpeg-frameworks/https/mobile-ffmpeg-https.framework'
        ss.ios.deployment_target = '11.0'
        ss.frameworks = 'AudioToolbox', 'CoreMedia', 'VideoToolbox', 'AVFoundation'
        ss.libraries = 'c++', 'z'
    end

    s.subspec 'video' do |ss|
        ss.source_files = 'ios/RNFFmpegModule.m',
                         'ios/RNFFmpegModule.h',
                         'ios/RNExecuteDelegate.h',
                         'ios/RNExecuteDelegate.m'

        # Add all the frameworks from mobile-ffmpeg-video folder
        ss.vendored_frameworks = [
            'mobile-ffmpeg-video/expat.framework',
            'mobile-ffmpeg-video/fontconfig.framework',
            'mobile-ffmpeg-video/freetype.framework',
            'mobile-ffmpeg-video/fribidi.framework',
            'mobile-ffmpeg-video/giflib.framework',
            'mobile-ffmpeg-video/jpeg.framework',
            'mobile-ffmpeg-video/kvazaar.framework',
            'mobile-ffmpeg-video/libaom.framework',
            'mobile-ffmpeg-video/libass.framework',
            'mobile-ffmpeg-video/libavcodec.framework',
            'mobile-ffmpeg-video/libavdevice.framework',
            'mobile-ffmpeg-video/libavfilter.framework'
        ]

        ss.ios.deployment_target = '11.0'
        ss.frameworks = 'AudioToolbox', 'CoreMedia', 'VideoToolbox', 'AVFoundation'
        ss.libraries = 'c++', 'z'
    end

    s.subspec 'https-lts' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-https', '4.4.LTS'
        ss.ios.deployment_target = '9.3'
    end

    s.subspec 'https-gpl' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-https-gpl', '4.4'
        ss.ios.deployment_target = '11.0'
    end

    s.subspec 'https-gpl-lts' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-https-gpl', '4.4.LTS'
        ss.ios.deployment_target = '9.3'
    end

    s.subspec 'audio' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-audio', '4.4'
        ss.ios.deployment_target = '11.0'
    end

    s.subspec 'audio-lts' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-audio', '4.4.LTS'
        ss.ios.deployment_target = '9.3'
    end

    s.subspec 'video-lts' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-video', '4.4.LTS'
        ss.ios.deployment_target = '9.3'
    end

    s.subspec 'full' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-full', '4.4'
        ss.ios.deployment_target = '11.0'
    end

    s.subspec 'full-lts' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-full', '4.4.LTS'
        ss.ios.deployment_target = '9.3'
    end

    s.subspec 'full-gpl' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-full-gpl', '4.4'
        ss.ios.deployment_target = '11.0'
    end

    s.subspec 'full-gpl-lts' do |ss|
        ss.source_files      = 'ios/RNFFmpegModule.m',
                               'ios/RNFFmpegModule.h',
                               'ios/RNExecuteDelegate.h',
                               'ios/RNExecuteDelegate.m'
        ss.dependency 'mobile-ffmpeg-full-gpl', '4.4.LTS'
        ss.ios.deployment_target = '9.3'
    end

end
