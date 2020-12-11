# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# generate sample from 1-16 (or directly as hexadecimal)
# add to string
# repeat 8 times, 
# add - 
# ...

require "securerandom"

def concat_hex_digits(hex_str, num_of_digits)
  hex_str << SecureRandom.hex(num_of_digits)
end

def uuid_maker
  hex_str = ""
  concat_hex_digits(hex_str, 4)
  hex_str << "-"
  concat_hex_digits(hex_str, 2)
  hex_str << "-"
  concat_hex_digits(hex_str, 2)
  hex_str << "-"
  concat_hex_digits(hex_str, 2)
  hex_str << "-"
  concat_hex_digits(hex_str, 6)
end

p uuid_maker