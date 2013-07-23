class MeanAdjective < ActiveRecord::Base
  #attr_accessible :word, :score
  include ActiveModel::ForbiddenAttributesProtection

  validates_presence_of :word
  validates_presence_of :score
end
