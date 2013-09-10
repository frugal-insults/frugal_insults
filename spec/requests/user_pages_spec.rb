require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe "User pages -" do

  subject { page }

  pending 'home when not logged in'

  describe "Home" do
    let(:user) { FactoryGirl.create(:user) }
    let!(:mean_adjective_category) { FactoryGirl.create(:mean_adjective_word_category) } 
    let!(:crude_noun_category) { FactoryGirl.create(:crude_noun_word_category) } 
    let!(:random_noun_category) { FactoryGirl.create(:random_noun_word_category) } 
    
    before(:each) do 
      login_as(user, :scope => :user)
      visit(user_home_path)
    end

    after(:each) do
      Warden.test_reset!
    end
  
    it { should have_content('Home') }
    it { should have_content('Generate Insults') }
    it { should have_content('Add Words') }
    it { should have_content('Previously Added Words') }
    
    it { should have_button('Add Mean Adjective') }
    it { should have_button('Add Crude Noun') }
    it { should have_button('Add Random Noun') }

    it { should have_selector('div#added-mean-adjectives-container', text: 'Mean Adjectives') }
    it { should have_selector('div#added-crude-nouns-container', text: 'Crude Nouns') }
    it { should have_selector('div#added-random-nouns-container', text: 'Random Nouns') }
  end
end
