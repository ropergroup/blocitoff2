FactoryGirl.define do
  factory :item do
    name Faker::Hipster.word
    user
  end
end
