User.create!(name:  "admin",
             email: "admin@opine.org",
             password:              "foobar123",
             password_confirmation: "foobar123")
30.times do  |n|
  name = Faker::Name.name
  email = "example-#{n+1}@opine.org"
  password = "password123"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

5.times do |n|
  name = "#{Faker::Lorem.word} conversation"
  Conversation.create!(name: name)
end

users = User.order(:created_at).take(6)
20.times do
  content = Faker::Lorem.paragraph
  conversation = Conversation.find(rand(1..5))
  users.each { |user| user.comments.create!(text: content,
                                            conversation: conversation) }
end

