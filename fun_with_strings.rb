module FunWithStrings
  def palindrome?()
    self.gsub(/\W+/, '').downcase == self.gsub(/\W+/, '').reverse.downcase
  end
  def count_words()
    wordstore = {}
    self.downcase.gsub(/\W+/, ' ').split.each {|string| wordstore.store(string, wordstore[string].to_i + 1)}
    wordstore
  end
  def anagram_groups
    self.downcase.split.group_by {|string| string.chars.sort}.values
  end
end


# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end