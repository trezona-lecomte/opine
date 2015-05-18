FactoryGirl.define do
  factory :comment do
    user
    text Faker::Lorem.sentences(2)
    # conversation
  end
end
