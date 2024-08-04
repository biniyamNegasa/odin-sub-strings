def sub_strings(string, dictionary)
  string_arr = string.split("")
  map = {}
  dictionary.each do |element|
    val = find(element.downcase, string_arr)
    if val > 0
      map[element] = val 
    end
  end
  map
  
end

def find(word, list)
  word_arr = word.downcase.split("")
  m = word_arr.length
  n = list.length

  count = 0
  for i in 0...n
    l = 0 
    j = i
    while j < n && l < m && list[j] == word[l]
      j += 1
      l += 1
    end
    if l == m
      count += 1
    end
  end
  count

end






dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts sub_strings("below", dictionary)
puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)