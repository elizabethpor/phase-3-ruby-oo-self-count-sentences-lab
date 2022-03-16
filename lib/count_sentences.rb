require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sentences = self.split(/[!.?]/)
    sentences_without_space = sentences.reject { |sentence| sentence.empty?}
    sentences_without_space.count
  end
end