Pod::Spec.new do |spec|
  spec.name         = 'FluentTexture'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/thanhtrdang/FluentTexture'
  spec.authors      = { 'Thanh Dang' => 'thanhtrdang@gmail.com' }
  spec.summary      = 'Fluent layout API for Texture'
  spec.source       = { :git => 'https://github.com/thanhtrdang/FluentTexture.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'

  spec.source_files = 'Source/*.swift'
  spec.dependency 'Texture', '~> 2.3.2'

end