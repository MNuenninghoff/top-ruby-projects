def caesar_cipher(string, shift)
  letters = string.bytes
  shifted = letters.map do |character|
    if (character >= 97 && character <= 122) || (character >= 65 && character <= 90)
      character += shift
      character -= 26 if (character > 90 && character <= 90 + shift) || (character > 122 && character <= 122 + shift)
    end
    character.chr
  end
  shifted.join
end

puts 'Enter a string:'
userInput = gets.chomp
puts 'Enter a shift'
shift = gets.chomp.to_i

p caesar_cipher(userInput, shift)
