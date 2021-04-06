Pod::Spec.new do |s|
  s.name     = 'WebPImageSerialization'
  s.version  = '0.2.1'
  s.license  = 'MIT'
  s.summary  = 'Encodes and decodes between UIImage and WebP image data.'
  s.homepage = 'https://github.com/mattt/WebPImageSerialization'
  s.social_media_url = 'https://twitter.com/mattt'
  s.authors  = { 'Mattt' => 'mattt@me.com' }
  s.source   = { git: 'https://github.com/mattt/WebPImageSerialization.git', tag: s.version }
  s.source_files = 'WebPImageSerialization', 'WebP.framework'
  s.preserve_paths = 'WebPImageSerialization', 'WebP.framework'
  s.vendored_frameworks = 'WebP.framework'
  s.requires_arc = true

  s.ios.frameworks = 'CoreGraphics'
  s.ios.deployment_target = '5.0'
end
