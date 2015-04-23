class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.references :artist, index: true
      t.references :album, index: true
      t.integer :length

      t.timestamps null: false
    end
    add_foreign_key :tracks, :artists
    add_foreign_key :tracks, :albums
  end
end
