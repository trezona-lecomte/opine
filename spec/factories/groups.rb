FactoryGirl.define do
  factory :group do
    
    factory :group_with_conversations do
      transient do
        conversations_count 5
      end

      after(:create) do |group, evaluator|
        create_list(:conversation, evaluator.conversations_count, group: group)
      end
    end
  end

end
