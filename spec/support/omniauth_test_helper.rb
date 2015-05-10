module OmniauthTestHelper
  def valid_digitalocean_login_setup
    if Rails.env.test?
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:digitalocean] = OmniAuth::AuthHash.new({
        provider: 'digitalocean',
        uid: '12345',
        info: {
          name: 'Danny Digitalocean',
          email: 'danny@digitalocean.com'
        }
      })
    end
  end

  def valid_spotify_login_setup
    if Rails.env.test?
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:spotify] = OmniAuth::AuthHash.new({
        provider: 'spotify',
        uid: '23456',
        info: {
          name: 'Sammy Spotify',
          email: 'sammy@spotify.com'
        }
      })
    end
  end

  def valid_facebook_login_setup
    if Rails.env.test?
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:facebook] = OmniAuth::AuthHash.new({
        provider: 'facebook',
        uid: '34567',
        info: {
          name: 'Freddy Facebook',
          email: 'freddy@facebook.com'
        }
      })
    end
  end
end