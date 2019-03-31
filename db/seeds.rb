# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
unless User.exists?(email: "admin@houzie.com")
  User.create!(email: "admin@houzie.com", password: "password", name: "Duong", admin: true)
end

unless User.exists?(email: "oanh1@houzie.com")
  User.create!(email: "oanh1@houzie.com", password: "password", name: "Oanh Hoang", admin: false)
end
