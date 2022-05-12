puts "Cleaning the db...."
HauntedHouse.destroy_all

puts "Creating houses..."
house = HauntedHouse.create!(
  name: "Luigi's Mansion",
  banner_url: 'https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_3ds_25/H2x1_3DS_LuigisMansion.jpg'
)
puts "... #{HauntedHouse.count} houses."

puts "Creating monsters..."
Monster.create!(
  name: 'Bowser',
  image_url: 'https://ssb.wiki.gallery/images/8/82/BowserNSMBUDX.png',
  haunted_house: house
)

Monster.create!(
  name: 'Boo',
  image_url: 'https://www.kindpng.com/picc/m/106-1067112_boo-mario-png-8-bit-boo-mario-transparent.png',
  haunted_house: house
)

Monster.create!(
  name: 'Koopa',
  image_url: 'https://www.sm128c.com/media/koopa-troopa.png',
  haunted_house: house
)

Monster.create!(
  name: 'Peach',
  image_url: 'https://www.pngitem.com/pimgs/m/148-1484590_mario-and-luigi-mario-bros-princess-peach-bowser.png',
  haunted_house: house
)

Monster.create!(
  name: 'Chain Chomp',
  image_url: 'https://i.pinimg.com/originals/83/bb/2c/83bb2c3cb855b7734703888fe06c753b.png',
  haunted_house: house
)

Monster.create!(
  name: 'Lakitu',
  image_url: 'https://upload.wikimedia.org/wikipedia/en/2/2d/Lakitu.png',
  haunted_house: house
)

Monster.create!(
  name: 'Goomba',
  image_url: 'https://play.nintendo.com/images/profile-mk-goomba.7bf2a8f2.aead314d58b63e27.png',
  haunted_house: house
)

Monster.create!(
  name: 'Spiny',
  image_url: 'https://www.pngitem.com/pimgs/m/572-5726415_sky-blue-spiny-mario-png-download-super-mario.png',
  haunted_house: house
)

Monster.create!(
  name: 'Blooper',
  image_url: 'https://i.pinimg.com/originals/74/34/67/7434678df2212e5b7aeedf5c35c36c0d.gif',
  haunted_house: house
)

Monster.create!(
  name: 'Piranha Plant',
  image_url: 'https://e7.pngegg.com/pngimages/1012/335/png-clipart-mario-bowser-piranha-plant-bill-bala-mario-heroes-flower.png',
  haunted_house: house
)

Monster.create!(
  name: 'Yann',
  image_url: 'https://res.cloudinary.com/dmbf29/image/upload/v1589532186/qbsrVcFqDSPFNYXihrV2tfuC.jpg',
  haunted_house: house
)

Monster.create!(
  name: 'Trouni',
  image_url: 'https://res.cloudinary.com/dmbf29/image/upload/v1582182957/tfuHKHCTScFNYUy1bi4AyRQq.jpg',
  haunted_house: house
)
puts "... #{Monster.count} monsters."

puts "Creating powers...."
15.times do
  Power.create!(name: Faker::Superhero.unique.power)
end
puts "... #{Power.count} powers."
