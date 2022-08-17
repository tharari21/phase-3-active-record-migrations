puts "DELETING ALL DATA"
Artist.destroy_all

puts "Seeding Artists..."
15.times do |i|
    Artist.create(name: Faker::Music.band, genre:Faker::Music.genre, age: Faker::Number.between(from: 16, to: 100), hometown: Faker::Address.city)
end