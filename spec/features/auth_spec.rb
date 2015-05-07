require 'rails_helper'

describe 'UserRegistration' do
  it 'should allow a user to register manually' do
    visit new_user_registration_path
    fill_in 'Email', with: 'newuser@example.com'
    fill_in 'Password', with: 'newpassword'
    fill_in 'Password confirmation', with: 'newpassword'
    click_button 'Sign up'
    page.should have_content 'Welcome'
  end
end

describe 'UserSignin' do
  it 'should allow a registered user to login' do
    user = create(:devise_user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    page.should have_content 'Signed in successfully'
  end
end
