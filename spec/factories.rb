FactoryGirl.define do
  factory :user do
    email "rude_user@example.com"
    password "rudeuserpassword"
    password_confirmation "rudeuserpassword"
    confirmed_at Time.now
  end

  factory :word do
    word "test_word"
    score 1000
    word_category_id 1
    user_id 1
  end
end
