Pod::Spec.new do |s|
    s.name         = 'CommonCrypto'
    s.version      = '38.0.2.2'
    s.summary      = 'libxml wrapper'
    s.homepage     = 'https://github.com/pilot34/zkSforce'
    s.license      = 'MIT'
    s.author       = { "gtarasov" => "gleb34@gmail.com" }
    s.source       = { git: 'https://github.com/pilot34/zkSforce.git', tag: "v38.0.2.2" }
    s.platform     = :ios, '8.0'

    s.libraries = 'xml2'
    s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/CommonCrypto' }
    s.module_map = 'CommonCrypto.modulemap'
    s.source_files = 'dummy-source.m'
end