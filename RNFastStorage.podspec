
Pod::Spec.new do |s|
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), "package.json")))
  s.name         = "RNFastStorage"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = ""
  s.license      = "MIT"
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/volga-volga/react-native-fast-image.git", :tag => "master" }
  s.source_files  = "ios/RNFastStorage/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "MMKV"

end
