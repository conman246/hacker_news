require 'faker'

100.times do 
  username = Faker::Name.first_name
  about = Faker::Lorem.paragraph(word_count = rand(1..10))
  User.create(username: username, password: "password", password_confirmation: "password", about: about)
end

100.times do 
  title =  Faker::Lorem.sentence(word_count = rand(1..10))
  content = Faker::Lorem.paragraph(word_count = rand(1..10))
  post = User.first.posts.create(title: title, content: content)

end

100.times do 
    content = Faker::Lorem.paragraph(word_count = rand(1..10))
    user = User.find(rand(1..100))
  comment = user.comments.create(post_id: rand(1..100), content: content)


end
