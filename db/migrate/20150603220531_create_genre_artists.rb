class CreateGenreArtists < ActiveRecord::Migration
  def change
    create_table :genre_artists do |t|
      t.integer :artist_id
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
