Pod::Spec.new do |s|
    s.name             = 'TestPod'
    s.version          = '1.0.0'
    s.summary          = 'Test Pod'
    s.homepage         = 'http://example.com'
    s.license          = { :type => 'MIT' }
    s.author           = { 'You' => 'you@example.com' }
    s.platform         = :ios, '12.0'

    s.vendored_frameworks = [
        'prebuilt/bundle-apple-framework-ios-lts/ffmpegkit.framework'
    ]
    s.preserve_paths = [
        'prebuilt/bundle-apple-framework-ios-lts/ffmpegkit.framework'
    ]

    s.source = { :git => "file:///Users/ronythakkar/Desktop/ffmpeg/ffmpeg-kit", :branch => "main" }
end