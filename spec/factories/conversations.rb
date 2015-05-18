FactoryGirl.define do
  factory :conversation do
    group

    # factory :conversation_with_comments do
    #   transient do
    #     comments_count 5
    #   end

    #   after(:create) do |conversation, evaluator|
    #     create_list(:comment, evaluator.comments_count, conversation: conversation)
    #   end
    # end
  end

end
