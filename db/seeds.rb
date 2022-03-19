# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_name = ["太田丞","佐藤健太朗","富沢薫","太田由利子"]
password = "aaaaaa"

4.times do |n|
  User.create!(name: user_name[n-1],
    email: "test#{n-1}@example.com",
    password: password,
    password_confirmation: password)
end

User.create!(name: "管理ユーザー",
  email: "admin@gmail.com",
  admin: true,
  password: "pmhkiy",
  password_confirmation: "pmhkiy"
)

users = User.all
d1 = DateTime.new(2022, 3, 1, 9, 55, 0, "+0900")
d2 = DateTime.new(2022, 3, 1, 18, 05, 0, "+0900")

n = 0
30.times do
  users.each {|user| user.attendances.create!(clock_in_at: d1+n,
    clock_out_at: d2+n) }
    n += 1
  end

