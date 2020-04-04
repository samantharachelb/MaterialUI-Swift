Pod::Spec.new do |spec|
  spec.name         = "MaterialUISwift"
  spec.version      = "0.0.1-Alpha"
  spec.summary      = "Material UI Components for iOS Apps"
  
  spec.description  = <<-DESC
  Material UI Components for iOS Applications written entirely in Swift.
                   DESC

  spec.homepage     = "http://github.com/samantharachelb/MaterialUI-Swift"
  spec.license      = "MIT"
  spec.author             = { "Samantha Emily-Rachel Belnavis" => "samanthabelnavis@gmail.com" }

  spec.platform = :ios, "13.0"

  spec.source       = { :git => "http://github.com/samantharachelb/MaterialUI-Swift.git", :tag => "#{spec.version}" }

  spec.subspec 'Core' do |subspec|
    subspec.ios.deployment_target = "13.0"
    subspec.ios.source_files = 'Sources/**/*.swift'
    subspec.require_arc = true
    subspec.resource_bundles = {
      'ca.samantharachelb.ios.MaterialUI.icons' => ['Sources/**/*.xcassets']
      'ca.samantharachelb.ios.MaterialUI.fonts' => ['Sources/**/*.ttf']
    }

end
