# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Move.destroy_all
Monster.destroy_all
User.destroy_all
Monstermove.destroy_all
Usermove.destroy_all

#  monster_moves
attack_number = rand(20..50)
random_str = rand(1..10)
hp_number = rand(500..1000)
kick = Move.find_or_create_by(name: 'Kick', attack: rand(20..50), desc: 'Kangaroo kick!')
punch = Move.find_or_create_by(name: 'Punch', attack: rand(20..50), desc: 'Walloping blow!')
bite =  Move.find_or_create_by(name: 'Bite', attack: rand(20..50), desc: 'Chomp chomp!')
elbow =  Move.find_or_create_by(name: 'Elbow', attack: rand(20..50), desc: 'Flying elbow!')
claw =  Move.find_or_create_by(name: 'Claw', attack: rand(20..50), desc: 'Scratchhhhh!')
acid = Move.find_or_create_by(name: 'Acid', attack: rand(20..50), desc: 'Chemical burn achieved!')
knife = Move.find_or_create_by(name: 'Knife', attack: rand(20..50), desc: 'Stabby stabby!')
sledgehammer = Move.find_or_create_by(name: 'Sledgehammer', attack: rand(20..50), desc: 'Its hammer-time!')
sword = Move.find_or_create_by(name: 'Sword', attack: rand(20..50), desc: 'Samourai unleashed!')
slap = Move.find_or_create_by(name: 'Slap', attack: rand(20..50), desc: 'SLAP!')
roundhouse = Move.find_or_create_by(name: 'Roundhouse', attack: rand(20..50), desc: 'Rouunnnnndhouuuse kick!')


#  Monsters

feralghoul = Monster.find_or_create_by(name: 'Feral Ghoul', str: rand(1..10), hp: rand(500..1000), desc: 'Gastly ghoooul', img: 'https://static.comicvine.com/uploads/original/1/15659/3210875-ghouls-fallout-new_vegas.jpg')
orge = Monster.find_or_create_by(name: 'Orge', str: rand(1..10), hp: rand(500..1000), desc: 'Hulky muscle', img: 'https://www.writeups.org/wp-content/uploads/Doom-Demon-DoomHD.jpg')
spider = Monster.find_or_create_by(name: 'Spider', str: rand(1..10), hp: rand(500..1000), desc: 'Creepy crawly', img: 'https://i.pinimg.com/originals/91/12/4e/91124e31fc15c155e397db8955a12f5e.jpg')


#  user
tiff = User.find_or_create_by(name: 'Tiffany', str: rand(1..10), hp:rand(500..1000), desc: 'Cat mom', img: 'https://preview.redd.it/3gw4rxpibcz31.jpg?width=640&crop=smart&auto=webp&s=ca32b5892a7c0c77ebd4aaedde38f6ee307955d8')
mickey = User.find_or_create_by(name: 'Mickey', str: rand(1..10), hp: rand(500..1000), desc: 'The quiet one, lurking and waiting to strike',img: 'https://66.media.tumblr.com/0877577d559aa77e24797bb8910810a2/tumblr_n5stualp4O1sa5jn6o7_1280.jpg')

#user moves
tiffpunch = Usermove.create(user_id:tiff.id, move_id: punch.id)
tiffslap = Usermove.create(user_id:tiff.id, move_id: slap.id)
tiffknife = Usermove.create(user_id:tiff.id, move_id: knife.id)

mickeyroundhouse = Usermove.create(user_id:mickey.id, move_id:roundhouse.id)
mickeyelbow = Usermove.create(user_id:mickey.id, move_id:elbow.id)
mickeysledgehammer = Usermove.create(user_id:mickey.id, move_id:sledgehammer.id)

#monster movesb
feralghoulbite = Monstermove.create(monster_id:feralghoul.id, move_id:bite.id)
orgeelbow = Monstermove.create(monster_id:orge.id, move_id:elbow.id)
spideracid = Monstermove.create(monster_id:spider.id, move_id:acid.id)