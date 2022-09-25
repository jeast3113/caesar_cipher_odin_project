# Create a caesar cipher method that returns a string and shifts the string
# by a set number and returns the new string
# method takes two parameters(a string, and a number)


def caesar_cipher(string, shift)
  shifted_word = []
  ord_array = string.chars.map(&:ord)
  ord_array.each do |num|
    shifted_word << (num + shift).chr
  end
  shifted_word.join
end

p caesar_cipher("test", 5)