class AddPriceToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :price, :integer
  end
end
