# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

source 'https://github.com/CocoaPods/Specs.git' # for using pods from cocoaPods
source "https://github.com/teko-vn/Specs-ios.git"   # for using pods from Teko

# bitcode enable
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      
      # delete CODE_SIGNING_ALLOWED && CODE_SIGNING_REQUIRED
      config.build_settings.delete('CODE_SIGNING_ALLOWED')
      config.build_settings.delete('CODE_SIGNING_REQUIRED')
      
      # set valid architecture
      config.build_settings['VALID_ARCHS'] = 'arm64 armv7 armv7s x86_64'
      
      # build active architecture only (Debug build all)
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
      
      config.build_settings['ENABLE_BITCODE'] = 'YES'
      
      if config.name == 'Release' || config.name == 'Pro'
        config.build_settings['BITCODE_GENERATION_MODE'] = 'bitcode'
        else # Debug
        config.build_settings['BITCODE_GENERATION_MODE'] = 'marker'
      end
      
      cflags = config.build_settings['OTHER_CFLAGS'] || ['$(inherited)']
      
      if config.name == 'Release' || config.name == 'Pro'
        cflags << '-fembed-bitcode'
        else # Debug
        cflags << '-fembed-bitcode-marker'
      end
      
      config.build_settings['OTHER_CFLAGS'] = cflags
    end
  end
end

target 'TekCrmService' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for TekLocationService
  pod 'TekCoreNetwork', '~> 0.1.22'
  pod 'TekCoreService', '~> 0.1.16'
  pod 'TekServiceInterfaces'
end
