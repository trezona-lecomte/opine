require 'rails_helper'

describe 'Digitalocean Login' do
  it 'allows a valid digitalocean user to log in' do
    valid_digitalocean_login_setup
    visit new_user_session_path
    expect(page).to have_content 'Log in'
    click_link 'Sign in with Digitalocean'
    expect(page).to have_content 'Listing Artists'
  end
end

describe 'Spotify Login' do
  it 'allows a valid spotify user to log in' do
    valid_spotify_login_setup
    visit new_user_session_path
    expect(page).to have_content 'Log in'
    click_link 'Sign in with Spotify'
    expect(page).to have_content 'Listing Artists'
  end
end

describe 'Facebook Login' do
  it 'allows a valid facebook user to log in' do
    valid_facebook_login_setup
    visit new_user_session_path
    expect(page).to have_content 'Log in'
    click_link 'Sign in with Facebook'
    expect(page).to have_content 'Listing Artists'
  end
end

describe 'Google Login' do
  it 'allows a valid google user to log in' do
    valid_google_login_setup
    visit new_user_session_path
    expect(page).to have_content 'Log in'
    click_link 'Sign in with Google'
    expect(page).to have_content 'Listing Artists'
  end
end
