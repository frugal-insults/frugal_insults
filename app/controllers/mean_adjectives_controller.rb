class MeanAdjectivesController < ApplicationController
  def new
    @mean_adjective = MeanAdjective.new
  end

  def create
    @mean_adjective = MeanAdjective.create!(mean_adjective_params)
    respond_to do |format|
      format.html { redirect_to new_mean_adjective_path }
      format.js
    end
  end

  def destroy
    @mean_adjective = MeanAdjective.find(params[:id])
    @mean_adjective.destroy

    respond_to do |format|
      format.html { redirect_to new_mean_adjective_path }
      format.js
    end
  end

  def index
  end

  private
    def mean_adjective_params
      params[:mean_adjective].permit(:word)
    end
end
