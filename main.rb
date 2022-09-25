# Create a caesar cipher method that returns a string and shifts the string
# by a set number and returns the new string
# method takes two parameters(a string, and a number)


def caesar_cipher(string, shift)
  shifted_word = []
  p ord_array = string.chars.map(&:ord)
  ord_array.each do |num|
    if num > 122
      p 122 - 97 #unreadable code
    elsif num >= 97 && num <= 122
      p shifted_word << (num + shift)
    end
  end
  shifted_word.join
end

p caesar_cipher("zzz", 5)
p 122 - 97 # = 25

