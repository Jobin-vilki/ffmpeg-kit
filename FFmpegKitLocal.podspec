Pod::Spec.new do |s|
  s.name             = 'FFmpegKitLocal'
  s.version          = '1.0.0'
  s.summary          = 'Local FFmpegKit frameworks'
  s.description      = 'Local frameworks built from ffmpeg-kit for iOS.'
  s.homepage         = 'http://example.com'
  s.license          = 'MIT'
  s.author           = { 'You' => 'you@example.com' }
  s.platform         = :ios, '10.0'

  # This is important: you must specify the local path to your frameworks
  s.vendored_frameworks = 'prebuilt/bundle-apple-framework-ios-lts/*.framework'

  # If you have public headers or modules, define them here.
  s.public_header_files = 'Headers/*.h'
  s.module_name = 'ffmpegkit'

  # The source has to be a local path or a placeholder for a local Podspec
  #s.source = { :git => "https://github.com/Jobin-vilki/ffmpeg-kit.git", :tag => s.version.to_s }
end
