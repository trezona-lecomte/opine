module OmniauthTestHelper
  def valid_digitalocean_login_setup
    if Rails.env.test?
      OmniAuth.config.test_mode = true
      OmniAuth.config.add_mock(:digitalocean, {
        :uid => '12345',
        :email => 'test@example.com'
      })
    end
  end
end