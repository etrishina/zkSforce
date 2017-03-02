Pod::Spec.new do |s|
    s.name         = 'ZKSforce'
    s.version      = '38.0.2.2'
    s.summary      = 'A Cocoa library for calling the Salesforce.com SOAP APIs.'
    s.homepage     = 'https://github.com/superfell/zkSforce'
    s.license      = 'MIT'
    s.author       = { "Simon Fell" => "fellforce@gmail.com" }
    s.source       = { git: 'https://github.com/pilot34/zkSforce.git', tag: "v38.0.2.2" }
    s.platform     = :ios, '8.0'
    s.requires_arc = false

    s.source_files = 'zkSforce'
    s.public_header_files = 'zkSforce/*.h'
    s.dependency 'Libxml2Module'
    s.osx.frameworks = 'Security'
    s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
    s.libraries = 'xml2'
end