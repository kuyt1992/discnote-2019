class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :body
      t.references :user, :foreign_key => true
      t.references :album, :foreign_key => true
      t.float :rate

      t.timestamps
      t.index [:album_id, :user_id], :unique => true
    end
  end
end
