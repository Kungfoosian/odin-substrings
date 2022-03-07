def substrings (string, dictionary)
    words_array = string.split(' ')
    # METHOD 1
    # result = Hash.new(0)

    # dictionary.each { |dictionary_word|
        
    #     words_array.each{ |word|
    #         if word.downcase.include?(dictionary_word)
    #             result[dictionary_word] += 1
    #         end
    #     }

    # }
    # result

    # METHOD 2
    dictionary.reduce(Hash.new(0)) { |accumulated_hash, dictionary_word|
        words_array.each{ |word| 
            accumulated_hash[dictionary_word] += 1 if word.downcase.include?(dictionary_word)
        }

        accumulated_hash
    }

    
end










dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, 
#      "part" => 1, "partner" => 1, "sit" => 1 }
  