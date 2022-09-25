# Create a caesar cipher method that returns a string and shifts the string
# by a set number and returns the new string
# method takes two parameters(a string, and a number)


def caesar_cipher(string, shift)
  base_upper_A = "A".ord
  base_lower_a = "a".ord
  alpha_base = 26 # number of letters in alphabet - will use as a modulo base

  # base_upper_A
  # base_lower_a

  num = "Z".ord # example for math algorithm - number should be '66'
  shift = 5
  # num

  # test math algorithm for getting number for chr
  p ((num - base_upper_A + shift) % alpha_base + base_upper_A).chr

  shifted_word = []
  ord_array = string.chars.map(&:ord)
  ord_array.each do |num|
    #shifted_number = num + shift # update this and separate it from 'A' and 'a'
    if num == 32 # keep this for spacing in strings
      shifted_word << " "
    elsif num >= 65 && num <= 90
      shifter_upper_A = (num - base_upper_A + shift) % alpha_base + base_upper_A
      shifted_word << shifter_upper_A
    else
      shifted_word << num.chr # keep this for other characters not being met from conditions
    end
  end
  shifted_word.join
end

p caesar_cipher("What a string!", 5)



