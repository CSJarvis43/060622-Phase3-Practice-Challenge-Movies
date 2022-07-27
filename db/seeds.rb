# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
m1 = mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
m2 = spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)
m3 = morbius = Movie.create(title: "Morbius", box_office_earnings: 48_000_000)

puts "Creating actors..."
a1 = lindsay_lohan = Actor.create(name: "Lindsay Lohan")
a2 = tina_fey = Actor.create(name: "Tina Fey")
a3 = baby_spice = Actor.create(name: "Emma Bunton")
a4 = ginger_spice = Actor.create(name: "Geri Halliwell")
a5 = sporty_spice = Actor.create(name: "Melanie Chisholm")
a6 = posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here

r1 = optimus_prime = Role.create(character_name: "Optimus Prime", salary: 2_000_000, movie_id: m1.id, actor_id: a1.id)
r1 = harry_potter = Role.create(character_name: "Harry Potter", salary: 2_000_000, movie_id: m1.id, actor_id: a1.id)
r1 = legolas = Role.create(character_name: "Legolas", salary: 2_000_000, movie_id: m1.id, actor_id: a2.id)
r1 = aragorn = Role.create(character_name: "Aragorn", salary: 2_000_000, movie_id: m2.id, actor_id: a2.id)
r1 = frodo = Role.create(character_name: "Frodo", salary: 2_000_000, movie_id: m3.id, actor_id: a1.id)


puts "Seeding done!"