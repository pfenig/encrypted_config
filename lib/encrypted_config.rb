require 'json'
require 'iron_worker'

module EncryptedConfig
  def self.decrypt(encrypted, keys_path=nil)
    decipher = OpenSSL::Cipher::AES256.new(:CBC)
    decipher.decrypt
    decipher.key = File.read(
      (keys_path && File.join(keys_path, 'config.key')) || File.expand_path('config.key')
    )
    decipher.iv = File.read(
      (keys_path && File.join(keys_path, 'config.iv')) || File.expand_path('config.iv')
    )

    decipher.update(encrypted) + decipher.final
  end
end
