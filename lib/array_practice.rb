#Write your code here

def sentence_to_array(string)
    string.strip.scan(/\w+/)
end

def clean_up_elements(array)
    c = array.compact!
    a = c.to_s.strip
    bob = a.scan(/\w+/)
    bobby = Array.new(bob).compact
    bobby
    # a = bob.scan(/\w+/)
    # b = a.compact!
end 

def array_to_sentence(array)
 array.join(" ")
end 

def capitalize_all_elements(array)
    array.map(&:capitalize)
end 

def substitute_strings (array, pattern, replacement)
    #cholo = array.to_s
    #select { |i| i == pattern }
    # pat = cholo.compact!
    # check = pat.to_s #strip
    # yolo = pattern.to_s
    array.map {|string| string.gsub(pattern, replacement)}
    # yo = array.to_s.gsub(pattern, replacement)
    #yo = b.scan(/[\w']+/)  
end

def title_format(array)
    capitalize_exceptions = ['a', 'an', 'the', 'for', 'and', 'nor', 'but', 'or', 'yet', 'so', 'at', 'around', 'by', 'after', 'along', 'for', 'from', 'of', 'on', 'in', 'to', 'with', 'without']

    array.map {|string|
      string_array = sentence_to_array(string)
      capitalized_array = capitalize_all_elements(string_array)
      capitalized_array.map.with_index {|str, i|
        if capitalize_exceptions.include?(str.downcase) && i != 0
          str.downcase
        else
          str
        end
      }.join(' ')
    }
end
    