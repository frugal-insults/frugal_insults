require 'spec_helper'

describe Word do
  let(:word) { FactoryGirl.create(:word) }
  let(:word2) { FactoryGirl.create(:redundant_word) }
  subject { word }

  it { should respond_to(:word) }
  it { should validate_uniqueness_of(:word) }

  it { should respond_to(:score) }

  it { should respond_to(:word_category_id) }

  it { should respond_to(:user_id) }

  describe "With an empty word" do
    before { word.word = "" }
    it { should_not be_valid }
  end

  describe "with no score" do
    before { word.score = nil }
    it { should_not be_valid }
  end

  describe "with a non-integer score" do
    before { word.score = 1.1 }
    it { should_not be_valid }
  end

  describe "with no word_category_id" do
    before { word.word_category_id = nil }
    it { should_not be_valid }
  end

  describe "with no user_id" do
    before { word.user_id = nil }
    it { should_not be_valid }
  end

  describe "with a negative user_id" do
    before { word.user_id = -1 }
    it { should_not be_valid }
  end

  describe "selecting a random word" do
    it { should == Word.random }
  end

  pending "Test the random word generator, this might have to go in a separate test module"
end
