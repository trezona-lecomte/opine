require 'rails_helper'

describe "The registration feature", type: :feature do

  before :each do
    @user_info = user_hash
  end

  it "Registers a valid user" do
    register_user(@user_info)
    expect(page).to have_content 'Welcome!'
  end

  it "Displays an error for duplicate registrations" do
    register_user(@user_info)
    visit destroy_user_session_path
    register_user(@user_info)
    expect(page).to have_content 'error'
  end

  def user_hash
    { email: Faker::Internet.email, password: Faker::Internet.password }
  end

  def register_user(user_info)
    visit new_user_registration_path
    fill_in 'Email', with: user_info[:email]
    fill_in 'Password', with: user_info[:password]
    fill_in 'Password confirmation', with: user_info[:password]
    click_button 'Sign up'
  end
end