Pod::Spec.new do |s|
  s.name     = 'WebPImageSerialization'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'Decodes UIImage sequences from WebP images.'
  s.homepage = 'https://github.com/mattt/WebPImageSerialization'
  s.social_media_url = 'https://twitter.com/mattt'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/mattt/WebPImageSerialization.git', :head }
  s.source_files = 'WebPImageSerialization', 'WebP.framework'
  s.preserve_paths = 'WebPImageSerialization', 'WebP.framework'
  s.vendored_frameworks = 'WebP.framework'
  s.requires_arc = true

  s.ios.frameworks = "CoreGraphics"
  s.ios.deployment_target = '5.0'
end
