def caesar_cipher(text, shift)
    encrypted_text = ""
  
    text.each_char do |char|
      if char.match(/[a-zA-Z]/)
        base = char.match(/[a-z]/) ? 'a' : 'A'
        encrypted_char = (base.ord + (char.ord - base.ord + shift) % 26).chr
        encrypted_text << encrypted_char
      else
        encrypted_text << char
      end
    end
  
    encrypted_text
end
  
text = "What a string"
shift = 5
encrypted_text = caesar_cipher(text, shift)

puts "Original text: #{text}"
puts "Encrypted text: #{encrypted_text}"