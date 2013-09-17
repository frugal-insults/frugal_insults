class WordCategory < ActiveRecord::Base
  has_many :word

  def lowercase_hyphenated_label
    self.category.split(' ').join('-').downcase
  end
end
