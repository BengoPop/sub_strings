def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |dict_word, result|
    result[dict_word] += 1 if dict_word.include?(string) || string.include?(dict_word)
  end
end
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings('below', dictionary)
