# Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

def enter_a(word)
  if word[0] =~ /['aeiou']/
    puts "Enter an #{word}:"
  else
    puts "Enter a #{word}:"
  end
  gets.chomp
end

noun = enter_a("noun")
verb = enter_a("verb")
adj = enter_a("adjective")
adv = enter_a("adverb")

puts "Do you "+ verb + " your " + adj + " " + noun + " " + adv + "?"

