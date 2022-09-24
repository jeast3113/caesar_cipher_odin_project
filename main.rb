# Create a caesar cipher method that returns a string and shifts the string
# by a set number and returns the new string
# method takes two parameters(a string, and a number)


def caesar_cipher(string, shift)
  ord_array = string.chars.map(&:ord)
  ord_array.each do |num|
    p num
  end
end

p caesar_cipher("test", 5)