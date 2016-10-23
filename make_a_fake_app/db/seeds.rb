10.times do
  Faker.create({
    name: FFaker::Name.name,
    avatar: FFaker::Avatar.image,
    color: FFaker::Color.name,
    title: FFaker::Job.title,
    email: FFaker::Internet.email,
    food: FFaker::Food.fruit,
  })
end
