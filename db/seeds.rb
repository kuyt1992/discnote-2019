# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.create(
    name: 'Spitz',
    #image: open("#{Rails.root}/db/fixtures/spitz.jpg")
)

Artist.first.update_attributes(image: File.open("#{Rails.root}/db/fixtures/spitz.jpg"))


Album.create(
    title:'三日月ロック', 
    artist_id:1,
    image: open("#{Rails.root}/db/fixtures/mikaduki.jpg")
)
