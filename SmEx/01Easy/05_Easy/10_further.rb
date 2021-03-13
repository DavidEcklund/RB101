=begin
Write a method that will take a short line of text, and print it within a box.


print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.

INPUT = string
OUTPUT = printed input string within box as shown above

RULES
assume screen fit

DATA
string
array

ALGORTIHM
  -find length of string
  -create method for end lines
    -+, -*length + 2, +
  -create between_line method
    -print |, " "*length + 2, |
  -print | " " string " " |
  -between
  -end_line


WORD WRAP
  -split string into array
  -result array init
  -loop
    -init empty string
    
    -insert the amount of words + spaces into string that fit within SCREEN_SIZE
    -add that new string into results array
    -break if word_array is empty
  -return array
=end

SCREEN_SIZE = 65 # Adjust to fit your screen

def print_end_line(length)
  puts "+" + ("-" * (length + 2)) + "+"
end

def print_between_line(string, length)
  puts "|" + (" " * (length + 2)) + "|"
end

def print_string_line(string)
  puts "| " + string + " |"
end

def prep_lines_for_screen(string, line_length)
  string.empty? ? word_array = [''] : word_array = string.split
  result = []
  loop do
    line = ""
    loop do
      line << word_array.shift 
      line << " " unless line.size == line_length
      break if word_array.empty? || line.size + word_array[0].size > line_length
    end
    result << line.ljust(line_length)
    break if word_array.empty?
  end
  result 
end

def print_in_box(string)
  string.size < (SCREEN_SIZE-4) ? length = string.size : length = (SCREEN_SIZE-4)
  array = prep_lines_for_screen(string, length)
  
  print_end_line(length)
  print_between_line(string, length)
  
  array.each { |line| print_string_line(line) }
  
  print_between_line(string, length)
  print_end_line(length) 
end

print_in_box('')
print_in_box('To boldly go where no one has gone before.')
print_in_box('Tech Talks are a bi-weekly webinar series for the greater Launch School community created to facilitate the sharing and demonstration of interesting tech topics. Presentation topics may vary widely, and are not required to be related to Launch School\'s curriculum. This casual meetup-style webinar is a chance to learn from others and share your own experiences. See previous and upcoming talks here. You can even submit your own idea for a talk!')




