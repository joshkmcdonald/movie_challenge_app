Actor.create!(name: "Peter Dinklage")
Actor.create!(name: "Zooey Deschanel")
Actor.create!(name: "Will Ferrel")
Actor.create!(name: "Steve Carell")
Actor.create!(name: "Paul Rudd")

Movie.create!(title: "Elf", genre: "Comedy", rating: "G")
Movie.create!(title: "Anchor Man", genre: "Comedy", rating: "PG-13" )

Movie.find_by_title("Elf").actors << Actor.find_by_name("Peter Dinklage")
Movie.find_by_title("Elf").actors << Actor.find_by_name("Zooey Deschanel")
Movie.find_by_title("Elf").actors << Actor.find_by_name("Will Ferrel")

Movie.find_by_title("Anchor Man").actors << Actor.find_by_name("Will Ferrel")
Movie.find_by_title("Anchor Man").actors << Actor.find_by_name("Steve Carell")
Movie.find_by_title("Anchor Man").actors << Actor.find_by_name("Paul Rudd")