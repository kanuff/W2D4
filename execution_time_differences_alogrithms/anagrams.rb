def anagram?(string1, string2)



end

def first_anagram?(string1,string2)
  string1 = string1.split("")
  anagrams = string1.permutation(string1.length).to_a
  anagrams = anagrams.map{ |sub| sub.join("")}
  anagrams.include?(string2)
end

def second_anagram?(string1,string2)

  string1.each_char do |char|
    idx = string2.index(char)
    if idx
      string2[idx] = ""
    else
      return false
    end
  end

  if string2.length == 0
    return true
  end
  false
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true



def third_anagram?(string1, string2)

  string1 = string1.split("").sort
  string2 = string2.split("").sort
  string1 == string2
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true


def fourth_anagram?(string1, string2)
  h1 = Hash.new(0)
  h2 = Hash.new(0)

  string1.each_char do |char|
    h1[char] +=1
  end

  string2.each_char do |char|
    h2[char] +=1
  end

  h1 == h2

end


def fifth_anagram?(string1, string2)
  return false if string1.length != string2.length
  h1 = Hash.new(0)

  string1.each_char do |char|
    h1[char] +=1
  end

  string2.each_char do |char|
    h1[char] -=1
  end

  h1.values.all? {|count| count == 0 }
end

p fifth_anagram?("gizmo", "sally")    #=> false
p fifth_anagram?("elvis", "lives")    #=> true