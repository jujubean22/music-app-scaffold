class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.datetime :released
      t.string :released_at
      t.string :cover_art_url
      t.numeric :length
      t.string :kind

      t.timestamps
    end
  end
end
