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

    context "when submitting a valid mean adjective" do
      before do
        fill_in "word_for_word_category_id_#{mean_adjective_category.id}", with: "Test-Adjective"
        click_button "Add Mean Adjective"
      end
     
      it { should have_content('Test-Adjective successfully added to the mean adjective list') }
      it { should have_selector('li', text: 'Test-Adjective') }
      pending 'controller create action when not logged in (belongs in unit tests, not integration'

      context "when submitting a redundant adjective" do
        it { should have_content("'Test-Adjective' has already been submitted.") }
        pending "it should ensure that a second entry has not been added to the container"
      end
    end
  end

end
