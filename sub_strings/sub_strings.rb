def substrings(phrase, dictionary)
    words = phrase.split.map { |word| word.downcase}
    valid_words = dictionary.filter do |entry|
        phrase.downcase.include?(entry)
    end
    valid_words_hash = valid_words.to_h do |entry, number|
        number = words.count do |word|
            word.include?(entry)
        end
        [entry, number]
    end
    p valid_words_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)