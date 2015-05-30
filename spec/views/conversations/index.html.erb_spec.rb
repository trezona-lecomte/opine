require 'rails_helper'

RSpec.describe "conversations/index", type: :view do
  before(:each) do
    assign(:conversations, [
      Conversation.create!(
        :name => "Test conversation 1"
      ),
      Conversation.create!(
        :name => "Test conversation 2"
      )
    ])
  end

  it "renders a list of conversations" do
    render
    assert_select "tr>td", :text => "Test conversation 1".to_s, :count => 1
    assert_select "tr>td", :text => "Test conversation 2".to_s, :count => 1
  end
end
