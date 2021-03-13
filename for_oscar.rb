=begin
You have some unformatted text that you want to separate into lines so that you can print them to the screen individually. Write a method that takes a string of text of any length and an integer from 20-100 and ouputs an array of strings of that length. Keep words intact and add spaces to the end of each line as needed so that they are all of the same length.


=end




p prep_lines_for_screen('', 20) == ['                    ']

p prep_lines_for_screen('To boldly go where no one has gone before.', 43) == ["To boldly go where no one has gone before. "]

p prep_lines_for_screen('Tech Talks are a bi-weekly webinar series for the greater Launch School community created to facilitate the sharing and demonstration of interesting tech topics. Presentation topics may vary widely, and are not required to be related to Launch School\'s curriculum. This casual meetup-style webinar is a chance to learn from others and share your own experiences. See previous and upcoming talks here. You can even submit your own idea for a talk!', 61) == ["Tech Talks are a bi-weekly webinar series for the greater    ", "Launch School community created to facilitate the sharing and", "demonstration of interesting tech topics. Presentation topics", "may vary widely, and are not required to be related to Launch", "School's curriculum. This casual meetup-style webinar is a   ", "chance to learn from others and share your own experiences.  ", "See previous and upcoming talks here. You can even submit    ", "your own idea for a talk!                                    "]





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
