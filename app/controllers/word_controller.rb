class WordController < ApplicationController
  def admin
    @mean_adjectives = MeanAdjective.all
    @crude_nouns = CrudeNoun.all
    @random_nouns = RandomNoun.all

    @mean_adjective = MeanAdjective.new
    @crude_noun = CrudeNoun.new
    @random_noun = RandomNoun.new
  end
end
