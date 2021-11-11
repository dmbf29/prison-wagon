puts 'Removing prisons...'
Prison.destroy_all

puts 'Creating prisons...'
galym = Prison.create!(
  name: "Galym's House",
  banner_url: "https://media.architecturaldigest.com/photos/5b5f3f9c2acdbe14ff211b6d/master/pass/%22Bow%20Wow%20Haus%22%20by%20Robert%20Young%20of%20Robert%20Young%20Architecture,%20built%20by%20Fountainhead%20Construction,%20with%20former%20ARFan%20Tara.%20%20Photo%20by%20Tria%20Giovan%20-1321.jpg"
)
puts "Created #{Prison.count} prisons."

puts 'Creating criminals...'
Criminal.create!(
  name: 'Renato',
  image_url: 'https://avatars.githubusercontent.com/u/87453991?v=4',
  prison: galym
)

Criminal.create!(
  name: 'Joss',
  image_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1634443326/kngxb2li1xnq82xgcxpn.jpg',
  prison: galym
)

Criminal.create!(
  name: 'Galym',
  image_url: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1633518323/tsveff9wrxwwb3yzhz3m.jpg',
  prison: galym
)

Criminal.create!(
  name: 'Charles Manson',
  image_url: 'https://www.biography.com/.image/t_share/MTY1Njg1MDIyNTIxNTY2NDk1/charles-manson-photo-by-michael-ochs-archivesgetty-images.jpg',
  prison: galym
)

Criminal.create!(
  name: 'Ted Bundy',
  image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/close-up-of-theodore-bundy-convicted-florida-murderer-news-photo-515117676-1557169464.jpg?crop=1.00xw:0.662xh;0,0.0348xh&resize=480:*',
  prison: galym
)

Criminal.create!(
  name: 'John Wayne Gacy',
  image_url: 'https://www.biography.com/.image/c_fill%2Ccs_srgb%2Cfl_progressive%2Ch_400%2Cq_auto:good%2Cw_620/MTE5NDg0MDU1MjM2NDc4NDc5/john-wayne-gacy-10367544-2-402.jpg',
  prison: galym
)

Criminal.create!(
  name: 'Jeffrey Dahmer',
  image_url: 'https://www.hollywoodreporter.com/wp-content/uploads/2013/10/Dahmer_a_l.jpg?w=681&h=383&crop=1',
  prison: galym
)

Criminal.create!(
  name: 'Jack the Ripper',
  image_url: 'https://www.history.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTU3ODc5MDg1NjI4MDA3NzUz/jack-the-ripper-2.jpg',
  prison: galym
)

Criminal.create!(
  name: 'Yann',
  image_url: 'https://yannify.herokuapp.com/assets/yann-4318f5e60b74b3bda030a87d4ff6de744afbd744df96505ae88138d08eb0221e.png',
  prison: galym
)

puts "Created #{Criminal.count} criminalsx``."

puts "Destroying Crimes..."
Crime.destroy_all

puts "Creating crimes...."
crimes = ['indecent exposure', 'visa overstay', 'murder', 'possesion of narcotics', 'horrible at chess', 'drinking in public']
crimes.each do |name|
  Crime.create!(name: name)
end

puts "Created #{Crime.count} crimes..."
