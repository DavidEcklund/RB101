# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# Algorithm
# arr each. word.each_char.delete_if %w(aeiou).include? ch


def remove_vowels(str_arr)
  str_arr.map! do |word|
    a = ""
    word.each_char do |l|
      a << l unless %w(a e i o u A E I O U).include?(l)
    end
    word = a
  end
  str_arr
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']