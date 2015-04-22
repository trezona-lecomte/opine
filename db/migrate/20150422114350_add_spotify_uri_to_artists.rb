class AddSpotifyUriToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :spotify_uri, :string
  end
end
