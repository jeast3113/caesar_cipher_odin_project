# Create a caesar cipher method that returns a string and shifts the string
# by a set number and returns the new string
# method takes two parameters(a string, and a number)


def caesar_cipher(string, shift)
  shifted_word = []
  p ord_array = string.chars.map(&:ord)
  ord_array.each do |num|
    shifted_number = num + shift
    if shifted_number > 90
      p shifted_word << (shifted_number - 26).chr
    elsif shifted_number > 122
      shifted_word << (shifted_number - 26).chr
    elsif num >= 97 && num <= 122
      shifted_word << (num + shift).chr
    end
  end
  shifted_word.join
end

p caesar_cipher("What a string!", 5)
# p 122 - 97 # = 25
# p "A".ord
# p "Z".ord
# p 90 - 65 + 1

