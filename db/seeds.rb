Actor.create!(name: "Peter Dinklage")
Actor.create!(name: "Zooey Deschanel")
Actor.create!(name: "Will Ferrel")
Actor.create!(name: "Steve Carell")
Actor.create!(name: "Paul Rudd")
Actor.create!(name: "Elijah Wood")
Actor.create!(name: "Orlando Bloom")

puts "7 actors created"

Movie.create!(title: "Elf", genre: "Comedy", rating: "G", description: "Buddy (Will Ferrell) was accidentally transported to the North Pole.....Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus tortor vel justo maximus consectetur. Suspendisse quis ante turpis. Aliquam tincidunt ornare imperdiet. Praesent imperdiet, erat sed dignissim commodo, leo orci vehicula turpis, eu gravida quam libero quis nisi. Nullam mattis ut est auctor interdum. Sed ut felis arcu. Nulla eu odio et sem maximus feugiat.")
Movie.create!(title: "Anchor Man", genre: "Comedy", rating: "PG-13", description: "Hotshot television anchorman Ron Burgundy.....Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus tortor vel justo maximus consectetur. Suspendisse quis ante turpis. Aliquam tincidunt ornare imperdiet. Praesent imperdiet, erat sed dignissim commodo, leo orci vehicula turpis, eu gravida quam libero quis nisi. Nullam mattis ut est auctor interdum. Sed ut felis arcu. Nulla eu odio et sem maximus feugiat." )
Movie.create!(title: "Lord of the Rings: The Fellowship of the Ring", genre: "Fantasy", rating: "PG-13", description: "The future of civilization rests in the fate of the One Ring, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dapibus tortor vel justo maximus consectetur. Suspendisse quis ante turpis. Aliquam tincidunt ornare imperdiet. Praesent imperdiet, erat sed dignissim commodo, leo orci vehicula turpis, eu gravida quam libero quis nisi. Nullam mattis ut est auctor interdum. Sed ut felis arcu. Nulla eu odio et sem maximus feugiat.")

puts "3 movies created"

Movie.find_by_title("Elf").actors << Actor.find_by_name("Peter Dinklage")
Movie.find_by_title("Elf").actors << Actor.find_by_name("Zooey Deschanel")
Movie.find_by_title("Elf").actors << Actor.find_by_name("Will Ferrel")

Movie.find_by_title("Anchor Man").actors << Actor.find_by_name("Will Ferrel")
Movie.find_by_title("Anchor Man").actors << Actor.find_by_name("Steve Carell")
Movie.find_by_title("Anchor Man").actors << Actor.find_by_name("Paul Rudd")

Movie.find_by_title("Lord of the Rings: The Fellowship of the Ring").actors << Actor.find_by_name("Elijah Wood")
Movie.find_by_title("Lord of the Rings: The Fellowship of the Ring").actors << Actor.find_by_name("Orlando Bloom")

puts "Actors added to movies"