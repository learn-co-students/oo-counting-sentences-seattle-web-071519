require 'pry'

class String

  def sentence?
  end_with?(".")
  end

  def question?
  end_with?("?")
  end

  def exclamation?
  end_with?("!")
  end

  def count_sentences
  sentences = self.split(/[.?!]/)
var = sentences.select do |x|
  x != ""
 end 
return var.count
  end
end

