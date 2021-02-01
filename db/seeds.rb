# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.create(
    :name => 'Spitz',
    :image => open("#{Rails.root}/db/fixtures/spitz.jpg")
)

#Artist.first.update_attributes(image: File.open("#{Rails.root}/db/fixtures/spitz.jpg"))


Album.create(
    :title => '三日月ロック', 
    :artist_id => 1,
    :release_date => '2002-09-11',
    :image => open("#{Rails.root}/db/fixtures/mikaduki.jpg")
)

Album.create(
    :title => 'ハチミツ', 
    :artist_id => 1,
    :release_date => '1995-09-20',
    :image => open("#{Rails.root}/db/fixtures/hachimitsu.jpg")
)

Album.create(
    :title => 'フェイクファー', 
    :artist_id => 1,
    :release_date => '1998-03-25',
    :image => open("#{Rails.root}/db/fixtures/fakefur.jpg")
)

Album.create(
    :title => 'インディゴ地平線', 
    :artist_id => 1,
    :release_date => '1996-10-23',
    :image => open("#{Rails.root}/db/fixtures/indigo.jpg")
)

Artist.create(
    :name => 'Death Cab for Cutie',
    :image => open("#{Rails.root}/db/fixtures/dcfc.jpg")
)

Album.create(
    :title => "We Have the Facts and We're Voting Yes", 
    :artist_id => 2,
    :release_date => '2000-03-21',
    :image => open("#{Rails.root}/db/fixtures/wehavethefacts.jpg")
)

Album.create(
    :title => 'The Photo Album', 
    :artist_id => 2,
    :release_date => '2001-10-09',
    :image => open("#{Rails.root}/db/fixtures/photoalbum.jpg")
)

Album.create(
    :title => 'Transatlanticism', 
    :artist_id => 2,
    :release_date => '2003-10-07',
    :image => open("#{Rails.root}/db/fixtures/transatlanticism.jpg")
)

Album.create(
    :title => 'Plans', 
    :artist_id => 2,
    :release_date => '2005-08-30',
    :image => open("#{Rails.root}/db/fixtures/plans.jpg")
)

Artist.create(
    :name => 'Radiohead',
    :image => open("#{Rails.root}/db/fixtures/radiohead.jpg")
)

Album.create(
    :title => 'The Bends', 
    :artist_id => 3,
    :release_date => '1995-03-13',
    :image => open("#{Rails.root}/db/fixtures/bends.jpg")
)

Album.create(
    :title => 'OK Computer', 
    :artist_id => 3,
    :release_date => '1997-06-16',
    :image => open("#{Rails.root}/db/fixtures/okcomputer.jpg")
)

Album.create(
    :title => 'Kid A', 
    :artist_id => 3,
    :release_date => '2000-10-02',
    :image => open("#{Rails.root}/db/fixtures/kida.jpg")
)
