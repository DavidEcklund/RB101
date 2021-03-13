lower = ("a".."z").to_a
upper = ("A".."Z").to_a
ALPHA = lower.zip(upper).to_h

def word_cap(str)
  str.split.map do |word|
    word.chars.map.with_index do |char,index|
      if index == 0
        !(char =~ /[a-z]/) ? char : ALPHA[char]
      elsif ALPHA.values.include?(char)
        ALPHA.key(char)
      else
        char
      end
    end.join('')
  end.join(' ')
end



p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'