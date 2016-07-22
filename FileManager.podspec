
Pod::Spec.new do |s|

  s.name         = "FileManager"
  s.version      = "0.0.1"
  s.summary      = "A too that can operate file in the documents with FileManager."

  s.homepage     = "http://github.com/st827894963/FileManager"
  s.author  = "yuntian"
  s.license      = "MIT"
  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/st827894963/FileManager.git", :tag => "#{s.version}" }
  s.source_files = "FileManagerSample/FileManager"

end
