class Word < ActiveRecord::Base
  belongs_to :user
  belongs_to :word_category
end
