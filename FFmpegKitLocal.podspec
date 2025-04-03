Pod::Spec.new do |s|
  s.name             = 'FFmpegKitLocal'
  s.version          = '1.0.0'
  s.summary          = 'Local FFmpegKit frameworks'
  s.description      = 'Local frameworks built from ffmpeg-kit for iOS.'
  s.homepage         = 'http://example.com'
  s.license          = 'MIT'
  s.author           = { 'You' => 'you@example.com' }
  s.platform         = :ios, '12.1'

  # Use the local path as source so CocoaPods doesn’t try to fetch from remote
  s.source = { :path => File.expand_path('.') }

  # Vendored frameworks – adjust the path relative to the podspec file.
  s.vendored_frameworks = 'prebuilt/bundle-apple-framework-ios-lts/*.framework'

  # Optionally, if you want to use your xcframework bundles instead:
  # s.vendored_frameworks = 'prebuilt/bundle-apple-xcframework-ios-lts/*.xcframework'

  # If needed, you can also add a preserve_paths attribute to make sure these files aren’t removed:
  # s.preserve_paths = 'prebuilt/bundle-apple-framework-ios-lts/*.framework'
end
