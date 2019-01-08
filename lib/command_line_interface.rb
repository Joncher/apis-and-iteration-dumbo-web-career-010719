
def welcome
 puts "Welcome stranger from a far far away galaxy"
end

def get_character_from_user
 puts 'please enter a character name'
 character_name = gets.chomp
 return character_name.downcase
 # use gets to capture the user’s input. This method should return that input, downcased.
end
