# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'
use_frameworks!

target 'EnvironmentSeparateDemo' do

  # Pods for EnvironmentSeparateDemo

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
#        config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
#        config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
      end
    end
  end
end
