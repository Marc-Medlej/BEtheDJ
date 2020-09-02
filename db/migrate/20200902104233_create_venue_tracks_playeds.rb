class CreateVenueTracksPlayeds < ActiveRecord::Migration[6.0]
  def change
    create_table :venue_tracks_playeds do |t|
      t.string :track_id
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
