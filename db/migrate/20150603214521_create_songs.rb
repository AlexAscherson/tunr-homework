class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :album_id
      t.integer :artist_id
      t.string :title
      t.string :length

      t.timestamps null: false
    end
  end
end
