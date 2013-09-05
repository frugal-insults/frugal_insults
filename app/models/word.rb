class Word < ActiveRecord::Base
  validates :word, presence: true, uniqueness: true
  validates :score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validates :word_category_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :user_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  

  belongs_to :user
  belongs_to :word_category
end
