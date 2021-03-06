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

  factory :reduntant_word do
    word "test_word"
    score 1000
    word_category_id 1
    user_id 1
  end

  factory :mean_adjective_word_category, class: WordCategory do
    category "Mean Adjective"
  end

  factory :crude_noun_word_category, class: WordCategory do
    category "Crude Noun"
  end

  factory :random_noun_word_category, class: WordCategory do
    category "Random Noun"
  end
end
