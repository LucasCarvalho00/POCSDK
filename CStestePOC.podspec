Pod::Spec.new do |s|
  s.name             = 'CStestePOC'
  s.version          = '1.0.1'
  s.summary          = 'This is a plugin for integrate HX liviness sdk.'
  s.description      = <<-DESC
  This is a plugin for integrate HX.
                       DESC
  s.homepage         = 'http://www.hxteam.com.br'
  s.license          = "MIT"
  s.author           = { 'Lucas Carvalho' => 'lucas@lucas.com.br' }
  s.source           = { :git => 'https://github.com/LucasCarvalho00/POCSDK.git', :tag => '1.0.1' }
  
  s.platform = :ios, '11.0'
  s.preserve_paths =  'CAFSDK.xcframework'
  s.ios.vendored_frameworks = 'CAFSDK.xcframework'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64',  'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'  }
  s.xcconfig = {'ENABLE_BITCODE' => 'NO'}
  s.swift_version = '5.0'
end