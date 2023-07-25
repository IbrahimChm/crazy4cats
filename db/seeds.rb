10.times do
    user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
    5.times do
      post = user.posts.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
      post.reactions.create(reaction_type: "Me gusta", user: User.all.sample)
      post.reactions.create(reaction_type: "No me gusta", user: User.all.sample)
      post.comments.create(content: Faker::Lorem.sentence, user: User.all.sample)
      post.comments.create(content: Faker::Lorem.sentence, user: User.all.sample)
    end
  end