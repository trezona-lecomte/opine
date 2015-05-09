module OmniauthTestHelper
  def valid_digitalocean_login_setup
    if Rails.env.test?
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:digitalocean] = OmniAuth::AuthHash.new({
        provider: 'digitalocean',
        uid: '12345',
        info: {
          'name' => 'Kieran Trezona-le Comte',
          'email' => 'kieran@trezona.com'
        }
      })
    end
  end
end