# Create a caesar cipher method that returns a string and shifts the string
# by a set number and returns the new string
# method takes two parameters(a string, and a number)


def caesar_cipher(string, shift)
  base_upper_A = "A".ord
  base_lower_a = "a".ord
  alpha_base = 26 # number of letters in alphabet - will use as a modulo base

  shifted_word = []
  ord_array = string.chars.map(&:ord)
  ord_array.each do |num|
    #shifted_number = num + shift # update this and separate it from 'A' and 'a'
    if num == 32 # keep this for spacing in strings
      shifted_word << " "
    elsif num >= "A".ord && num <= "Z".ord
      shifter_upper = (num - base_upper_A + shift) % alpha_base + base_upper_A
      shifted_word << shifter_upper.chr
    elsif num >= "a".ord && num <= "z".ord
      shifter_lower = (num - base_lower_a + shift) % alpha_base + base_lower_a
      shifted_word << shifter_lower.chr
    else
      shifted_word << num.chr # keep this for other characters not being met from conditions
    end
  end
  shifted_word.join
end

p caesar_cipher("Zebras are fast in water!", 9)



