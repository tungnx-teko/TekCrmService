#
# Be sure to run `pod lib lint Tekit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'TekCrmService'
    s.version          = '0.1.5'
    s.summary          = 'Crm service'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC
  
    s.homepage         = 'https://github.com/tungnx-teko/TekCrmServiceDistribution.git'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'tungnx-teko' => 'tung.nx@teko.vn' }
    s.source           = { :git => 'https://github.com/tungnx-teko/TekCrmServiceDistribution.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
    s.ios.deployment_target = '10.0'
  
    # s.source_files = 'Tekit/Classes/**/*'
    
    # s.resource_bundles = {
    #   'Tekit' => ['Tekit/Assets/*.png']
    # }
  
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
  
    s.vendored_frameworks = 'TekCrmService.framework'
  
    s.public_header_files = 'TekCrmService.framework/Headers/*.h'
    s.source_files = 'TekCrmService.framework/Headers/*.{h, m, swift}'
  
    s.dependency 'TekCoreNetwork', '~> 0.1.2'
    s.dependency 'TekCoreService', '~> 0.1.6'
    s.dependency 'TekServiceInterfaces', '~> 0.1.5'
  end