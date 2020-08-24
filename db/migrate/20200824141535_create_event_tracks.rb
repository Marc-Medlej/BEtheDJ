class CreateEventTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :event_tracks do |t|
      t.boolean :already_played, default: false
      t.references :track, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
