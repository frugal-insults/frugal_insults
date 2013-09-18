class WordsController < ApplicationController
  def create
    @word = Word.new(word_params)
      @word.user_id = current_user.id
      @word.score = 1000
    
      if @word.save
        @message = flash[:success] = "#{@word.word} successfully added to the #{@word.word_category.category} list."
      else
        @message = flash[:error] = "There was an error saving your word"
      end

      if request.xhr?
        @word_category = @word.word_category
        @word_list = Word.find_user_words_by_category(current_user, @word_category)
      end

      respond_to do |format|
        format.html { redirect_to user_home_path }
        format.js
      end
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
