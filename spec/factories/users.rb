FactoryGirl.define do
  factory :devise_user, class: User do
    email                  "devise_user@example.com"
    password               "password"
    password_confirmation  "password"
  end

end
