platform :ios, '15.0'
use_frameworks!

target 'EnvironmentSeparateDemo' do
  pod 'Toast-Swift', '~> 5.0.1'
  
  target 'EnvironmentSeparateDemoTests' do
    inherit! :search_paths
  end

  target 'EnvironmentSeparateDemoUITests' do
  end

end

post_install do |installer|
  installer.generated_projects.each do |project|
    project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
      end
    end
  end
end
