FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    password Faker::Internet.password

    factory :user_with_comments do
      transient do
        comments_count 5
      end

      after(:create) do |user, evaluator|
        create_list(:comment, evaluator.comments_count, user: user)
      end
    end
  end

end
