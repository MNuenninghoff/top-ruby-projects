def substrings (word, dictionary)
  substrings = Hash.new(0)
  
  dictionary.each do |substring|
    temp_word = word.downcase
    while (temp_word.include?(substring))
      substrings[substring] += 1
      temp_word = temp_word.slice(temp_word.index(substring) + 1, temp_word.length)
    end
  end
  substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)