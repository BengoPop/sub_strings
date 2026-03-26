def convert_string_to_array(string)
  string.delete('!?.,').downcase.split(' ')
end

# instead of string do it for each string in an array
# for each string in input array do result[dict_word] += 1 if dict word include string or vice versa
def substrings(string, dictionary)
  input_array = convert_string_to_array(string)
  dictionary.each_with_object(Hash.new(0)) do |dict_word, result|
    input_array.each do |input_word|
      result[dict_word] += 1 if dict_word.include?(input_word.downcase) || input_word.downcase.include?(dict_word)
    end
  end
end
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
