# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(firstname: "John", lastname: "Doe")

Apt.create(title: "The White House", address: "1600 Pennsylvania Ave NW, Washington, DC 20500", city: "Washington D.C.", price: 1000000, user_id: 1)


file = File.open(Rails.root.join('app', 'assets', 'images', "boris_retreat_2017.jpg"))
apt = Apt.find_by(id: 1) # Replace with the correct van ID
if apt
  apt.photo.attach(io: file, filename: "boris_retreat_2017.jpg", content_type: "image/jpg")
  apt.save
end
