class WordsController < ApplicationController
  def create
    @word = Word.new(word_params)
    #if Word.where(word: @word.word).to_a.empty?
      @word.user_id = current_user.id
      @word.score = 1000
    
      if @word.save
        flash[:success] = "#{@word.word} successfully added to the #{@word.word_category.category} list."
      else
        flash[:error] = "There was an error saving your word"
      end
    #end
    redirect_to user_home_path
  end

  def admin
    @mean_adjectives = MeanAdjective.all
    @crude_nouns = CrudeNoun.all
    @random_nouns = RandomNoun.all

    @mean_adjective = MeanAdjective.new
    @crude_noun = CrudeNoun.new
    @random_noun = RandomNoun.new
  end

  private

  def word_params
    params[:word].permit(:word, :word_category_id, :user_id)
  end
end
