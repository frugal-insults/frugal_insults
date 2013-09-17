class Word < ActiveRecord::Base
  validates :word, presence: true, uniqueness: true
  validates :score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validates :word_category_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :user_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  

  belongs_to :user
  belongs_to :word_category

  def self.find_user_words_by_category(user, word_category)
    self.where(user_id: user.id, word_category_id: word_category.id)
  end

  def category_label
    self.word_category.category
  end
end
