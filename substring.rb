# Okay so the basic premise is to create a function with two
#parameteres, a word and a list of possibly substrings.

# str = 'banana'
# arr = %w{b a n a n a}
# tester = 'bananananana    na na na'
# count = 0
# while tester.include?('na') do
#   count += 1
#   tester = tester.sub('na', '')
# end
# p count

# okay so possible game plan now
# 1. Create outline for substring function, it will take in two
#    parameters: the word and an array of possible substrings
# 2. We want to use reduce on the array with a default value of an
#    empty hash.
# 3. Within the block, we can do a simple check if the word has a sub 
#    string with #include?. If not, we can continue onto the next one
# 4. In the case that we have a match, we want to use a loop to get the
#    total number of times it appears(see code above). For each time we
#    hit a match, we want to add one to the hash key/value pair.
# 5. money?

def substrings(word, list)
  # downcase used so that casing can be ignored assuming dictionary is
  # all lowercase.
  starting_word = word.downcase
  list.reduce(Hash.new(0)) do |result, substring|
    word = starting_word
    while word.include?(substring)
      result[substring] += 1
      word = word.sub(substring, '')
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
