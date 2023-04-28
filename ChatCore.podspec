Pod::Spec.new do |s|
  s.name         = "ChatCore"
  s.version      = "1.0.0"
  s.summary      = "ChatCore"
  s.description  = "ChatCore SDK consists of all prerequisite models and protocols for Chat SDK."
  s.homepage     = "https://pubgi.fanapsoft.ir/chat/ios/chat-core"
  s.license      = "MIT"
  s.author       = { "Hamed Hosseini" => "hamed8080@gmail.com" }
  s.platform     = :ios, "10.0"
  s.swift_versions = "4.0"
  s.source       = { :git => "https://pubgi.fanapsoft.ir/chat/ios/chat-core", :tag => s.version }
  s.source_files = "Sources/ChatCore/**/*.{h,swift,xcdatamodeld,m,momd}"
  s.frameworks  = "Foundation"
  s.dependency "Async" , '~> 1.3.1'
end
