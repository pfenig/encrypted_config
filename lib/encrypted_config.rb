require 'json'
require 'iron_worker'

module EncryptedConfig
  def self.decrypt(encrypted)
    decipher = OpenSSL::Cipher::AES.new(128, :CBC)
    decipher.decrypt
    decipher.key = File.read(File.expand_path('config.key'))
    decipher.iv = File.read(File.expand_path('config.iv'))

    decipher.update(encrypted) + decipher.final
  end
end
