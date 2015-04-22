class AddHrefToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :href, :string
  end
end
