require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name          = "blur-reactnative"
  s.version       = package["version"]
  s.source_files  = "ios/*.{h,m}"
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.license       = "MIT"
  s.summary       = "Component implementation for UIVisualEffectView's blur and vibrancy effect."

  s.dependency 'React'
end
