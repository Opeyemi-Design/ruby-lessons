def substrings(word, dictionary)
    word = word.downcase
    substr_count = Hash.new(0)
  
    dictionary.each do |substring|
      substring = substring.downcase
      count = word.scan(substring).length
      substr_count[substring] += count if count > 0
    end
  
    substr_count
end

# Example usage
dictionary = ["merry", "merry", "marriage", "merry", "marry", "marry", "manchester", "marvel", "marvellous", "limit", "examples", "carry", "derry", "ireland", "magician", "mantle", "thor", "superman", "spiderman", "batman", "computer", "franklin", "richards", "adenochrome", "master", "video", "project", "mantine", "information", "car", "chocolate", "food", "travel", "house", "water", "maths", "jerry", "bomb", "free", "biology", "error", "design", "plate", "cafe", "drive", "master", "matter", "orbit", "filter", "awesome", "games", "home"]
  
word = "merry marry"
result = substrings(word, dictionary)
puts result