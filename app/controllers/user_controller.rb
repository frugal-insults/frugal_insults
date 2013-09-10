class UserController < ApplicationController
  before_filter :authenticate_user!

  def home
    @word = Word.new
    @mean_adjective_category = WordCategory.find_by_category('Mean Adjective')
    @crude_noun_category = WordCategory.find_by_category('Crude Noun')
    @random_noun_category = WordCategory.find_by_category('Random Noun')
  end
end
