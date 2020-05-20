require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_count = self.delete(",").squeeze!
    puts sentence_count
    if sentence_count.delete(" ").split(/[". ", "! ", "? "]/).length > 4
      sentence_count.delete(" ").split(/[". ", "! ", "? "]/).length-1
    end
  end
end