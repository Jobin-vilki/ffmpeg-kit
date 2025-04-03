Pod::Spec.new do |s|
  s.name             = 'FFmpegKitLocal'
  s.version          = '1.0.0'
  s.summary          = 'Local FFmpegKit frameworks'
  s.description      = 'Local frameworks built from ffmpeg-kit for iOS.'
  s.homepage         = 'http://example.com'
  s.license          = { :type => 'MIT' }
  s.author           = { 'You' => 'you@example.com' }
  s.platform         = :ios, '12.0'

  # Explicitly list the frameworks
  s.vendored_frameworks = 'prebuilt/bundle-apple-framework-ios-lts/*.framework'


  # Local source for development.
  # When publishing, change to a remote git repository and tag.
  s.source = { :git => "file:///Users/ronythakkar/Desktop/ffmpeg/ffmpeg-kit", :branch => "main"  , :tag => '1.0.0' }

  # Example if you had public header files.
  # s.public_header_files = 'Headers/*.h'
  # s.module_name = 'ffmpegkit'
end