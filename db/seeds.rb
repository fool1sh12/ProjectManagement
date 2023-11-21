# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])

User.create(
  :email => "admin@projects.local", 
  :password => "Pass1234"
)

1.upto(3) do |index|
  Project.create(
    :name => "Project #{index}",
    :description => "Random Text"
  )
end
