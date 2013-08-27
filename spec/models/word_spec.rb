require 'spec_helper'

describe Word do
  let(:word) { FactoryGirl.create(:word) }
  subject { word }

  it { should respond_to(word) }
  it { should respond_to(score) }
  it { should respond_to(word_category_id) }
  it { should respond_to(user_id) }


end
