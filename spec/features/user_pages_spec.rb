require 'spec_helper'

describe 'User pages' do
  subject { page }

  describe 'signup page' do
    before { visit new_user_registration_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign Up')) }

    describe "signing up" do
      pending 'should send a confirmation email' 
    end
  end

  describe 'sign in' do
    before { visit new_user_session_path }

    it { should have_content('Sign in') }
    it { should have_title(full_title('Sign In')) }

    describe "with invalid information" do
      before { click_button 'Sign in' }

      it { should have_title(full_title('Sign In')) }
      it { should have_selector('p.alert', text: 'Invalid email or password.') }
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email", with: user.email
        fill_in "Password", with: user.password
        click_button "Sign in"
      end
      
      it { should have_title(full_title('Home')) }
      it { should have_content('Generate Insult') }
      it { should have_content('Add Words') }
    end
  end
end
