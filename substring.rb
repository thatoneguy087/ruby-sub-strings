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

p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
