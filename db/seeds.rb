puts "Cleaning database..."
Flat.destroy_all
puts "Database cleared."

puts "Creating new flats"
50.times do
  flat = Flat.create!(
    name: Faker::Mountain.name,
    address: Faker::Address.street_address,
    description: Faker::Coffee.notes,
    price_per_night: rand(50..500),
    number_of_guests: rand(2..6)
  )

  puts "#{flat.name} saved"
end

puts "Seed completed successfully."
