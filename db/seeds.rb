# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MonsterMove.destroy_all
Monster.destroy_all
UserMove.destroy_all
User.destroy_all

#  monster_moves
attack_number = rand(20..50)
random_str = rand(1..10)
hp_number = rand(500..1000)
kick = MonsterMove.create(name: 'Kick', attack: attack_number, desc: 'Kangaroo kick!')
punch = MonsterMove.create(name: 'Punch', attack: attack_number, desc: 'Walloping blow!')
bite =  MonsterMove.create(name: 'Bite', attack: attack_number, desc: 'Chomp chomp!')
elbow =  MonsterMove.create(name: 'Elbow', attack: attack_number, desc: 'Flying elbow!')
claw =  MonsterMove.create(name: 'Claw', attack: attack_number, desc: 'Scratchhhhh!')
acid = MonsterMove.create(name: 'Acid', attack: attack_number, desc: 'Chemical burn achieved!')
knife = MonsterMove.create(name: 'Knife', attack: attack_number, desc: 'Stabby stabby!')
sledgehammer = MonsterMove.create(name: 'Sledgehammer', attack: attack_number, desc: 'Its hammer-time!')


#  Monsters

feralghoul = Monster.create(name: 'Feral Ghoul', str: random_str, hp: hp_number, desc: 'Gastly ghoooul', move_id: kick.id, img: 'https://static.comicvine.com/uploads/original/1/15659/3210875-ghouls-fallout-new_vegas.jpg')
orge = Monster.create(name: 'Orge', str: random_str, hp: hp_number, desc: 'Hulky muscle', move_id: punch.id, img: 'https://www.writeups.org/wp-content/uploads/Doom-Demon-DoomHD.jpg')
spider = Monster.create(name: 'Spider', str: random_str, hp: hp_number, desc: 'Creepy crawly', move_id: acid.id, img: 'https://i.pinimg.com/originals/91/12/4e/91124e31fc15c155e397db8955a12f5e.jpg')


#  user_moves
kick = UserMove.create(name: 'Kick', attack: attack_number, desc: 'Kangaroo kick!')
punch = UserMove.create(name: 'Punch', attack: attack_number, desc: 'Walloping blow!')
knife = UserMove.create(name: 'Knife', attack: attack_number, desc: 'Stabby stabby!')
sword = UserMove.create(name: 'Sword', attack: attack_number, desc: 'Samourai unleashed!')
slap = UserMove.create(name: 'Slap', attack: attack_number, desc: 'SLAP!')
roundhouse = UserMove.create(name: 'Roundhouse', attack: attack_number, desc: 'Rouunnnnndhouuuse kick!')

#  user
tiff = User.create(name: 'Tiffany', str: random_str, hp: hp_number, desc: 'Cat mom', moveone_id: kick.id, movethree_id: knife.id, movefourid: slap.id ,img: 'https://preview.redd.it/3gw4rxpibcz31.jpg?width=640&crop=smart&auto=webp&s=ca32b5892a7c0c77ebd4aaedde38f6ee307955d8')
mickey = User.create(name: 'Mickey', str: random_str, hp: hp_number, desc: 'The quiet one, lurking and waiting to strike', moveone_id: roundhouse.id, movethree_id: sword.id, movefourid: punch.id ,img: 'https://66.media.tumblr.com/0877577d559aa77e24797bb8910810a2/tumblr_n5stualp4O1sa5jn6o7_1280.jpg')