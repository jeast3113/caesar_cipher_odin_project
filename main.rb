# Create a caesar cipher method that returns a string and shifts the string
# by a set number and returns the new string
# method takes two parameters(a string, and a number)


def caesar_cipher(string, shift)
  base_upper_A = "A".ord
  base_lower_a = "a".ord
  alpha_base = 26 # number of letters in alphabet

  p base_upper_A
  p base_lower_a

  shifted_word = []
  p ord_array = string.chars.map(&:ord)
  ord_array.each do |num|
    #shifted_number = num + shift # update this and separate it from 'A' and 'a'
    if num == 32 # keep this for spacing in strings
      shifted_word << " "
    else
      shifted_word << num.chr # keep this for other characters not being met from conditions
    end
  end
  shifted_word.join
end

p caesar_cipher("What a string!", 5)
# p 122 - 97 # = 25
# p "A".ord
# p "Z".ord
# p 90 - 65 + 1

