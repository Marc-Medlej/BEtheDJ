class AddPlaylistIdToVenues < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :playlist_id, :string
  end
end
