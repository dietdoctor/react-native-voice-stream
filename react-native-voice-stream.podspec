require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]
  s.source       = { :git => "https://github.com/dietdoctor/react-native-voice-stream.git", :tag => "#{s.version}" }

  s.platforms    = { :ios => "13.0" }
  s.source_files = "ios/**/*.{h,m,mm,swift}"

  s.dependency "React-Core"
  s.frameworks = "AVFoundation", "AudioToolbox"

end