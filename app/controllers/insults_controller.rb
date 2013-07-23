class InsultsController < ApplicationController
  def generate
    @mean_adjective = MeanAdjective::random
    @crude_noun = CrudeNoun::random
    @random_noun = RandomNoun::random

    respond_to do |format|
      format.html
      format.js
    end
  end

  def upvote
  end

  def downvote
  end
end
