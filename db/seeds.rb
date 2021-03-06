# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Post.delete_all
Category.delete_all
Discussion.delete_all

# user1 = User.create(username: 'imanj12', name: 'Iman Jawad', birthdate: '01/09/1990', profile_image_url: 'http://images.mentalfloss.com/sites/default/files/styles/mf_image_16x9/public/411363.jpg?itok=A5zdzjY3&resize=1100x1100', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', password_digest: BCrypt::Password.create('password'))
#
# user2 = User.create(username: 'nathan123', name: 'Nathan Gz', birthdate: '05/15/1987', profile_image_url: 'http://images.mentalfloss.com/sites/default/files/styles/mf_image_16x9/public/411363.jpg?itok=A5zdzjY3&resize=1100x1100', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', password_digest: BCrypt::Password.create('password'))
#
# user3 = User.create(username: 'cooldude22', name: 'John Doe', birthdate: '02/17/1985', profile_image_url: 'http://images.mentalfloss.com/sites/default/files/styles/mf_image_16x9/public/411363.jpg?itok=A5zdzjY3&resize=1100x1100', bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', password_digest: BCrypt::Password.create('password'))

maintenance = Category.create(title: 'Maintenance')
classic_cars = Category.create(title: 'Classic Cars')
av = Category.create(title: 'Audio/Video')
body = Category.create(title: 'Body Work')
mods = Category.create(title: 'Modifications')
suspension = Category.create(title: 'Suspension')
wheels = Category.create(title: 'Wheels')

# engines = Discussion.create(title: 'Engines', category: maintenance)
# oil_change = Discussion.create(title: 'Oil Change', category: maintenance)
# how_to_purchase = Discussion.create(title: 'How to Purchase Classic Cars', category: classic_cars)
#
# Post.create(user: user1, discussion: engines, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." )
#
# Post.create(user: user2, discussion: oil_change, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." )
#
# Post.create(user: user3, discussion: how_to_purchase, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
#
# Post.create(user: user2, discussion: how_to_purchase, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
