class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.references :artist, :foreign_key => true
      t.string :image
      t.date :release_date

      t.timestamps
    end
  end
end
