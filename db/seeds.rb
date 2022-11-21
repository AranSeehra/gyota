# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Teacher.delete_all

Teacher.new(first_name: 'Marco', last_name: 'Ricci', location: 'London', bio: 'Batch Manager lewagon London', specialty: 'Web Dev', photo: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1639647622/uyye8sjnejcohlb5gcui.jpg')
Teacher.new(first_name: 'Usman', last_name: 'Akram', location: 'San Paulo', bio: 'Usmania Dude', specialty: 'Web Dev', photo: 'https://avatars.githubusercontent.com/u/102724070?v=4')
Teacher.new(first_name: 'Jake', last_name: 'Pople', location: 'Paris', bio: 'Jake has striven to combine both logic and creativity throughout his educational life. His musical and mathematical background have given him the sophisticated skill set needed to create a confident, creative, adaptable and personable young man.', specialty: 'Web Dev', photo: 'https://avatars.githubusercontent.com/u/70224830?v=4')
Teacher.new(first_name: 'Ziggy', last_name: 'Bartkevicius', location: 'Barcelona', bio: 'With a lifelong passion for technology, I finally found the courage and started learning programming in January 2022. After a few months I joined coding bootcamp to work on my skills, improve on my abilities and deepen my knowledge. Currently, as a recent graduate with a good foundation I’m continuing my journey in never-ending learning and constantly trying to become a better programmer.', specialty: 'Web Dev', photo: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649955863/fysthudzckcf7oga4vnz.jpg')
Teacher.new(first_name: 'Ife', last_name: 'Odugbesan', location: 'Tokyo', bio: 'I love to lean. I love to develop. I love to code', specialty: 'Web Dev', photo: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1653923203/khprtoxrj3icp1sqolfc.jpg')
