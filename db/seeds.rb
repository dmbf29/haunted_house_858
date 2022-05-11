puts "Cleaning the db...."
HauntedHouse.destroy_all

puts "Creating houses..."
HauntedHouse.create!(
  name: "Luigi's Mansion",
  banner_url: 'https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_3ds_25/H2x1_3DS_LuigisMansion.jpg'
)
puts "... #{HauntedHouse.count} houses."

# Bowser
# https://ssb.wiki.gallery/images/8/82/BowserNSMBUDX.png

# Boo
# https://www.kindpng.com/picc/m/106-1067112_boo-mario-png-8-bit-boo-mario-transparent.png
