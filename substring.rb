# Pseudo code - substring 
# 1 Receives a word and counts number of matching strings in existing array
# 2 Returns hash of item with count
# 3 able to take multiple words 

require "pry-byebug"

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] 

def find_substring (string,dictionary) 

  dictionary.inject(Hash.new(0)) do | result,substring |
    count = string.downcase.scan(substring).size

    result[substring] = count if count > 0 
    result # i have to return this value 
  end

end

string_to_eval = gets.chomp 

puts find_substring(string_to_eval,dictionary) 




