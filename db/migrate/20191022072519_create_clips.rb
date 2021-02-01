class CreateClips < ActiveRecord::Migration[5.2]
  def change
    create_table :clips do |t|
      t.references :user, :foreign_key => true
      t.references :album, :foreign_key => true

      t.timestamps
      
      t.index [:user_id, :album_id], :unique => true
    end
  end
end
