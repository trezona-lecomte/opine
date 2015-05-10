require 'rails_helper'

describe 'Devise User Registration' do
  it 'allows a user to register manually' do
    visit new_user_registration_path
    fill_in 'Email', with: 'newuser@example.com'
    fill_in 'Password', with: 'newpassword'
    fill_in 'Password confirmation', with: 'newpassword'
    click_button 'Sign up'
    expect(page).to have_content 'Welcome'
  end
end

describe 'Devise User Signin' do
  it 'allows a registered user to login' do
    user = create(:devise_user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end
end
