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
  s.vendored_frameworks = [
      'prebuilt/bundle-apple-framework-ios-lts/ffmpegkit.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavcodec.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavdevice.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavfilter.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavformat.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavutil.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libswresample.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libswscale.framework'
    ]
  s.preserve_paths = [
      'prebuilt/bundle-apple-framework-ios-lts/ffmpegkit.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavcodec.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavdevice.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavfilter.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavformat.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libavutil.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libswresample.framework',
      'prebuilt/bundle-apple-framework-ios-lts/libswscale.framework'
    ]


  # Local source for development.
  # When publishing, change to a remote git repository and tag.
  s.source = { :git => "file:///Users/ronythakkar/Desktop/ffmpeg/ffmpeg-kit", :branch => "main" }

  # Example if you had public header files.
  # s.public_header_files = 'Headers/*.h'
  # s.module_name = 'ffmpegkit'
end