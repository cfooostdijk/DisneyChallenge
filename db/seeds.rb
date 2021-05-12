admin = Role.create(name: 'admin')
# user = Role.create(nombre: "user")
# visitor = Role.create(nombre: "visitor")

User.create(email: 'cristian@gmail.com', password: '123', role: admin)

# 5.times do
#     user = User.create(email: Faker::Internet.email, password: "user", role: user)
#     Post.create(title: Faker::Book.title, content: Faker::Lorem.paragraph, user: user)
# end

# p "#{User.count} users created"
# p "#{Role.count} roles created"
# p "#{Post.count} post created"
