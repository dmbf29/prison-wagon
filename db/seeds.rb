puts 'Removing prisons...'
Prison.destroy_all

puts 'Creating prisons...'

Prison.create!(
  name: "Galym's House",
  banner_url: "https://media.architecturaldigest.com/photos/5b5f3f9c2acdbe14ff211b6d/master/pass/%22Bow%20Wow%20Haus%22%20by%20Robert%20Young%20of%20Robert%20Young%20Architecture,%20built%20by%20Fountainhead%20Construction,%20with%20former%20ARFan%20Tara.%20%20Photo%20by%20Tria%20Giovan%20-1321.jpg"
)
puts "Created #{Prison.count} prisons."
