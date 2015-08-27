# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

create_account = User.create([email: 'example@gmail.com', password: '12345678', password_confirmation: '12345678', name: 'Test Account'])

create_group = for i in 1..20 do
        Group.create!([title: "Group no.#{i}", description: "Board #{i} be seed", user_id: 3])
        for k in 1..30 do
          Post.create!([group_id: "#{i}", content: "Message #{k} by seed.", user_id: 3])
        end
      end
