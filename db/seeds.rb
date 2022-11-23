# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"


Teacher.destroy_all

marco = Teacher.new(first_name: 'Marco', last_name: 'Ricci', location: 'London', bio: 'Batch Manager lewagon London', specialty: 'Web Dev')
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1639647622/uyye8sjnejcohlb5gcui.jpg")
marco.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
marco.save

usman = Teacher.new(first_name: 'Usman', last_name: 'Akram', location: 'Sao Paulo', bio: "A recent web development Bootcamp graduate who facilitated the launch of two successful web applications as project manager. ", specialty: 'Web Dev')
file = URI.open("https://avatars.githubusercontent.com/u/102724070?v=4")
usman.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
usman.save

jake = Teacher.new(first_name: 'Jake', last_name: 'Pople', location: 'Paris', bio: 'Jake has striven to combine both logic and creativity throughout his educational life. ', specialty: 'Web Dev')
file = URI.open("https://avatars.githubusercontent.com/u/70224830?v=4")
jake.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
jake.save

ziggy = Teacher.new(first_name: 'Ziggy', last_name: 'Bartkevicius', location: 'Barcelona', bio: 'With a lifelong passion for technology, I finally found the courage and started learning programming in January 2022.', specialty: 'Web Dev')
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649955863/fysthudzckcf7oga4vnz.jpg")
ziggy.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ziggy.save

ife = Teacher.new(first_name: 'Ife', last_name: 'Odugbesan', location: 'Tokyo', bio: 'I love to lean. I love to develop. I love to code', specialty: 'Web Dev')
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1653923203/khprtoxrj3icp1sqolfc.jpg")
ife.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ife.save
