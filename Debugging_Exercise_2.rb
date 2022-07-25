def encode(plaintext, key)
  #cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  #p  key.chars.uniq
  #p (('a'...'z').to_a ).join (problem was from this part)
  #exit
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
end 
  return ciphertext_chars.join
end
  
  def decode(ciphertext, key)
    #cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    #p key
    #p cipher.join
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    #p cipher.join
    plaintext_chars = ciphertext.chars.map do |char|
    #p ciphertext
    #p char
    #p cipher[65 - char.ord ] (problem was from this part)
    cipher[char.ord - 65]
    end
    plaintext_chars
    return plaintext_chars.join
  end
  
p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
p "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"

p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
p "theswiftfoxjumpedoverthelazydog"
  # Intended output:
  #
 #encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # =>  "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  #decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"