# Create a caesar cipher method that returns a string and shifts the string
# by a set number and returns the new string
# method takes two parameters(a string, and a number)


def caesar_cipher(string, shift)
  shifted_word = []
  p ord_array = string.chars.map(&:ord)
  ord_array.each do |num|
    shifted_number = num + shift
    if num == 32
      shifted_word << " "
    else
      shifted_word << num.chr
    end
  end
  p shifted_word.join
end

p caesar_cipher("What a string!", 5)
# p 122 - 97 # = 25
# p "A".ord
# p "Z".ord
# p 90 - 65 + 1

