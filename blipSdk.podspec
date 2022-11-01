
Pod::Spec.new do |spec|
  spec.name         = 'blipSdk'
  spec.version      = '0.0.1'
  spec.authors      = { 
    'Hugo Leoanrdo' => 'hugo@fourtime.com',
  }
  spec.license      = { 
    :type => 'MIT',
    :file => 'LICENSE' 
  }
  spec.homepage     = 'https://github.com/hugolrf/blip-sdk'
  spec.source       = { 
    :git => 'https://github.com/hugolrf/blip-sdk.git', 
    :branch => 'master',
    :tag => spec.version.to_s 
  }
  spec.summary      = 'Blip Sdk'
  spec.source_files = '**/*.swift', '*.swift'
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = '15.0'
  spec.vendored_frameworks = 'libs/*.xcframework'
 


end
