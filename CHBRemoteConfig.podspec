#
# Be sure to run `pod lib lint CHBRemoteConfig.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CHBRemoteConfig'
  s.version          = '0.1.0'
  s.summary          = 'Description of CHBRemoteConfig'
  s.homepage         = 'https://github.com/BastienPenalba/CHBRemoteConfig'
  s.license          = { :type => 'MIT', :text => 'MIT LICENSE' }
  s.author           = { 'Bastien Penalba' => 'bastien@tinylab.io' }
  s.source           = { :git => 'git@github.com:BastienPenalba/CHBRemoteConfig.git', :tag => s.version.to_s }
  s.module_name      = 'CHBRemoteConfig'

  s.swift_version= '4.2'
  s.ios.deployment_target = '9.0'
  s.static_framework = true
  s.source_files = 'Lib/CHBRemoteConfig/Classes/**/*'

  s.dependency 'Alamofire'

  # Uncomment this line if the pod needs ressources such as string or images
  #s.resources = 'Lib/CHBRemoteConfig/Assets/**/*'


end
