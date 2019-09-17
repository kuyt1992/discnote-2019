# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.create(
    name: 'Spitz',
    image: open("#{Rails.root}/db/fixtures/spitz.jpg")
)

#Artist.first.update_attributes(image: File.open("#{Rails.root}/db/fixtures/spitz.jpg"))


Album.create(
    title:'三日月ロック', 
    artist_id:1,
    image: open("#{Rails.root}/db/fixtures/mikaduki.jpg")
)

Album.create(
    title:'ハチミツ', 
    artist_id:1,
    image: open("#{Rails.root}/db/fixtures/hachimitsu.jpg")
)

Album.create(
    title:'フェイクファー', 
    artist_id:1,
    image: open("#{Rails.root}/db/fixtures/fakefur.jpg")
)

Album.create(
    title:'インディゴ地平線', 
    artist_id:1,
    image: open("#{Rails.root}/db/fixtures/indigo.jpg")
)

Artist.create(
    name: 'Death Cab for Cutie',
    image: open("#{Rails.root}/db/fixtures/dcfc.jpg")
)

Album.create(
    title:"We Have the Facts and We're Voting Yes", 
    artist_id:2,
    image: open("#{Rails.root}/db/fixtures/wehavethefacts.jpg")
)

Album.create(
    title:'The Photo Album', 
    artist_id:2,
    image: open("#{Rails.root}/db/fixtures/photoalbum.jpg")
)

Album.create(
    title:'Transatlanticism', 
    artist_id:2,
    image: open("#{Rails.root}/db/fixtures/transatlanticism.jpg")
)

Album.create(
    title:'Plans', 
    artist_id:2,
    image: open("#{Rails.root}/db/fixtures/plans.jpg")
)

Artist.create(
    name: 'Radiohead',
    image: open("#{Rails.root}/db/fixtures/radiohead.jpg")
)

Album.create(
    title:'The Bends', 
    artist_id:3,
    image: open("#{Rails.root}/db/fixtures/bends.jpg")
)

Album.create(
    title:'OK Computer', 
    artist_id:3,
    image: open("#{Rails.root}/db/fixtures/okcomputer.jpg")
)

Album.create(
    title:'Kid A', 
    artist_id:3,
    image: open("#{Rails.root}/db/fixtures/kida.jpg")
)
