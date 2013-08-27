class Word < ActiveRecord::Base
  validates :word, presence: true
  validates :score, presence: true
  validates :word_category_id, presence: true
  validates :user_id, presence: true
  

  belongs_to :user
  belongs_to :word_category
end
