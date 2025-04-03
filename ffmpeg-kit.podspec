Pod::Spec.new do |s|
  s.name             = 'ffmpeg-kit'
  s.version          = '1.0.0'
  s.summary          = 'Local FFmpegKit XCFramework'
  s.description      = 'Local XCFramework built from FFmpegKit for iOS.'
  s.homepage         = 'http://example.com'
  s.license          = 'MIT'
  s.author           = { 'You' => 'you@example.com' }
  s.platform         = :ios, '12.1'

  # Specify the XCFramework bundle
  s.vendored_frameworks = [
  'prebuilt/bundle-apple-framework-iphoneos-lts/*.xcframework',
  'prebuilt/bundle-apple-xcframework-ios-lts/*.xcframework',
  'prebuilt/bundle-apple-framework-iphonesimulator-lts/*.xcframework'
]


  # Optionally specify public headers if needed:
  # s.public_header_files = 'Path/To/Headers/*.h'

  # Specify a source – you might use a git URL even if the source is local.
  s.source = { :git => "file:///Users/ronythakkar/Desktop/ffmpeg/ffmpeg-kit", :branch => "main" }
end
