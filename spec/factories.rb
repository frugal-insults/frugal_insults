FactoryGirl.define do
  factory :user do
    name "Rude User"
    email "rude_user@example.com"
    password "rudeuserpassword"
    password_confirmation "rudeuserpassword"
  end
end
