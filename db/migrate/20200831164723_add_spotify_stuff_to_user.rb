class AddSpotifyStuffToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
    add_column :users, :spotify_photo_url, :string
    add_column :users, :spotify_hash, :text
  end
end
