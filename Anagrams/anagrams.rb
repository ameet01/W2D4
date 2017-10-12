def first_anagram?(string1, string2)
  (string1.chars.permutation.to_a).include?(string2.split(""))
end



def second_anagram?(string1, string2)
  string1.chars.each_with_index do |char1, i|
    string2.chars.each_with_index do |char2, j|
      if char1 == char2
        string1[i]=" "
        string2[j]=" "
      end
    end
  end
  string1.delete!(" ")
  string2.delete!(" ")
  string1.empty? && string2.empty?

end



def third_anagram?(string1, string2)
  sorted = false
  until sorted
    sorted = true
    (0...string1.length-1).each do |i|
      if string1[i]> string1[i+1]
        string1[i], string1[i+1] = string1[i+1], string1[i]
        sorted = false
      end
    end
  end

  sorted = false
  until sorted
    sorted = true
    (0...string2.length-1).each do |i|
      if string2[i]> string2[i+1]
        string2[i], string2[i+1] = string2[i+1], string2[i]
        sorted = false
      end
    end
  end

  string1 == string2
end




def fourth_anagram?(string1, string2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  (0...string1.length).each do |i|
    hash1[string1[i]] += 1
  end

  (0...string2.length).each do |i|
    hash2[string2[i]] += 1
  end

  hash1.each do |k,v|
    return false if hash2[k] != v
  end

  true
end



def fourth_anagram2?(string1, string2)
   hash = Hash.new(0)

  (0...string1.length).each do |i|
    hash[string1[i]] += 1
  end

  (0...string2.length).each do |i|
    hash[string2[i]] -= 1
  end

  return false if !hash.values.all?{|i|i==0}
  true
end

p first_anagram?("elvis", "lives")
p second_anagram?("elvis", "lives")
p third_anagram?('elvis', 'lives')
p fourth_anagram?('elvis', 'lives')
p  fourth_anagram2?('elvise', 'lieves')
