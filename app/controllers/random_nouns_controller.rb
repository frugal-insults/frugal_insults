class RandomNounsController < ApplicationController
  def new
    @random_noun = RandomNoun.new
  end

  def create
    @random_noun = RandomNoun.create!(random_noun_params)
    respond_to do |format|
      format.html { redirect_to new_random_noun_path }
      format.js
    end
  end

  def destroy
    @random_noun = RandomNoun.find(params[:id])
    @random_noun.destroy

    respond_to do |format|
      format.html { redirect_to new_random_noun_path }
      format.js
    end
  end

  def index
  end

  private
    def random_noun_params
      params[:random_noun].permit(:word)
    end
end
