# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

# Booking.destroy_all
Teacher.destroy_all

marco = Teacher.new(first_name: 'Marco', last_name: 'Ricci', location: '138 Kingsland Rd, London E2 8DY', bio: 'Having been the best Manager at Dishoom, I switched careers and I am now Batch Manager at LeWagon London', specialty: 'Web Dev', price: 45)
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1639647622/uyye8sjnejcohlb5gcui.jpg")
marco.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
marco.save

usman = Teacher.new(first_name: 'Usman', last_name: 'Akram', location: '138 Kingsland Rd, London E2 8DY', bio: "A recent web development Bootcamp graduate who facilitated the launch of two successful web applications as project manager. I grew my skills in analysis, time management and communication while studying for my Bachelor's and Master's degrees.", specialty: 'Web Dev', price: 35)
file = URI.open("https://avatars.githubusercontent.com/u/102724070?v=4")
usman.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
usman.save

jake = Teacher.new(first_name: 'Jake', last_name: 'Pople', location: '138 Kingsland Rd, London E2 8DY', bio: 'Jake has striven to combine both logic and creativity throughout his educational life.', specialty: 'Web Dev', price: 35)
file = URI.open("https://avatars.githubusercontent.com/u/70224830?v=4")
jake.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
jake.save

ziggy = Teacher.new(first_name: 'Ziggy', last_name: 'Bartkevicius', location: '138 Kingsland Rd, London E2 8DY', bio: 'With a lifelong passion for technology, I finally found the courage and started learning programming in January 2022.', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1649955863/fysthudzckcf7oga4vnz.jpg")
ziggy.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ziggy.save

ife = Teacher.new(first_name: 'Ife', last_name: 'Odugbesan', location: '138 Kingsland Rd, London E2 8DY', bio: 'I love to learn. I love to develop. I love to code', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1653923203/khprtoxrj3icp1sqolfc.jpg")
ife.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ife.save

lucy = Teacher.new(first_name: 'Lucy', last_name: 'Morgan', location: '16 Vla Gaudelet, 75011 Paris, France', bio: 'I started my programming career at LeWagon Paris, where I am now teaching.', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292302/production/avatar-a22430a266884942bf14d968ef81c380_s6neeg.jpg")
lucy.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
lucy.save

gian = Teacher.new(first_name: 'Gianluca', last_name: 'Hero', location: '16 Vla Gaudelet, 75011 Paris, France', bio: 'I started my programming career at LeWagon Paris, where I am now teaching.', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292302/production/avatar-9309cba942183afb5dcebeb09eddae0d_fyvqjc.jpg")
gian.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
gian.save

phil = Teacher.new(first_name: 'Phillip', last_name: 'Young', location: '16 Vla Gaudelet, 75011 Paris, France', bio: 'Ah, I just love the whooshing sound that deadlines make as they fly by.', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292301/production/avatar-9c6083c92113c383229438ae39e7c7bd_wczheh.jpg")
phil.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
phil.save

harriet = Teacher.new(first_name: 'Harriet', last_name: 'Sinclair', location: 'IJsbaanpad 9, 1076 CV Amsterdam, Netherlands', bio: 'Bacon would probably cost less if we could slice it with lasers.', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292300/production/avatar-d6fb8547eb3d7ffc3e641c494f8442c1_gxesd2.jpg")
harriet.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
harriet.save

jennifer = Teacher.new(first_name: 'Jennifer', last_name: 'Monroe', location: 'IJsbaanpad 9, 1076 CV Amsterdam, Netherlands', bio: 'Wait, where am I? And how in the world did I get here?', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292297/production/avatar-04e496eef19e4cbc5366824d6b733b4c_ps96ph.jpg")
jennifer.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
jennifer.save

helen = Teacher.new(first_name: 'Helen', last_name: 'Poplio', location: 'IJsbaanpad 9, 1076 CV Amsterdam, Netherlands', bio: 'Chaos, panic, and disorder. My work here is done.', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292297/production/avatar-c6991ad3f688cdf0f1ce67ec2d8992b1_mpevwa.jpg")
helen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
helen.save

paula = Teacher.new(first_name: 'Paula', last_name: 'Xenisa', location: '80361 Badung, Bali', bio: 'If everyone on Earth joined hands around the equator, many of them would drown.', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292296/production/avatar-caec23c5dc4fdc153e3ba00c258f89a1_opylvq.jpg")
paula.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
paula.save

lina = Teacher.new(first_name: 'Lina', last_name: 'Kang', location: '80361 Badung, Bali', bio: 'In my defense, the voices in my head told me to do so.', specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292294/production/avatar-a20b42af6017b42e185974ab6454bfa3_c5fxev.jpg")
lina.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
lina.save

wayan = Teacher.new(first_name: 'Wayan', last_name: 'Agung', location: '80361 Badung, Bali', bio: "Don't judge me. I was born to be awesome, not perfect.", specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292294/production/avatar-83136b6a380f6dd0093c0f2c1d03734d_fijuai.jpg")
wayan.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wayan.save

pia = Teacher.new(first_name: 'Pia', last_name: 'Meyer', location: 'Rudi-Dutschke-Straße 26, 10969 Berlin, Germany', bio: "IF y0u c4n r34d 7H15, y0u r34lLy n33d 2 g37 l41d.", specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292294/production/avatar-a2a86703608586d93d014ae6ca05106c_handl4.jpg")
pia.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
pia.save

frida = Teacher.new(first_name: 'Frida', last_name: 'Muller', location: 'Rudi-Dutschke-Straße 26, 10969 Berlin, Germany', bio: "Spread love as thick as you would spread peanut butter and jam.", specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292292/production/avatar-07ca6ac25e3ba2bc6e36ae7a6700f43f_gphi6t.jpg")
frida.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
frida.save

frank = Teacher.new(first_name: 'Frank', last_name: 'Schmidt', location: 'Rudi-Dutschke-Straße 26, 10969 Berlin, Germany', bio: "I was a different person when I started typing this. Allow me to reintroduce myself.", specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292293/production/avatar-82bcb61fabc17f91ce97b20e10dfa85a_mzzbt0.jpg")
frank.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
frank.save

carla = Teacher.new(first_name: 'Carla', last_name: 'Santos', location: 'Rua Visconde De Piraja 142, Rio de Janeiro, Brazil', bio: "My left hand has never touched my left elbow.", specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292292/production/avatar-838a95fd6a8362da1b3d9743781a48eb_sn7obi.jpg")
carla.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
carla.save

julio = Teacher.new(first_name: 'Julio', last_name: 'Silva', location: 'Rua Visconde De Piraja 142, Rio de Janeiro, Brazil', bio: "Recovering ice cream addict. Really good at stuff until people watch me do the stuff.", specialty: 'Web Dev', price: 35)
file = URI.open("https://res.cloudinary.com/duwlb2ydu/image/upload/v1669292292/production/avatar-5bfcad97128672806a389c78c2ec8c98_mj84vt.jpg")
julio.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
julio.save
