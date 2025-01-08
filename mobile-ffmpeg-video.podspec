Pod::Spec.new do |s|
  s.name             = 'mobile-ffmpeg-video'
  s.version          = '4.4.LTS'
  s.summary          = 'Local mobile ffmpeg video framework'
  s.description      = 'Local version of mobile-ffmpeg-video framework'
  s.homepage         = 'https://github.com/beedeez/react-native-ffmpeg'
  s.license          = { :type => 'LGPL-3.0' }
  s.author           = { 'Taner Sener' => 'tanersener@gmail.com' }
  s.platform         = :ios, '9.3'
  s.source           = { :git => './' }
  s.ios.vendored_frameworks = 'frameworks/*.framework'
  s.static_framework = true
end