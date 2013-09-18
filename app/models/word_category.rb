class WordCategory < ActiveRecord::Base
  has_many :word

  def lowercase_hyphenated_label
    self.category.split(' ').join('-').downcase
  end

  def to_str
    lowercase_hyphenated_label
  end

  def to_s
    to_str
  end
end
