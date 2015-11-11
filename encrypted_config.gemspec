Gem::Specification.new do |s|
  s.name        = 'encrypted_config'
  s.version     = '0.0.0'
  s.date        = '2015-11-10'
  s.summary     = "AES Encrypt config.json"
  s.description = "Encrypt script and decrypt of config.json"
  s.authors     = ["Steve Fenigstein"]
  s.email       = 'steven.fenigstein@gmail.com'
  s.files       = ["lib/encrypted_config.rb"]
  s.homepage    =
    'http://rubygems.org/gems/encrypted_config'
  s.license     = 'MIT'
  s.executables << 'encrypt_config'
end
