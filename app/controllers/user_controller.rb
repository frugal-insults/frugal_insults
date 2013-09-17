class UserController < ApplicationController
  before_filter :authenticate_user!

  def home
    @word = Word.new

    @mean_adjective_category = WordCategory.find_by_category('Mean Adjective')
    @crude_noun_category = WordCategory.find_by_category('Crude Noun')
    @random_noun_category = WordCategory.find_by_category('Random Noun')
   
    @mean_adjectives = Word.find_user_words_by_category(current_user, @mean_adjective_category) 
    @crude_nouns = Word.find_user_words_by_category(current_user, @crude_noun_category)
    @random_nouns = Word.find_user_words_by_category(current_user, @random_noun_category) 
  end
end
