class RandomNoun < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  validates_presence_of :word
  validates_presence_of :score
end
