class CrudeNounsController < ApplicationController
  def new
    @crude_noun = CrudeNoun.new
  end

  def create
    @crude_noun = CrudeNoun.create!(crude_noun_params)
    respond_to do |format|
      format.html { redirect_to new_crude_noun_path }
      format.js
    end
  end

  def destroy
    @crude_noun = CrudeNoun.find(params[:id])
    @crude_noun.destroy

    respond_to do |format|
      format.html { redirect_to new_crude_noun_path }
      format.js
    end
  end

  def index
  end

  private
    def crude_noun_params
      params[:crude_noun].permit(:word)
    end
end
